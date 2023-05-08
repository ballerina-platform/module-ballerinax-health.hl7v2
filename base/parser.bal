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

# HL7 parser interface
public type Parser object {
    public isolated function parse(byte[] message) returns Message|HL7Error;
};

# HL7 message parser.
public isolated class HL7Parser {

    # Parses HL7 message given the byte stream.
    # + message - HL7 Message in encoded wire format
    # + return - HL7 message model with specific type or GenericMessage model. HL7Error if error occurred
    public isolated function parse(byte[] message) returns Message|HL7Error {
        string|error msgStr = string:fromBytes(message);
        if msgStr is error {
            return error(HL7_V2_PARSER_ERROR, message = "Failed to create string from byte array.");
        }

        string? hl7Version = extractHL7Version(msgStr);
        if hl7Version is () {
            return error(HL7_V2_PARSER_ERROR, message = "Failed to extract version of the HL7 message.");
        }

        Parser|HL7Error? parser = check hl7Registry.getParser(hl7Version);
        if parser is HL7Error? {
            return error(HL7_V2_PARSER_ERROR, message = "Unable to find parser for HL7 message with version:" + hl7Version);
        }
        return parser.parse(message);
    }
}
