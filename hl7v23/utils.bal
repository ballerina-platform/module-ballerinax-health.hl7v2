import ballerina/log;
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

import ballerinax/health.hl7v2;

# Returns instance of segment record given the segment name.
#
# + segmentName - HL7 message segment name
# + return - Record of segment instance
isolated function getSegment(string segmentName) returns hl7v2:Segment? {
    if segmentName == "MSH" {
        MSH segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "PID" {
        PID segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "NK1" {
        NK1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "MSA" {
        MSA segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "QRD" {
        QRD segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "PV1" {
        PV1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "OBX" {
        OBX segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "ACC" {
        ACC segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "ADD" {
        ADD segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "AIG" {
        AIG segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "AL1" {
        AL1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "DB1" {
        DB1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "DG1" {
        DG1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "DRG" {
        DRG segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "ERR" {
        ERR segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "EVN" {
        EVN segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "PD1" {
        PD1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "PR1" {
        PR1 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "PV2" {
        PV2 segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "QRD" {
        QRD segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "QRF" {
        QRF segmentInstance = {};
        return segmentInstance;
    } else if segmentName == "ROL" {
        ROL segmentInstance = {};
        return segmentInstance;
    } else {
        return ();
    }
}

# Returns instance of HL7 message given the message type.
#
# + messageName - Message type
# + return - Instance of HL7 message 
isolated function getMessage(string messageName) returns hl7v2:Message? {
    if messageName == "ADT^A01" {
        ADT_A01 messageInstance = {msh: {}, pid: {}};
        return messageInstance;
    } else if messageName == "ADR^A19" {
        ADR_A19 messageInstance = {msh: {}, msa: {}, qrd: {}};
        return messageInstance;
    } else if messageName == "QRY^A19" {
        QRY_A19 messageInstance = {msh: {}, qrd: {}};
        return messageInstance;
    } else if messageName == "ACK" {
        ACK messageInstance = {msh: {}, msa: {}};
        return messageInstance;
    } else {
        return ();
    }
}

# Returns instance of HL7 segment component.
#
# + segmentComponentName - HL7 Segment component name
# + return - Instance of HL7 segment component
isolated function getSegmentComponent(string segmentComponentName) returns hl7v2:SegmentComponent? {
    if segmentComponentName == "QUERY_RESPONSE" {
        QUERY_RESPONSE segmentComponentInstance = {};
        return segmentComponentInstance;
    } else if segmentComponentName == "PROCEDURE" {
        PROCEDURE segmentComponentInstance = {};
        return segmentComponentInstance;
    } else {
        return ();
    }
}

# Returns instance of HL7 sub component/group.
#
# + compositeType - Composite data type model 
# + subComponentposition - Sub component position  
# + componentPosition - Component position
# + return - Instance of HL7 sub component/group
isolated function getSubComponent(hl7v2:CompositeType compositeType, int subComponentposition, int componentPosition)
            returns anydata|hl7v2:PrimitiveType {
    [string, anydata][] entries = compositeType.entries().toArray();
    [string, anydata] componentField = entries[componentPosition];
    string key;
    anydata val;
    [key, val] = componentField;
    if val is anydata[] {
        anydata[] arr = val;
        foreach var elem in arr {
            if isPrimitiveType(elem) || elem is hl7v2:CompositeType {
                return elem;
            }
        }
    } else {
        if isPrimitiveType(val) {
            map<anydata> typeMap = compositeType;
            hl7v2:PrimitiveType primitiveVal = {value: <any[]>[key, typeMap]};
            return primitiveVal;
        } else {
            return <Type>val;
        }
    }
    return {};
}

# Checks whether a given datatype is a primitive type.
#
# + data - Data type model
# + return - True if the data type is a primitive type, else false
isolated function isPrimitiveType(anydata data) returns boolean {
    if data is string || data is int || data is float {
        return true;
    }
    return false;
}

# Returns the value of a given segment field.
#
# + fieldNum - Field number
# + repetitionNum - Number of repetitions
# + segment - Segment model
# + return - Value of the segment field
isolated function getSegmentField(int fieldNum, int repetitionNum, hl7v2:Segment segment) returns anydata|hl7v2:PrimitiveType {
    if segment.keys().length() >= fieldNum {
        [string, anydata][] entries = segment.entries().toArray();
        string key;
        anydata val;
        [string, anydata] typeResult = entries[fieldNum];
        [key, val] = typeResult;
        if isValidSegmentField(segment, repetitionNum, key) {
            if isPrimitiveType(val) {
                map<anydata> segmentMap = segment;
                hl7v2:PrimitiveType primitiveVal = {value: <any[]>[key, segmentMap]};
                return primitiveVal;
            } else if val is hl7v2:CompositeType {
                return val;
            } else if val is anydata[] {
                anydata[] arr = val;
                foreach var elem in arr {
                    if elem is hl7v2:PrimitiveType || elem is hl7v2:CompositeType {
                        return elem;
                    } else if isPrimitiveType(elem) {
                        map<anydata> segmentMap = segment;
                        hl7v2:PrimitiveType primitiveVal = {value: <any[]>[key, segmentMap]};
                        return primitiveVal;
                    }
                }
            }
        } else if key != "name" {
            log:printError(string`invalid segment field:  ${key}`);
            return ();
        }
    } else {
        log:printError(string`Not existant field for the segment: ${segment.name}`);
    }
    return ();
}

# Checks whether a given segment field is valid.
#
# + segment - Segment model 
# + repetitionNum - Number of repetitions
# + fieldKey - Field key
# + return - True if the segment field is valid, else false
isolated function isValidSegmentField(hl7v2:Segment segment, int repetitionNum, string fieldKey) returns boolean {
    hl7v2:HL7SegmentDefinitionRecord? segmentDefinition = (typeof segment).@hl7v2:SegmentDefinition;
    if segmentDefinition != () {
        map<hl7v2:HL7TypeDefinitionRecord> elementDefinitions = segmentDefinition.fields ?: {};
        if elementDefinitions.hasKey(fieldKey) {
            hl7v2:HL7TypeDefinitionRecord fieldDefinition = elementDefinitions.get(fieldKey);
            int? maxReps = fieldDefinition.maxReps;
            if maxReps is int {
                if maxReps >= repetitionNum || maxReps == -1 {
                    return true;
                }
            }
        }
    }
    return false;
}

# Removes the extra delimeters from the end of the HL7 message string.
#
# + inputStr - HL7 message string
# + delimeter - Delimeter
# + return - String without the extra delimeters
isolated function stripExtraDelimeters(string inputStr, string delimeter) returns string {
    if inputStr.endsWith(delimeter) {
        return inputStr.substring(0, inputStr.length() - 1);
    }
    return inputStr;
}

# Checks whether a given segment is a MSH segment.
#
# + segmentName - Segment name
# + return - True if the segment is a MSH segment, else false
isolated function isMshSegment(string segmentName) returns boolean {
    if segmentName == "MSH" {
        return true;
    }
    return false;
}

# Checks whether a given segment is a delimeter defined segment of HL7 message.
#
# + segmentName - Segment name
# + return - True if the segment is a delimeter defined segment, else false
isolated function isDelimeterDefinedSegment(string segmentName) returns boolean {
    if segmentName == "MSH" || segmentName == "FHS" || segmentName == "BHS" {
        return true;
    }
    return false;
}
