// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/log;
import ballerina/regex;
import ballerinax/health.hl7v2;

# HL7 v2.3 message parser implementation.
isolated class Hl7v23Parser {
    *hl7v2:Parser;

    # Parse HL7 encoded message to it's relevant model.
    # + message - Encoded HL7 message
    # + return - HL7 message model (specific or generic). hl7v2:HL7Error if error occurred
    public isolated function parse(byte[] message) returns hl7v2:Message|hl7v2:HL7Error {
        HL7Parser parser = new ();
        string|error messageStr = string:fromBytes(message);
        if messageStr is error {
            return error(hl7v2:HL7_V2_PARSER_ERROR, message = "Failed to create string from byte array");
        }

        do {
            hl7v2:Message? parsedMessage = check parser.parse(messageStr);
            if parsedMessage is hl7v2:Message {
                return parsedMessage;
            } else {
                return error(hl7v2:HL7_V2_PARSER_ERROR, message = "Error occurred while parsing HL7 message string.");
            }
        } on fail var e {
            return error(hl7v2:HL7_V2_PARSER_ERROR, message = e.message());
        }
    }
}

# Implementation of parsing and encoding HL7 messages.
class HL7Parser {

    hl7v2:EncodingCharacters encodingCharacters = new ((), ());

    public isolated function parse(string messageStr) returns hl7v2:Message?|hl7v2:HL7Error {

        if messageStr.substring(0, 1).toBytes()[0] != 0x0B && messageStr.substring(messageStr.length() - 2).toBytes()[0] != 0x1C {
            return error hl7v2:HL7Error(hl7v2:HL7_V2_PARSER_ERROR,
                message = "Invalid HL7 message. Check for the correct starting and trailing characters.");
        }
        string message = messageStr.substring(1, messageStr.length() - 1);
        hl7v2:Message? messageResult = ();
        string[] segments = regex:split(message, "\r");
        if segments.length() == 0 {
            log:printError(string `There should be at least 1 segment for the HL7 message: ${message}`);
            return error hl7v2:HL7Error(hl7v2:HL7_V2_PARSER_ERROR,
                message = "There should be at least 1 segment for the HL7 message:" + message);
        } else {
            string delimeter = self.encodingCharacters.getFieldSeparator();
            foreach int i in 0 ..< segments.length() {
                string segmentName = "";
                if segments[i] != "" && segments[i].length() >= 3 {
                    if i == 0 {
                        if segments[i].length() < 4 {
                            log:printError(string `Invalid message content:  ${message}`);
                            break;
                        }
                        segmentName = segments[i].substring(0, 3);
                        delimeter = segments[i].substring(3, 4);
                    } else if <int>segments[i].indexOf(delimeter) >= 0 {
                        segmentName = segments[i].substring(0, <int>segments[i].indexOf(delimeter));
                    } else {
                        segmentName = segments[i];
                    }
                }

                if segmentName != "" {
                    hl7v2:Segment? segment = getSegment(segmentName);
                    if segment is hl7v2:Segment {
                        self.parseSegment(segment, segments[i]);
                        if isMshSegment(segmentName) {
                            if segment.hasKey("msh9") {
                                map<anydata> msh9Fields = <hl7v2:CompositeType>segment.get("msh9");
                                if messageResult is () {
                                    string hl7MessageType = msh9Fields["cm_msg1"].toString();
                                    string cmMsg2 = msh9Fields["cm_msg2"].toString();
                                    if cmMsg2 != "" {
                                        hl7MessageType = hl7MessageType.concat("_", cmMsg2);
                                    }
                                    messageResult = getMessage(hl7MessageType);
                                }
                                if messageResult is hl7v2:Message {
                                    map<anydata> messageFields = messageResult;
                                    messageFields[segmentName.toLowerAscii()] = segment;
                                }
                            } else {
                                log:printError("Invalid HL7 message type. Message type field(MSH-9) is missing.");
                                return error hl7v2:HL7Error(hl7v2:HL7_V2_PARSER_ERROR,
                                    message = "Invalid HL7 message type. Message type field(MSH-9) is missing. ");
                            }
                        } else if messageResult is hl7v2:Message {
                            hl7v2:Hl7MessageDefinitionRecord? msgDef = (typeof messageResult).@hl7v2:MessageDefinition;
                            map<anydata> messageFields = messageResult;
                            if msgDef is hl7v2:Hl7MessageDefinitionRecord {
                                map<hl7v2:Hl7SegmentDefinitionRecord> segmentDefs = msgDef.segments;
                                map<hl7v2:Hl7SegmentComponentDefinitionRecord>? groups = msgDef.groups;

                                if segmentDefs.hasKey(segmentName) {
                                    hl7v2:Hl7SegmentDefinitionRecord segmentDef = segmentDefs.get(segmentName);
                                    int? maxReps = segmentDef.maxReps;
                                    string? segmentComponentName = segmentDef.segmentComponentName;
                                    if maxReps is int {
                                        if maxReps == 1 {
                                            if segmentComponentName is string {
                                                if groups is map<hl7v2:Hl7SegmentComponentDefinitionRecord> {
                                                    hl7v2:Hl7SegmentComponentDefinitionRecord segmentComponentDef =
                                                                                                groups.get(segmentComponentName);
                                                    int? componentMaxReps = segmentComponentDef.maxReps;

                                                    if componentMaxReps is int {
                                                        hl7v2:SegmentComponent? segmentComponent = getSegmentComponent(segmentComponentName);
                                                        if segmentComponent is hl7v2:SegmentComponent {
                                                            if componentMaxReps == -1 {
                                                                hl7v2:SegmentComponent[] segmentComponentArr = <hl7v2:SegmentComponent[]>
                                                                    (messageFields[segmentComponentName.toLowerAscii()]);
                                                                if segmentComponentArr.length() == 0 {
                                                                    map<anydata> segmentComponentFields = segmentComponent;
                                                                    segmentComponentFields[segmentName.toLowerAscii()] = segment;
                                                                    (<hl7v2:SegmentComponent[]>segmentComponentArr).push(segmentComponent);
                                                                } else {
                                                                    hl7v2:SegmentComponent lastSegmentComponent = segmentComponentArr[segmentComponentArr.length() - 1];
                                                                    if lastSegmentComponent.hasKey(segmentName.toLowerAscii()) {
                                                                        map<anydata> segmentComponentFields = segmentComponent;
                                                                        segmentComponentFields[segmentName.toLowerAscii()] = segment;
                                                                    } else {
                                                                        lastSegmentComponent[segmentName.toLowerAscii()] = segment;
                                                                    }
                                                                }
                                                            } else if componentMaxReps == 1 {
                                                                messageFields[segmentComponentName.toLowerAscii()] = segmentComponent;
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                messageFields[segmentName.toLowerAscii()] = segment;
                                            }
                                        } else if maxReps == -1 {
                                            if segmentComponentName is string {
                                                if groups is map<hl7v2:Hl7SegmentComponentDefinitionRecord> {
                                                    hl7v2:Hl7SegmentComponentDefinitionRecord segmentComponentDef =
                                                                                                groups.get(segmentComponentName);
                                                    int? componentMaxReps = segmentComponentDef.maxReps;
                                                    if componentMaxReps is int {
                                                        hl7v2:SegmentComponent? segmentComponent = getSegmentComponent(segmentComponentName);
                                                        if segmentComponent is hl7v2:SegmentComponent {
                                                            if componentMaxReps == -1 {
                                                                hl7v2:SegmentComponent[] segmentComponentArr = <hl7v2:SegmentComponent[]>
                                                                    (messageFields[segmentComponentName.toLowerAscii()]);
                                                                if segmentComponentArr.length() == 0 {
                                                                    map<anydata> segmentComponentFields = segmentComponent;
                                                                    hl7v2:Segment[] innerSegmentsArr =
                                                                        <hl7v2:Segment[]>(segmentComponentFields[segmentName.toLowerAscii()]);
                                                                    innerSegmentsArr.push(segment);
                                                                    segmentComponentArr.push(segmentComponent);
                                                                } else {
                                                                    hl7v2:SegmentComponent lastSegmentComponent = segmentComponentArr[segmentComponentArr.length() - 1];
                                                                    if lastSegmentComponent.hasKey(segmentName.toLowerAscii()) {
                                                                        map<anydata> segmentComponentFields = lastSegmentComponent;
                                                                        hl7v2:Segment[] innerSegmentsArr =
                                                                        <hl7v2:Segment[]>(segmentComponentFields[segmentName.toLowerAscii()]);
                                                                        innerSegmentsArr.push(segment);
                                                                    } else {
                                                                        hl7v2:Segment[] innerSegmentsArr = <hl7v2:Segment[]>lastSegmentComponent[segmentName.toLowerAscii()];
                                                                        innerSegmentsArr.push(segment);
                                                                    }
                                                                }
                                                            } else if componentMaxReps == 1 {
                                                                messageFields[segmentComponentName.toLowerAscii()] = segmentComponent;
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                anydata segmentArrElement = messageFields[segmentName.toLowerAscii()];
                                                if segmentArrElement is () {
                                                    hl7v2:Segment[] segmentArr = [];
                                                    segmentArr.push(segment);
                                                    messageFields[segmentName.toLowerAscii()] = segmentArr;
                                                } else {
                                                    hl7v2:Segment[] segmentArr = <hl7v2:Segment[]>(messageFields[segmentName.toLowerAscii()]);
                                                    segmentArr.push(segment);
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    //considering custom segments to be added to the message
                                    anydata segmentResult = messageFields[segmentName.toLowerAscii()];
                                    if segmentResult is () {
                                        hl7v2:Segment[] segmentArr = [];
                                        segmentArr.push(segment);
                                        messageFields[segmentName.toLowerAscii()] = segmentArr;
                                    } else if segmentResult is hl7v2:Segment[] {
                                        hl7v2:Segment[] segmentArr = <hl7v2:Segment[]>(messageFields[segmentName.toLowerAscii()]);
                                        segmentArr.push(segment);
                                    } else if segmentResult is hl7v2:Segment {
                                        hl7v2:Segment[] segmentArr = [];
                                        segmentArr.push(<hl7v2:Segment>segmentResult);
                                        segmentArr.push(segment);
                                        messageFields[segmentName.toLowerAscii()] = segmentArr;
                                    }
                                }
                            }
                        }
                    } else {
                        log:printError(string `Invalid segment:  ${segmentName}`);
                        hl7v2:HL7Error err = error hl7v2:HL7Error(hl7v2:HL7_V2_PARSER_ERROR,
                            message = "Invalid segment: " + segmentName);
                        return err;
                    }
                }
            }
        }
        return messageResult;
    }

    # Parse the segment content and populate the segment model.
    #
    # + segment - Segment model
    # + segmentContent - Segment content string
    private isolated function parseSegment(hl7v2:Segment segment, string segmentContent) {

        int fieldOffset = 0;
        if (isDelimeterDefinedSegment(segment.name)) {
            fieldOffset = 1;
        }
        boolean isMSHSegment = isMshSegment(segment.name);
        int fieldNum;
        string[] fields = regex:split(segmentContent, self.encodingCharacters.getFieldSeparatorWithEscapeChars());
        foreach int i in 0 ..< fields.length() {
            string[] repetitions = regex:split(fields[i], self.encodingCharacters.getRepetitionSeperator());
            boolean isMSH2 = isDelimeterDefinedSegment(segment.name) && (i + fieldOffset == 2);
            if isMSH2 {
                repetitions = [fields[i]];
            }
            if isMSHSegment {
                fieldNum = i + 1;
            } else {
                fieldNum = i;
            }
            foreach int j in 0 ..< repetitions.length() {
                anydata|hl7v2:PrimitiveType fieldResult = getSegmentField(fieldNum, j, segment);
                if fieldResult is hl7v2:PrimitiveType {
                    if isMSH2 {
                        self.parsePrimitive(fieldResult, fields[i]);
                    } else {
                        self.parseType(fieldResult, repetitions[j]);
                    }
                } else if fieldResult is hl7v2:CompositeType {
                    self.parseType(fieldResult, repetitions[j]);
                } else {
                    //checking whether the segment field is msh2 or the segment name
                    if !isMSH2 && fieldNum != 0 {
                        log:printError(string `Invalid type requested for component: ${fieldNum.toBalString()}`);
                    }
                }
            }
        }
    }

    # Parse data type content and populate the data type model.
    #
    # + typ - Data type model 
    # + typeContent - Data type content string
    private isolated function parseType(anydata|hl7v2:PrimitiveType typ, string typeContent) {

        string[] components = regex:split(typeContent, self.encodingCharacters.getComponentSeparatorWithEscapeChars());
        foreach int i in 0 ..< components.length() {
            string[] subComponents = regex:split(components[i], self.encodingCharacters.getSubcomponentSeparator());
            foreach int j in 0 ..< subComponents.length() {
                if typ is hl7v2:PrimitiveType {
                    self.parsePrimitive(typ, subComponents[j]);
                } else if typ is hl7v2:CompositeType {
                    anydata|hl7v2:PrimitiveType primitiveType = getSubComponent(typ, j, i);
                    self.parsePrimitive(primitiveType, subComponents[j]);
                }
            }
        }
    }

    # Parse primitive type content and populate the primitive type model.
    #
    # + typ - Primitive type model
    # + value - Primitive type content string
    private isolated function parsePrimitive(anydata|hl7v2:PrimitiveType typ, anydata value) {

        if typ is hl7v2:PrimitiveType {
            if typ.value is any[] {
                string key;
                any[] valArr = <any[]>typ.value;
                key = <string>valArr[0];
                map<anydata> primitiveTypeValues = <map<anydata>>valArr[1];
                if primitiveTypeValues[key] == -1 {
                    int|error intValue = int:fromString(<string>value);
                    if intValue is int {
                        primitiveTypeValues[key] = intValue;
                    }
                } else if primitiveTypeValues[key] == -1.0 {
                    float|error floatValue = float:fromString(<string>value);
                    if floatValue is float {
                        primitiveTypeValues[key] = floatValue;
                    }
                } else {
                    if value != "" {
                        if primitiveTypeValues[key] is anydata[] {
                            anydata[] results = <anydata[]>primitiveTypeValues[key];
                            results[results.length() - 1] = value;
                        } else {
                            primitiveTypeValues[key] = value;
                        }
                    }
                }
            } else {
                typ.value = value;
            }
        }
    }

    # Encode the HL7 message model and return the encoded message string in MLLP format.
    #
    # + message - HL7 message model
    # + return - Encoded message string or `hl7v2:HL7Error` if an error occurred
    public isolated function encode(hl7v2:Message message) returns string|hl7v2:HL7Error {

        string encodedMessage = "";
        [string, anydata][] segments = message.entries().toArray();
        foreach var segmentEntry in segments {
            string key;
            anydata segment;
            [key, segment] = segmentEntry;
            log:printDebug(string `current processing segment: ${key}`);
            if segment is hl7v2:SegmentComponent {
                [string, anydata][] innerSegments = segment.entries().toArray();
                foreach var innerSegmentItem in innerSegments {
                    string innerSegmentKey;
                    anydata innerSegment;
                    [innerSegmentKey, innerSegment] = innerSegmentItem;
                    log:printDebug(string `current processing segment: ${innerSegmentKey} of segment component: ${segment.name}`);
                    if innerSegment is hl7v2:Segment {
                        string encodedSegment = self.encodeSegment(innerSegment);
                        encodedMessage = string:concat(encodedMessage, "\r", encodedSegment);
                    } else if innerSegment is hl7v2:Segment[] {
                        foreach hl7v2:Segment childSegment in innerSegment {
                            string encodedSegment = self.encodeSegment(childSegment);
                            encodedMessage = string:concat(encodedMessage, "\r", encodedSegment);
                        }
                    }
                }

            } else if segment is hl7v2:SegmentComponent[] {

            } else if segment is hl7v2:Segment {
                string encodedSegment = self.encodeSegment(segment);
                encodedMessage = string:concat(encodedMessage, "\r", encodedSegment);
            } else if segment is hl7v2:Segment[] {
                foreach hl7v2:Segment childSegment in segment {
                    string encodedSegment = self.encodeSegment(childSegment);
                    encodedMessage = string:concat(encodedMessage, "\r", encodedSegment);
                }
            } else if key != "name" {
                hl7v2:HL7Error err = error hl7v2:HL7Error(hl7v2:HL7_V2_PARSER_ERROR, message = "Invalid segment is provided with segment name:" + key);
                return err;
            }
        }
        return string:trim(encodedMessage);
    }

    # Encode the HL7 segment model and return the encoded segment string.
    #
    # + segment - HL7 segment model
    # + return - Encoded segment string
    private isolated function encodeSegment(hl7v2:Segment segment) returns string {

        string encodedString = "";
        boolean isMSHSegment = isMshSegment(segment.name);
        encodedString = string:concat(encodedString, segment.name);
        [string, anydata][] entries = segment.entries().toArray();
        int numOfFields = entries.length();
        foreach int i in 0 ..< numOfFields {
            string key;
            anydata val;
            [key, val] = entries[i];
            if key != "name" {
                if isMSHSegment {
                    // field seperator and encoding characters
                    if i == 1 {
                        continue;
                    }
                }
                if val is anydata[] {
                    foreach var dataType in val {
                        string encodedTypeStr = stripExtraDelimeters(self.encodeType(dataType, self.encodingCharacters.getComponentSeparator(), ""),
                        self.encodingCharacters.getComponentSeparator());
                        if encodedTypeStr != "" {
                            encodedString = string:concat(encodedString, self.encodingCharacters.getFieldSeparator(), encodedTypeStr);
                        }
                    }
                } else {
                    string encodedTypeStr = stripExtraDelimeters(self.encodeType(val, self.encodingCharacters.getComponentSeparator(), ""),
                        self.encodingCharacters.getComponentSeparator());
                    encodedString = string:concat(encodedString, self.encodingCharacters.getFieldSeparator(), encodedTypeStr);
                }
            }
        }
        encodedString = stripExtraDelimeters(encodedString, self.encodingCharacters.getComponentSeparator());
        return encodedString;
    }

    # Encode the HL7 type model and return the encoded type string.
    #
    # + typ - HL7 type model  
    # + separator - Seperator character of HL7 message  
    # + encodedTypeStr - Encoded type string value
    # + return - Encoded type string
    private isolated function encodeType(anydata typ, string separator, string encodedTypeStr) returns string {

        string updatedEncodedTypeStr = encodedTypeStr;
        if typ is hl7v2:CompositeType {
            hl7v2:CompositeType compositeType = <hl7v2:CompositeType>typ;
            [string, anydata][] components = compositeType.entries().toArray();
            foreach int componentNum in 0 ..< components.length() {
                string compKey;
                anydata component;
                [compKey, component] = components[componentNum];
                log:printDebug(string `current processing component: ${compKey}`);
                if isPrimitiveType(component) {
                    updatedEncodedTypeStr = self.encodePrimitive(component, separator, updatedEncodedTypeStr);
                } else if component is hl7v2:CompositeType {
                    [string, anydata][] subComponents = component.entries().toArray();
                    foreach int subComponentNum in 0 ..< subComponents.length() {
                        string subCompKey;
                        anydata subComponent;
                        [subCompKey, subComponent] = subComponents[subComponentNum];
                        log:printDebug(string `current processing subComponent: ${subCompKey}`);
                        updatedEncodedTypeStr = self.encodePrimitive(subComponent, separator, updatedEncodedTypeStr);
                    }
                    updatedEncodedTypeStr = stripExtraDelimeters(updatedEncodedTypeStr, self.encodingCharacters.getSubcomponentSeparator());
                    if updatedEncodedTypeStr != "" {
                        updatedEncodedTypeStr = string:concat(updatedEncodedTypeStr, separator);
                    }
                }
            }
        } else {
            updatedEncodedTypeStr = self.encodePrimitive(typ, separator, updatedEncodedTypeStr);
            updatedEncodedTypeStr = stripExtraDelimeters(updatedEncodedTypeStr, separator);
        }
        return updatedEncodedTypeStr;
    }

    # Encode the primitive type and return the encoded string.
    #
    # + typ - Primitive type model
    # + separator - Seperator character of HL7 datatypes
    # + encodedTypeStr - Encoded type string value
    # + return - Encoded type string
    private isolated function encodePrimitive(anydata typ, string separator, string encodedTypeStr) returns string {

        string updatedEncodedTypeStr = encodedTypeStr;
        if isPrimitiveType(typ) && typ != "" && typ != () {
            if typ is int {
                //todo: handle this check by using data type annotations
                if typ != -1 {
                    updatedEncodedTypeStr = string:concat(encodedTypeStr, typ.toString(), separator);
                }
            } else if typ is float {
                //todo: handle this check by using data type annotations
                if typ != -1.0 {
                    updatedEncodedTypeStr = string:concat(encodedTypeStr, typ.toString(), separator);
                }
            } else {
                updatedEncodedTypeStr = string:concat(encodedTypeStr, <string>typ, separator);
            }
        }
        return updatedEncodedTypeStr;
    }
}

