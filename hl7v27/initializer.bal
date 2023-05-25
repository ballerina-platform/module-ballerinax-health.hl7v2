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
import ballerinax/health.hl7v2;

function init() {
    readonly & hl7v2:HL7Package package = {
        name: "HL7v27",
        hl7Version: "2.7",
        parserCreator: createHL7v27Parser,
        encoderCreator: createHL7v27Encoder
    };
    hl7v2:hl7Registry.addPackage(package);
    log:printInfo("HL7 v2.7 Package Initialized");
}

# Function to create hl7v2:Parser implementation for HL7 v2.7.
# Note: It is recommended to use hl7v2:HL7Parser instead of this. This function is used by internal internal package framework
#
# + return - Return instance of hl7v2:Parser implementation
public isolated function createHL7v27Parser() returns hl7v2:Parser {
    HL7v27Parser parser = new();
    return parser;
}

# Function to create hl7v2:Encoder implementation for HL7 v${versionSeperated}.
# Note: It is recommended to use hl7v2:HL7Encoder instead of this. This function is used by internal internal package framework
#
# + return - Return instance of hl7v2:Encoder implementation
public isolated function createHL7v27Encoder() returns hl7v2:Encoder {
    HL7v27Encoder encoder = new();
    return encoder;
}