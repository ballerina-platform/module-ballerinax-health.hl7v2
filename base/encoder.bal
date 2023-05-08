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

# HL7 Encoder interface.
public type Encoder object {
    # Encode HL7 message model to encoded wire format.
    # 
    # + message - HL7 message model
    # + return - encoded message. HL7Error if error occurred
    public isolated function encode(Message message) returns byte[]|HL7Error;
};


# HL7 message encoder.
public isolated class HL7Encoder {
    
    # Encode HL7 message model to encoded wire format.
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
}
