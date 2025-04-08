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
import ballerina/time;

// EncodingCharacters encodingCharacters = new ((), ());

# Delegates parsing of HL7 message to the relevant HL7 version's parser.
# + message - HL7 Message in encoded wire format
# + return - HL7 message model with specific type or GenericMessage model. HL7Error if error occurred
public isolated function parse(string|byte[] message) returns Message|HL7Error {

    byte[] hL7WirePayload = [];
    if message is string {
        hL7WirePayload = createHL7WirePayload(string:toBytes(message));
    } else {
        hL7WirePayload = message;
        if message[0] != HL7_MSG_START_BLOCK && message[message.length() - 1] != 0x1C {
            // If the message isn't sent through MLLP, add the MLLP header and trailer.
            // Using tools like `netcat`, you can send HL7 messages without MLLP header and trailer.
            hL7WirePayload = createHL7WirePayload(message);
        }
    }

    string|error msgStr = string:fromBytes(hL7WirePayload);
    if msgStr is error {
        return error(HL7_V2_PARSER_ERROR, message = "Failed to create string from byte array.");
    }

    msgStr = re `\n`.replaceAll(msgStr, "\r");
    if msgStr is error {
        return error(HL7_V2_PARSER_ERROR, message = "Failed when replacing new line with the carriage return.");
    }

    string? hl7Version = extractHL7Version(msgStr);
    if hl7Version is () {
        return error(HL7_V2_PARSER_ERROR, message = "Failed to extract version of the HL7 message.");
    }

    Message?|HL7Error parserHl7MsgResult = parseHl7Msg(msgStr, <string>hl7Version);
    if parserHl7MsgResult is Message {
        return parserHl7MsgResult;
    } else {
        HL7Error err = error(HL7_V2_PARSER_ERROR, message = "Error occurred while parsing HL7 message string.");
        return err;
    }
}

isolated function parseHl7Msg(string messageStr, string hl7Version) returns Message?|HL7Error {
    EncodingCharacters encodingCharacters = new ((), ());

    if messageStr.substring(0, 1).toBytes()[0] != 0x0B && messageStr.substring(messageStr.length() - 2).toBytes()[0] != 0x1C {
        return error HL7Error(HL7_V2_PARSER_ERROR,
                message = "Invalid HL7 message. Check for the correct starting and trailing characters.");
    }
    string message = messageStr.substring(1, messageStr.length() - 1);
    Message? messageResult = ();
    string msgType = "";
    string[] segments = re `\r`.split(message);
    if segments.length() == 0 {
        log:printError(string `There should be at least 1 segment for the HL7 message: ${message}`);
        return error HL7Error(HL7_V2_PARSER_ERROR,
                message = "There should be at least 1 segment for the HL7 message:" + message);
    } else {
        string delimeter = encodingCharacters.getFieldSeparator();
        map<int> segmentPositions = {};
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

                Segment? segment = check hl7Registry.getHl7SegmentType(hl7Version, segmentName);
                if segment is Segment {
                    parseSegment(segment, segments[i], encodingCharacters);
                    if isMshSegment(segmentName) {
                        if segment.hasKey("msh9") {
                            map<anydata> msh9Fields = <CompositeType>segment.get("msh9");
                            if messageResult is () {
                                string hl7MessageType = "";
                                if hl7Version == "2.3" {
                                    hl7MessageType = msh9Fields["cm_msg1"].toString();
                                    string cmMsg2 = msh9Fields["cm_msg2"].toString();
                                    if cmMsg2 != "" {
                                        hl7MessageType = hl7MessageType.concat("_", cmMsg2);
                                    }
                                } else {
                                    hl7MessageType = msh9Fields["msg1"].toString() + "_" + msh9Fields["msg2"].toString();
                                }
                                if hl7MessageType.startsWith("ACK_") {
                                    messageResult = check hl7Registry.getHl7MessageType(hl7Version, "ACK");
                                } else {
                                    messageResult = check hl7Registry.getHl7MessageType(hl7Version, hl7MessageType);
                                }
                            }
                            if messageResult is Message {
                                msgType = messageResult.name;
                                map<anydata> messageFields = messageResult;
                                messageFields[segmentName.toLowerAscii()] = segment;
                            }
                        } else {
                            log:printError("Invalid HL7 message type. Message type field(MSH-9) is missing.");
                            return error HL7Error(HL7_V2_PARSER_ERROR,
                                    message = "Invalid HL7 message type. Message type field(MSH-9) is missing. ");
                        }
                    } else if messageResult is Message {
                        Hl7MessageDefinitionRecord? msgDef = (typeof messageResult).@MessageDefinition;
                        map<anydata> messageFields = messageResult;
                        if msgDef is Hl7MessageDefinitionRecord {
                            map<Hl7SegmentComponentDefinitionRecord>? groups = msgDef.groups;
                            map<Hl7SegmentDefinitionRecord[]>? orderedSegments = msgDef.orderedSegments;
                            if orderedSegments is map<Hl7SegmentDefinitionRecord[]> {
                                if segmentPositions.hasKey(segmentName) {
                                    segmentPositions[segmentName] = segmentPositions.get(segmentName) + 1;
                                } else {
                                    segmentPositions[segmentName] = 0;
                                }
                                int pos = segmentPositions.get(segmentName);
                                if orderedSegments.hasKey(segmentName) {
                                    Hl7SegmentDefinitionRecord[] segmentDefArr = orderedSegments.get(segmentName);
                                    Hl7SegmentDefinitionRecord segmentDef = segmentDefArr[pos];
                                    int? maxReps = segmentDef.maxReps;
                                    string segmentComponentName = "";
                                    string[] parentSegmentGroups = [];
                                    if segmentDef.segmentComponentName is string {
                                        segmentComponentName = <string>segmentDef.segmentComponentName;
                                        if segmentComponentName.indexOf(".") > 0 {
                                            string:RegExp dotSeperator = re `\.`;
                                            parentSegmentGroups = dotSeperator.split(segmentComponentName.substring(0, <int>segmentComponentName.lastIndexOf(".")));
                                            segmentComponentName = segmentComponentName.substring(<int>segmentComponentName.lastIndexOf(".") + 1);
                                        }
                                    }
                                    if maxReps == 1 {
                                        if segmentComponentName != "" {
                                            string segmentGroupName;
                                            if parentSegmentGroups.length() > 0 {
                                                segmentGroupName = segmentComponentName.toLowerAscii();
                                            } else {
                                                segmentGroupName = segmentComponentName.substring(segmentComponentName.indexOf(msgType) + msgType.length() + 1 ?: 0).toLowerAscii();
                                            }
                                            if groups is map<Hl7SegmentComponentDefinitionRecord> {
                                                Hl7SegmentComponentDefinitionRecord segmentComponentDef =
                                                                                                groups.get(<string>segmentDef.segmentComponentName);
                                                int? componentMaxReps = segmentComponentDef.maxReps;

                                                if componentMaxReps is int {
                                                    SegmentComponent? segmentComponent = hl7Registry.getHl7SegmentGroupType(hl7Version, segmentComponentName);
                                                    if segmentComponent is SegmentComponent {
                                                        if componentMaxReps == -1 {
                                                            map<anydata> childSegmentGroup = <map<anydata>>processChildSegmentGroups(messageFields, parentSegmentGroups, msgType, hl7Version);
                                                            SegmentComponent[] segmentComponentArr = <SegmentComponent[]>
                                                                    (childSegmentGroup[segmentGroupName]);
                                                            if segmentComponentArr.length() == 0 {
                                                                map<anydata> segmentComponentFields = segmentComponent;
                                                                segmentComponentFields[segmentName.toLowerAscii()] = segment;
                                                                (<SegmentComponent[]>segmentComponentArr).push(segmentComponent);
                                                            } else {
                                                                SegmentComponent lastSegmentComponent = segmentComponentArr[segmentComponentArr.length() - 1];
                                                                lastSegmentComponent[segmentName.toLowerAscii()] = segment;
                                                            }
                                                        } else if componentMaxReps == 1 {
                                                            map<anydata> processChildSegmentGroupsResult = <map<anydata>>processChildSegmentGroups(messageFields, parentSegmentGroups, msgType, hl7Version);
                                                            if processChildSegmentGroupsResult[segmentGroupName] is SegmentComponent {
                                                                SegmentComponent current = <SegmentComponent>processChildSegmentGroupsResult[segmentGroupName];
                                                                current[segmentName.toLowerAscii()] = segment;
                                                            } else {
                                                                segmentComponent[segmentName.toLowerAscii()] = segment;
                                                                processChildSegmentGroupsResult[segmentGroupName] = segmentComponent;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            messageFields[segmentName.toLowerAscii()] = segment;
                                        }
                                    } else if maxReps == -1 {
                                        if segmentComponentName != "" {
                                            string segmentGroupName;
                                            if parentSegmentGroups.length() > 0 {
                                                segmentGroupName = segmentComponentName.toLowerAscii();
                                            } else {
                                                segmentGroupName = segmentComponentName.substring(segmentComponentName.indexOf(msgType) + msgType.length() + 1 ?: 0).toLowerAscii();
                                            }
                                            if groups is map<Hl7SegmentComponentDefinitionRecord> {
                                                Hl7SegmentComponentDefinitionRecord segmentComponentDef =
                                                                                                groups.get(<string>segmentDef.segmentComponentName);
                                                int? componentMaxReps = segmentComponentDef.maxReps;
                                                if componentMaxReps is int {
                                                    SegmentComponent? segmentComponent = hl7Registry.getHl7SegmentGroupType(hl7Version, segmentComponentName);
                                                    if segmentComponent is SegmentComponent {
                                                        if componentMaxReps == -1 {
                                                            map<anydata> childSegmentGroup = <map<anydata>>processChildSegmentGroups(messageFields, parentSegmentGroups, msgType, hl7Version);
                                                            SegmentComponent[] segmentComponentArr = <SegmentComponent[]>
                                                                    (childSegmentGroup[segmentGroupName]);
                                                            if segmentComponentArr.length() == 0 {
                                                                map<anydata> segmentComponentFields = segmentComponent;
                                                                Segment[] innerSegmentsArr =
                                                                        <Segment[]>(segmentComponentFields[segmentName.toLowerAscii()]);
                                                                innerSegmentsArr.push(segment);
                                                                segmentComponentArr.push(segmentComponent);
                                                            } else {
                                                                SegmentComponent lastSegmentComponent = segmentComponentArr[segmentComponentArr.length() - 1];
                                                                if lastSegmentComponent.hasKey(segmentName.toLowerAscii()) {
                                                                    map<anydata> segmentComponentFields = lastSegmentComponent;
                                                                    Segment[] innerSegmentsArr =
                                                                        <Segment[]>(segmentComponentFields[segmentName.toLowerAscii()]);
                                                                    Segment segmentResult = innerSegmentsArr[innerSegmentsArr.length() - 1];
                                                                    if segmentResult.isEmtpy {
                                                                        innerSegmentsArr[innerSegmentsArr.length() - 1] = segment;
                                                                    } else {
                                                                        innerSegmentsArr.push(segment);
                                                                    }
                                                                } else {
                                                                    Segment[] innerSegmentsArr = <Segment[]>lastSegmentComponent[segmentName.toLowerAscii()];
                                                                    innerSegmentsArr.push(segment);
                                                                }
                                                            }
                                                        } else if componentMaxReps == 1 {
                                                            map<anydata> processChildSegmentGroupsResult = <map<anydata>>processChildSegmentGroups(messageFields, parentSegmentGroups, msgType, hl7Version);
                                                            if processChildSegmentGroupsResult[segmentGroupName] is SegmentComponent {
                                                                SegmentComponent current = <SegmentComponent>messageFields[segmentGroupName];
                                                                current[segmentName.toLowerAscii()] = segment;
                                                            } else {
                                                                segmentComponent[segmentName.toLowerAscii()] = segment;
                                                                processChildSegmentGroupsResult[segmentGroupName] = segmentComponent;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            anydata segmentArrElement = messageFields[segmentName.toLowerAscii()];
                                            if segmentArrElement is () {
                                                Segment[] segmentArr = [];
                                                segmentArr.push(segment);
                                                messageFields[segmentName.toLowerAscii()] = segmentArr;
                                            } else {
                                                Segment[] segmentArr = <Segment[]>(messageFields[segmentName.toLowerAscii()]);
                                                segmentArr.push(segment);
                                            }
                                        }
                                    }
                                } else {
                                    //considering custom segments to be added to the message
                                    anydata segmentResult = messageFields[segmentName.toLowerAscii()];
                                    if segmentResult is () {
                                        Segment[] segmentArr = [];
                                        segmentArr.push(segment);
                                        messageFields[segmentName.toLowerAscii()] = segmentArr;
                                    } else if segmentResult is Segment[] {
                                        Segment[] segmentArr = <Segment[]>(messageFields[segmentName.toLowerAscii()]);
                                        segmentArr.push(segment);
                                    } else if segmentResult is Segment {
                                        Segment[] segmentArr = [];
                                        segmentArr.push(<Segment>segmentResult);
                                        segmentArr.push(segment);
                                        messageFields[segmentName.toLowerAscii()] = segmentArr;
                                    }
                                }

                            }
                        }
                    }
                } else if segmentName.startsWith("Z") {
                    // Vendor specific segments
                    // Skipping the segments which are not defined in the registry
                    continue;
                } else {
                    log:printError(string `Invalid segment:  ${segmentName}`);
                    HL7Error err = error HL7Error(HL7_V2_PARSER_ERROR,
                            message = "Invalid segment: " + segmentName);
                    return err;
                }
            }
        }
    }
    return messageResult;
}

# Traverse through the segment groups and return the immediate parent segment group.
#
# + messageFields - Message fieldsof the parsed HL7 message  
# + parentSegmentGroups - Parent segment group names  
# + msgType - HL7 Message type  
# + hl7Version - HL7 version
# + return - Immediate parent segment group
isolated function processChildSegmentGroups(map<anydata> messageFields, string[] parentSegmentGroups, string msgType, string hl7Version) returns anydata {
    map<anydata> current = messageFields;
    int pos = 0;
    string currentSegmentGroupName = "";
    foreach var parentSegmentGroup in parentSegmentGroups {
        if pos == 0 {
            currentSegmentGroupName = parentSegmentGroup.substring(parentSegmentGroup.indexOf(msgType) + msgType.length() + 1 ?: 0).toLowerAscii();
        } else {
            currentSegmentGroupName = parentSegmentGroup.toLowerAscii();
        }
        if current.hasKey(currentSegmentGroupName) {
            if current[currentSegmentGroupName] is SegmentComponent {
                current = <map<anydata>>current[currentSegmentGroupName];
            } else if current[currentSegmentGroupName] is SegmentComponent[] {
                SegmentComponent[] segmentGroupArr = <SegmentComponent[]>current[currentSegmentGroupName];
                current = <map<anydata>>segmentGroupArr[segmentGroupArr.length() - 1];
            }
        } else {
            SegmentComponent? segmentComponent = hl7Registry.getHl7SegmentGroupType(hl7Version, parentSegmentGroup);
            if segmentComponent is SegmentComponent {
                if current[currentSegmentGroupName] is SegmentComponent {
                    current = <map<anydata>>current[currentSegmentGroupName];
                } else if current[currentSegmentGroupName] is SegmentComponent[] {
                    SegmentComponent[] segmentGroupArr = <SegmentComponent[]>current[currentSegmentGroupName];
                    current = <map<anydata>>segmentGroupArr[segmentGroupArr.length() - 1];
                } else {
                    current[currentSegmentGroupName] = segmentComponent;
                    current = <map<anydata>>current[currentSegmentGroupName];
                }
            }
        }
        pos += 1;
    }
    return current;
}

# Parse the segment content and populate the segment model.
#
# + segment - Segment model  
# + segmentContent - Segment content string  
# + encodingCharacters - Encoding characters
isolated function parseSegment(Segment segment, string segmentContent, EncodingCharacters encodingCharacters) {

    int fieldOffset = 0;
    if (isDelimeterDefinedSegment(segment.name)) {
        fieldOffset = 1;
    }
    boolean isMSHSegment = isMshSegment(segment.name);
    int fieldNum;
    string[] fieldsEmptyLastElement = re `${encodingCharacters.getFieldSeparatorWithEscapeChars()}`.split(segmentContent);
    string[] fields = "" == fieldsEmptyLastElement[fieldsEmptyLastElement.length() - 1]
        ? fieldsEmptyLastElement.slice(0, fieldsEmptyLastElement.length() - 1)
        : fieldsEmptyLastElement;
    foreach int i in 0 ..< fields.length() {
        string[] repetitions = re `${encodingCharacters.getRepetitionSeperator()}`.split(fields[i]);
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
            anydata|PrimitiveType fieldResult = getSegmentField(fieldNum, j, segment);
            if fieldResult is PrimitiveType {
                if isMSH2 {
                    parsePrimitive(fieldResult, fields[i]);
                } else {
                    parseType(fieldResult, repetitions[j], encodingCharacters);
                }
            } else if fieldResult is CompositeType {
                parseType(fieldResult, repetitions[j], encodingCharacters);
            } else {
                //checking whether the segment field is msh2 or the segment name
                if !isMSH2 && fieldNum != 0 {
                    log:printError(string `Invalid type requested for component: ${fieldNum.toBalString()}`);
                }
            }
        }
    }
    segment.isEmtpy = false;
}

# Parse data type content and populate the data type model.
#
# + typ - Data type model  
# + typeContent - Data type content string  
# + encodingCharacters - HL7 encoding characters
isolated function parseType(anydata|PrimitiveType typ, string typeContent, EncodingCharacters encodingCharacters) {

    string[] components = re `${encodingCharacters.getComponentSeparatorWithEscapeChars()}`.split(typeContent);
    foreach int i in 0 ..< components.length() {
        string[] subComponents = re `${encodingCharacters.getSubcomponentSeparator()}`.split(components[i]);
        foreach int j in 0 ..< subComponents.length() {
            if typ is PrimitiveType {
                parsePrimitive(typ, subComponents[j]);
            } else if typ is CompositeType {
                anydata|PrimitiveType subComponentType = getSubComponent(typ, j, i);
                parsePrimitive(subComponentType, subComponents[j]);
            }
        }
    }
}

# Parse primitive type content and populate the primitive type model.
#
# + typ - Primitive type model
# + value - Primitive type content string
isolated function parsePrimitive(anydata|PrimitiveType typ, anydata value) {

    if typ is PrimitiveType {
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

# Encodes HL7 message model to encoded wire format.
#
# + hl7Version - Target HL7 version
# + message - HL7 message mnodel
# + return - encoded message. HL7Error if error occurred
public isolated function encode(string hl7Version, Message message) returns byte[]|HL7Error {
    Encoder|HL7Error? encoder = check hl7Registry.getEncoder(hl7Version);
    if encoder is Encoder {
        return encoder.encode(message);
    } else {
        return error(HL7_V2_PARSER_ERROR, message = "Unable to find HL7 message encoder for HL7 version:" + hl7Version);
    }
}

# Function to create HL7 payload with essential HL7 message Start Block character (1 byte)ASCII , i.e., <0x0B>
# and End Block character (1 byte)ASCII , i.e., <0x1C>.
#
# + message - HL7 encoded message to be wrapped
# + return - Wrapped HL7 payload
public isolated function createHL7WirePayload(byte[] message) returns byte[] {

    // Mark the start of HL7 encoded message
    byte[] encodedMessage = [HL7_MSG_START_BLOCK];
    foreach byte item in message {
        encodedMessage.push(item);
    }
    //Add CR to mark the end of last segment
    encodedMessage.push(0x0D);
    // Mark the end of hl7 content 
    encodedMessage.push(0x1C);
    // Mark the end of the message
    encodedMessage.push(0x0D);

    return encodedMessage;
}

# Extracts HL7 version from the given HL7 message.
#
# + message - HL7 message string
# + return - HL7 version
isolated function extractHL7Version(string message) returns string? {
    string[] splitMsg = re `\r`.split(message);
    string[] splitFields = re `\|`.split(splitMsg[0].trim());
    if splitFields.length() >= 12 {
        return splitFields[11];
    }
    return ();
}

# Converts date string in UTC format into HL7 TS timestamp format.
#
# + dateStrInUtc - Date string in UTC format
# + return - Converted HL7 TS timestamp value
function utcToTSFormat(string dateStrInUtc) returns string|HL7Error {
    string tsTimeStr;
    do {
        time:Civil timeInstance = check time:civilFromString(dateStrInUtc);
        tsTimeStr = string:concat(timeInstance.year.toString() + timeInstance.month.toString() +
                timeInstance.day.toString() + timeInstance.hour.toString() + timeInstance.minute.toString());
        //todo: validate fields with single digit values and add leading 0s
    } on fail var e {
        //todo: introduce hl7 error and wrap the specific error
        string errorMessage = string `error occurred while converting UTC time string to TS format: ${e.message()}.`;
        log:printError(errorMessage);
        return error(HL7_V2_PARSER_ERROR, message = errorMessage);
    }
    return tsTimeStr;
}
