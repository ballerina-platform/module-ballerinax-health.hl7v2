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

# HL7 v2.5.1 message encoder implementation
isolated class HL7v251Encoder {
    *hl7v2:Encoder;

    public isolated function encode(hl7v2:Message message) returns byte[]|hl7v2:HL7Error {
        HL7Parser parser = new();
        string encodeStr = check parser.encode(message);
        // wrap with start and ending blocks
        return hl7v2:createHL7WirePayload(encodeStr.toBytes());
    }
}