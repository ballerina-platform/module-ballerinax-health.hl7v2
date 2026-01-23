// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).
import ballerina/log;

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

# HL7 parser interface
public type Parser object {
    # Parse HL7 message.
    #
    # + message - HL7 Message in encoded wire format
    # + return - HL7 message model with specific type or GenericMessage model. HL7Error if error occurred
    public isolated function parse(string message) returns Message|HL7Error;
};

@TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type Type record {
};


# Returns instance of HL7 sub component/group.
#
# + compositeType - Composite data type model 
# + subComponentposition - Sub component position  
# + componentPosition - Component position
# + return - Instance of HL7 sub component/group
isolated function getSubComponent(CompositeType compositeType, int subComponentposition, int componentPosition)
            returns anydata|PrimitiveType {
    [string, anydata][] entries = compositeType.entries().toArray();
    if (entries.length() <= componentPosition) {
        return {};
    }
    [string, anydata] componentField = entries[componentPosition];
    string key;
    anydata val;
    [key, val] = componentField;
    if val is anydata[] {
        anydata[] arr = val;
        foreach var elem in arr {
            if isPrimitiveType(elem) || elem is CompositeType {
                return elem;
            }
        }
    } else {
        if isPrimitiveType(val) {
            map<anydata> typeMap = compositeType;
            PrimitiveType primitiveVal = {value: <any[]>[key, typeMap]};
            return primitiveVal;
        } else {
            return getSubComponent(<Type>val, subComponentposition, 0);
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
# + hl7Version - HL7 version
# + fieldNum - Field number
# + repetitionNum - Number of repetitions
# + segment - Segment model
# + return - Value of the segment field
isolated function getSegmentField(string hl7Version, int fieldNum, int repetitionNum, Segment segment) returns anydata|PrimitiveType {
    if segment.keys().length() > fieldNum {
        if !segment.hasKey("name") {
            log:printError(string `Invalid segment: ${segment.toBalString()}`);
            return ();
        }
        if fieldNum == 0 {
            //segment name
            return ();
        }
        string segmentName = segment.name;
        string key = string`${segmentName.toLowerAscii()}${fieldNum}`;
        if isValidSegmentField(hl7Version, segment, repetitionNum, key) {
            if isPrimitiveType(segment.get(key)) {
                map<anydata> segmentMap = segment;
                PrimitiveType primitiveVal = {value: <any[]>[key, segmentMap]};
                return primitiveVal;
            } else if segment.get(key) is CompositeType {
                return segment.get(key);
            } else if segment.get(key) is anydata[] {
                anydata[] arr = <anydata[]>segment.get(key);
                // For arrays, use repetitionNum to get or create the element at that index
                // Ensure the array has enough elements for this repetition
                if repetitionNum >= arr.length() {
                    // Need to extend the array - create new elements based on the last element's type
                    if arr.length() > 0 {
                        // Clone the last element to create a new one of the same type
                        anydata lastElem = arr[arr.length() - 1];
                        while arr.length() <= repetitionNum {
                            arr.push(lastElem);
                        }
                    } else {
                        // Array is empty - this shouldn't happen with default values, but handle it
                        return ();
                    }
                }
                // Get the element at the repetition index
                anydata elem = arr[repetitionNum];
                if elem is PrimitiveType || elem is CompositeType {
                    return elem;
                } else if isPrimitiveType(elem) {
                    map<anydata> segmentMap = segment;
                    PrimitiveType primitiveVal = {value: <any[]>[key, segmentMap]};
                    return primitiveVal;
                }
            }
        } else if key != "name" && key != "isEmtpy" {
            log:printError(string `invalid segment field:  ${key}`);
            return ();
        }
    } else {
        log:printError(string `Not existant field for the segment: ${segment.name}`);
    }
    return ();
}

# Checks whether a given segment field is valid.
#
# + hl7Version - HL7 version
# + segment - Segment model 
# + repetitionNum - Number of repetitions
# + fieldKey - Field key
# + return - True if the segment field is valid, else false
isolated function isValidSegmentField(string hl7Version, Segment segment, int repetitionNum, string fieldKey) returns boolean {
    map<Hl7TypeDefinitionRecord> elementDefinitions = hl7Registry.getSegmentElementDefinitions(hl7Version, segment.name);
    
    if elementDefinitions.hasKey(fieldKey) {
        Hl7TypeDefinitionRecord fieldDefinition = elementDefinitions.get(fieldKey);
        int? maxReps = fieldDefinition.maxReps;
        if maxReps is int {
            if maxReps >= repetitionNum || maxReps == -1 {
                return true;
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
    int len = string:length(inputStr);
    int lastIndex = len - 1;

    // Find the last non-delimeter character index from the end
    while (lastIndex >= 0 && inputStr[lastIndex] == delimeter) {
        lastIndex = lastIndex - 1;
    }
    if (lastIndex < len - 1) {
        return string:substring(inputStr, 0, lastIndex + 1);
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


isolated function isEmptySegment(string segmentStr) returns boolean {
    if (string:length(segmentStr) == 0) {
        return false;
    }
    
    string hl7ComponentDelemeter = "|";
    string segmentBody = string:substring(segmentStr, 3);
    
    // Compare each character with the first character
    foreach var char in segmentBody {
        if (char != hl7ComponentDelemeter) {
            return false; 
        }
    }
    return true;
}
