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

# Function to return to register HL7 Parser
public type ParserCreator isolated function () returns Parser;
# Function to return to register HL7 Encoder
public type EncoderCreator isolated function () returns Encoder;

# Record describing information about a package.
#
# + hl7Version - HL7 version supported 
# + name - Package name
# + parserCreator - Function capable of creating Parser implementation to parse HL7 wire format to model
# + encoderCreator - Function capable of creating Encoder implementation encode to HL7 model in to wire format
public type HL7Package record {|
    readonly & string hl7Version;
    readonly & string name;
    readonly & ParserCreator? parserCreator;
    readonly & EncoderCreator? encoderCreator;
|};

# Registry holding HL7 related runtime metadata. 
# NOTE: This is used for internal processing between related HL7 packages. Recommended not to update the content of this
# package
public isolated class HL7Registry {

    // Key: Compatible HL7 version
    private map<HL7Package> packages = {};

    function init() {
    }

    # Add HL7 package to the registry.
    # + package - package metadata
    public isolated function addPackage(readonly & HL7Package package) {
        lock {
            if !(self.packages.hasKey(package.hl7Version)) {
                self.packages[package.hl7Version] = package;
            } else {
                log:printError(string `HL7 package compatible to version:  ${package.hl7Version} already exists.`);
            }
        }
    }

    # Find matching HL7 parser for given HL7 version.
    # + hl7Version - HL7 version
    # + return - Parser implementation capable of parsing the HL7 message of given version. HL7Error is returned, 
    # if errror occurred
    public isolated function getParser(string hl7Version) returns Parser|HL7Error {
        lock {
            if self.packages.hasKey(hl7Version) {
                HL7Package package = self.packages.get(hl7Version);
                readonly & ParserCreator? creator = package.parserCreator;
                if creator != () {
                    return creator();
                } 
                return error(HL7_V2_PARSER_ERROR, message = "Parser creator function unavailable");
            } else {
                return error(HL7_V2_PARSER_ERROR, message = "Package not found for HL7 version : " + hl7Version);
            }
        }
    }

    # Find matching HL7 encoder for given HL7 version.
    # + hl7Version - HL7 version
    # + return - Encoder implementation capable of parsing the HL7 message of given version. HL7Error is returned, 
    # if errror occurred
    public isolated function getEncoder(string hl7Version) returns Encoder|HL7Error {
        lock {
            if self.packages.hasKey(hl7Version) {
                HL7Package package = self.packages.get(hl7Version);
                readonly & EncoderCreator? creator = package.encoderCreator;
                if creator != () {
                    return creator();
                } 
                return error(HL7_V2_PARSER_ERROR, message = "Encoder creator function unavailable");
            } else {
                return error(HL7_V2_PARSER_ERROR, message = "Package not found for HL7 version : " + hl7Version);
            }
        }
    }
}
