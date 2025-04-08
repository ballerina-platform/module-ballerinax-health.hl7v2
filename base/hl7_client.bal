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

import ballerina/tcp;

// The following types are defined to handle the HL7 message versions.
type CE record {
    *CompositeType;
    string ce1 = "";
    string ce2 = "";
    string ce3 = "";
    string ce4 = "";
    string ce5 = "";
    string ce6 = "";
};

type VID record {
    *CompositeType;
    string vid1 = "";
    CE vid2 = {};
    CE vid3 = {};
};

# HL7 Client implementation.
# 
# # Deprecated
# This client is deprecated and will be removed in future releases. Use HL7Client in ballerinax.clients.hl7 instead.
@deprecated
public class HL7Client {

    final string host;
    final int port;

    public isolated function init(string remoteHost, int remotePort) returns HL7Error? {

        self.host = remoteHost;
        self.port = remotePort;
    }

    # Send a single HL7 message to given encoded HL7 message to given endpoint.
    # + message - HL7 message as record or encoded binary message. If record is given, it will be encoded to binary message
    # + return - Response HL7 encoded response from the target server. HL7Error if error occurred
    public function sendMessage(Message|byte[] message) returns Message|HL7Error {

        if message is Message {
            anydata mshSegment = message.get("msh");
            if mshSegment is Segment {
                anydata hl7Version = mshSegment.get("msh12");
                // from hl7v24 onwards, MSH12 has 3 parts vid1(version id), vid2(internationalization id), vid3(internal version id)
                string|error versionId = "";
                if hl7Version is string {
                    versionId = hl7Version;
                } else {
                    json vid = hl7Version.toJson();
                    VID|error value = vid.cloneWithType();

                    if value is error {
                        return error HL7Error(HL7_V2_MSG_VALIDATION_ERROR, message = "Error occurred while parsing HL7 message version.");
                    }
                    versionId = value.vid1;
                }
                
                if versionId is string {
                    byte[]|HL7Error encodedMessage = encode(versionId, message);
                    if encodedMessage is byte[] {
                        byte[]|HL7Error response = self.writeToHL7Stream(encodedMessage);
                        if response is byte[] {
                            Message|HL7Error parseResult = parse(response);
                            if parseResult is HL7Error {
                                return error HL7Error(HL7_V2_CLIENT_ERROR, parseResult, message = "Error occurred while parsing HL7 response message.");
                            }
                            return parseResult;
                        }
                        return response;
                    }
                    return encodedMessage;
                }
                return error HL7Error(HL7_V2_MSG_VALIDATION_ERROR, message = "HL7 message version cannot be empty.");
            }
        } else {
            byte[]|HL7Error response = self.writeToHL7Stream(message);
            if response is byte[] {
                Message|HL7Error parseResult = parse(response);
                if parseResult is HL7Error {
                    return error HL7Error(HL7_V2_PARSER_ERROR, parseResult, message = "Error occurred while parsing HL7 response message.");
                }
            } else {
                return response;
            }
        }
        return error HL7Error(HL7_V2_CLIENT_ERROR, message = "Something went wrong sending HL7 message.");
    }

    # This function is used to send HL7 message to given HL7 endpoint using TCP Client.
    #
    # + message - Byte stream of the HL7 message.
    # + return - Returns byte stream of the HL7 response or HL7Error if error occurred.
    function writeToHL7Stream(byte[] message) returns byte[]|HL7Error {

        if message.length() > 0 {
            do {
                tcp:Client tcpClient = check new (self.host, self.port);
                check tcpClient->writeBytes(message);
                readonly & byte[] receivedData = check tcpClient->readBytes();
                check tcpClient->close();
                return receivedData;
            } on fail var e {
                return error HL7Error(HL7_V2_CLIENT_ERROR, e, message = "Error occurred while sending HL7 message.");
            }
        }
        return error HL7Error(HL7_V2_MSG_VALIDATION_ERROR, message = "HL7 message content cannot be empty.");
    }
}
