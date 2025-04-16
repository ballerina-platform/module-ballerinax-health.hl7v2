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
# Function to return the message record for specific message name
public type GetMessageFuncCreator isolated function (string messageName) returns Message?;
# Function to return the segment record for specific segment name
public type GetSegmentFuncCreator isolated function (string segmentName) returns Segment?;
# Function to return the segment group record for specific segment group name
public type GetSegmentGroupFuncCreator isolated function (string segmentGroupName) returns SegmentComponent?;

public type ParserUtils record {
    GetMessageFuncCreator getMessageFunc;
    GetSegmentFuncCreator getSegmentFunc;
    GetSegmentGroupFuncCreator getSegmentGroupFunc;
};

# Record describing information about a package.
#
# + hl7Version - HL7 version supported  
# + name - Package name  
# + parserCreator - Function capable of creating Parser implementation to parse HL7 wire format to model  
# + encoderCreator - Function capable of creating Encoder implementation encode to HL7 model in to wire format  
# + parserUtils - Utility functions for parser
public type HL7Package record {|
    readonly & string hl7Version;
    readonly & string name;
    readonly & ParserCreator? parserCreator;
    readonly & EncoderCreator? encoderCreator;
    readonly & ParserUtils? parserUtils?;
|};

public type HL7CustomDef record {
    map<Segment> segments?;
    map<Message> messages?;
    map<SegmentComponent> segmentGroups?;
};

# Registry holding HL7 related runtime metadata. 
# NOTE: This is used for internal processing between related HL7 packages. Recommended not to update the content of this
# package
public isolated class HL7Registry {

    // Key: Compatible HL7 version
    private map<HL7Package> packages = {};
    private map<HL7CustomDef> customDefinitions = {};

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

    # Find matching HL7 message type for given HL7 version.
    #
    # + hl7Version - HL7 version  
    # + messageName - Message name
    # + return - Message record for specific message name. HL7Error is returned, if error occurred
    public isolated function getHl7MessageType(string hl7Version, string messageName) returns Message?|HL7Error {
        lock {
            if self.packages.hasKey(hl7Version) {
                // check for custom message definition
                Message? customMessage = self.getCustomMessage(hl7Version, messageName);
                if customMessage != () {
                    return customMessage.clone();
                }
                HL7Package package = self.packages.get(hl7Version);
                readonly & GetMessageFuncCreator? creator = package?.parserUtils?.getMessageFunc;
                if creator != () {
                    return creator(messageName);
                } 
                return error(HL7_V2_PARSER_ERROR, message = "Message creator function unavailable");
            } else {
                return error(HL7_V2_PARSER_ERROR, message = "Package not found for HL7 version : " + hl7Version);
            }
        }
    }

    # Find matching HL7 segment type for given HL7 version.
    # 
    # + hl7Version - HL7 version
    # + segmentName - Segment name
    # + return - Segment record for specific segment name. HL7Error is returned, if error occurred
    public isolated function getHl7SegmentType(string hl7Version, string segmentName) returns Segment?|HL7Error {
        lock {
            if self.packages.hasKey(hl7Version) {
                // check for custom segment definition
                Segment? customSegment = self.getCustomSegment(hl7Version, segmentName);
                if customSegment != () {
                    return customSegment.clone();
                }

                HL7Package package = self.packages.get(hl7Version);
                readonly & GetSegmentFuncCreator? creator = package?.parserUtils?.getSegmentFunc;
                if creator != () {
                    return creator(segmentName);
                } 
                return error(HL7_V2_PARSER_ERROR, message = "Segment creator function unavailable");
            } else {
                return error(HL7_V2_PARSER_ERROR, message = "Package not found for HL7 version : " + hl7Version);
            }
        }
    }

    # Find matching HL7 segment group type for given HL7 version.
    # 
    # + hl7Version - HL7 version
    # + segmentGroupName - Segment group name
    # + return - Segment group record for specific segment group name. HL7Error is returned, if error occurred
    public isolated function getHl7SegmentGroupType(string hl7Version, string segmentGroupName) returns SegmentComponent? {
        lock {
            if self.packages.hasKey(hl7Version) {
                // check for custom segment group definition
                SegmentComponent? customSegmentGroup = self.getCustomSegmentGroup(hl7Version, segmentGroupName);
                if customSegmentGroup != () {
                    return customSegmentGroup.clone();
                }
                HL7Package package = self.packages.get(hl7Version);
                readonly & GetSegmentGroupFuncCreator? creator = package?.parserUtils?.getSegmentGroupFunc;
                if creator != () {
                    return creator(segmentGroupName);
                } 
                log:printError(string `Segment group creator function unavailable`);
                return ();
            } else {
                log:printError(string `Package not found for HL7 version : ${hl7Version}`);
                return ();
            }
        }
    }

    isolated function registerCustomSegment(string hl7Version, Segment segment) {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                customDef.segments[segment.name] = segment.clone();
            } else {
                string name = segment.name;
                map<Segment> segments = {};
                segments[name] = segment.clone();
                HL7CustomDef customDef = { segments: segments };
                self.customDefinitions[hl7Version] = customDef;
            }
        }
    }

    isolated function registerCustomMessage(string hl7Version, Message message) {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                customDef.messages[message.name] = message.clone();
            } else {
                string messageName = message.name;
                map<Message> messages = {};
                messages[messageName] = message.clone();
                HL7CustomDef customDef = { messages: messages };
                self.customDefinitions[hl7Version] = customDef;
            }
        }
    }

    isolated function registerSegmentGroup(string hl7Version, SegmentComponent segmentGroup) {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                customDef.segmentGroups[segmentGroup.name] = segmentGroup.clone();
            } else {
                string segmentGroupName = segmentGroup.name;
                map<SegmentComponent> segmentGroups = {};
                segmentGroups[segmentGroupName] = segmentGroup.clone();
                HL7CustomDef customDef = { segmentGroups: segmentGroups };
                self.customDefinitions[hl7Version] = customDef;
            }
        }
    }

    isolated function hasCustomMessage(string hl7Version, string messageName) returns boolean {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                if customDef.messages != () && (<map<Message>>customDef.messages).hasKey(messageName) {
                    return true;
                }
            }
            return false;
        }
    }

    isolated function hasCustomSegment(string hl7Version, string segmentName) returns boolean {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                if customDef.segments != () && (<map<Segment>>customDef.segments).hasKey(segmentName) {
                    return true;
                }
            }
            return false;
        }
    }

    isolated function hasCustomSegmentGroup(string hl7Version, string segmentGroupName) returns boolean {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                if customDef.segmentGroups != () && (<map<SegmentComponent>>customDef.segmentGroups).hasKey(segmentGroupName) {
                    return true;
                }
            }
            return false;
        }
    }

    isolated function getCustomMessage(string hl7Version, string messageName) returns Message? {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                if customDef.messages != () && (<map<Message>>customDef.messages).hasKey(messageName) {
                    return (<map<Message>>customDef.messages).get(messageName).clone();
                }
            }
            return ();
        }
    }

    isolated function getCustomSegment(string hl7Version, string segmentName) returns Segment? {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                if customDef.segments != () && (<map<Segment>>customDef.segments).hasKey(segmentName) {
                    return (<map<Segment>>customDef.segments).get(segmentName).clone();
                }
            }
            return ();
        }
    }

    isolated function getCustomSegmentGroup(string hl7Version, string segmentGroupName) returns SegmentComponent? {
        lock {
            if self.customDefinitions.hasKey(hl7Version) {
                HL7CustomDef customDef = self.customDefinitions.get(hl7Version);
                if customDef.segmentGroups != () && (<map<SegmentComponent>>customDef.segmentGroups).hasKey(segmentGroupName) {
                    return (<map<SegmentComponent>>customDef.segmentGroups).get(segmentGroupName).clone();
                }
            }
            return ();
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

# Register custom HL7 segment for given HL7 version.
#
# + hl7Version - HL7 version
# + segment - Custom Segment record
public isolated function registerCustomSegment(string hl7Version, Segment segment) {
    hl7Registry.registerCustomSegment(hl7Version, segment);
}

# Register custom HL7 message for given HL7 version.
#
# + hl7Version - HL7 version
# + message - Custom Message record
public isolated function registerCustomMessage(string hl7Version, Message message) {
    hl7Registry.registerCustomMessage(hl7Version, message);
}

# Register custom HL7 segment group for given HL7 version.
#
# + hl7Version - HL7 version
# + segmentGroup - Custom SegmentGroup record
public isolated function registerCustomSegmentGroup(string hl7Version, SegmentComponent segmentGroup) {
    hl7Registry.registerSegmentGroup(hl7Version, segmentGroup);
}
