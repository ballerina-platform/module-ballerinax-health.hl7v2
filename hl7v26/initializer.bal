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
import ballerina/jballerina.java;

// This will get access to the package module from the Runtime API. The arguments are the org, name, and major version of the package.
final handle packageModule = hl7v2:newModule(java:fromString("ballerinax"), java:fromString("health.hl7v26"), java:fromString("4"));

function init() {
    readonly & hl7v2:HL7Package package = {
        name: "HL7v26",
        hl7Version: "2.6",
        parserCreator: createHL7v26Parser,
        encoderCreator: createHL7v26Encoder,
        parserUtils: {
            getMessageFunc:  getMessage,
            getSegmentFunc:  getSegment,
            getSegmentGroupFunc:  getSegmentComponent
        }
    };
    hl7v2:hl7Registry.addPackage(package);
    log:printDebug("HL7 v2.6 Package Initialized");
}

# Function to create hl7v2:Parser implementation for HL7 v2.6.
# Note: It is recommended to use hl7v2:HL7Parser instead of this. This function is used by internal internal package framework
#
# + return - Return instance of hl7v2:Parser implementation
public isolated function createHL7v26Parser() returns hl7v2:Parser {
    HL7v26Parser parser = new();
    return parser;
}

# Function to create hl7v2:Encoder implementation for HL7 v${versionSeperated}.
# Note: It is recommended to use hl7v2:HL7Encoder instead of this. This function is used by internal internal package framework
#
# + return - Return instance of hl7v2:Encoder implementation
public isolated function createHL7v26Encoder() returns hl7v2:Encoder {
    HL7v26Encoder encoder = new();
    return encoder;
}