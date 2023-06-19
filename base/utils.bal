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
import ballerina/time;

# Delegates parsing of HL7 message to the relevant HL7 version's parser.
# + message - HL7 Message in encoded wire format
# + return - HL7 message model with specific type or GenericMessage model. HL7Error if error occurred
public isolated function parse(string|byte[] message) returns Message|HL7Error {

    byte[] hL7WirePayload = [];
    if message is string {
        hL7WirePayload = createHL7WirePayload(string:toBytes(message));
    } else {
        hL7WirePayload = message;
        if message[0] != HL7_MSG_START_BLOCK && message[message.length() - 1] != HL7_MSG_END_BLOCK {
            // If the message isn't sent through MLLP, add the MLLP header and trailer.
            // Using tools like `netcat`, you can send HL7 messages without MLLP header and trailer.
            hL7WirePayload = createHL7WirePayload(message);
        }
    }

    string|error msgStr = string:fromBytes(hL7WirePayload);
    if msgStr is error {
        return error(HL7_V2_PARSER_ERROR, message = "Failed to create string from byte array.");
    }

    msgStr = regex:replaceAll(msgStr, "\n", "\r");
    if msgStr is error {
        return error(HL7_V2_PARSER_ERROR, message = "Failed when replacing new line with the carriage return.");
    }

    string? hl7Version = extractHL7Version(msgStr);
    if hl7Version is () {
        return error(HL7_V2_PARSER_ERROR, message = "Failed to extract version of the HL7 message.");
    }

    Parser|HL7Error? parser = check hl7Registry.getParser(hl7Version);
    if parser is HL7Error? {
        return error(HL7_V2_PARSER_ERROR, message = "Unable to find parser for HL7 message with version:" + hl7Version);
    }
    return parser.parse(msgStr);
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
    encodedMessage.push(CARRIAGE_RETURN);
    // Mark the end of hl7 content 
    encodedMessage.push(HL7_MSG_END_BLOCK);
    // Mark the end of the message
    encodedMessage.push(CARRIAGE_RETURN);

    return encodedMessage;
}

# Extracts HL7 version from the given HL7 message.
#
# + message - HL7 message string
# + return - HL7 version
isolated function extractHL7Version(string message) returns string? {
    string[] splitMsg = regex:split(message, "\\r");
    string[] splitFields = regex:split(splitMsg[0].trim(), "\\|");
    if splitFields.length() >= 12 {
       return splitFields[11]; 
    }
    return ();
}


# Converts date string in UTC format into HL7 TS timestamp format.
#
# + dateStrInUtc - Date string in UTC format
# + return - Converted HL7 TS timestamp value
function utcToTSFormat(string dateStrInUtc) returns string {
    string tsTimeStr;
    do {
        time:Civil timeInstance = check time:civilFromString(dateStrInUtc);
        tsTimeStr = string:concat(timeInstance.year.toString() + timeInstance.month.toString() +
            timeInstance.day.toString() + timeInstance.hour.toString() + timeInstance.minute.toString());
        //todo: validate fields with single digit values and add leading 0s
    } on fail var e {
        //todo: introduce hl7 error and wrap the specific error
        log:printError(string `error occurred while converting UTC time string to TS format: ${e.message()}.`);
    }
    return tsTimeStr;
}
