// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).
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
import ballerina/tcp;

// import ballerina/test;

type ST string;

type HD record {
    *CompositeType;
    ST hd1 = "";
    ST hd2 = "";
    ST hd3 = "";
};

type MSH record {
    *Segment;
    string name = "MSH";
    ST msh1 = "";
    ST msh2 = "";
    HD msh3;
    ST msh12 = "";
};

@MessageDefinition {
    segments: {}
}
type TST_2XX record {
    *Message;
    string name = "TST_2XX";
    MSH msh;
};

isolated class Hl7v2XParser {
    *Parser;
    public isolated function parse(string message) returns Message|HL7Error {
        return error(HL7_V2_PARSER_ERROR, message = "There is no concrete parser implementation for version 2.x.");
    }
}

isolated class Hl7v2XEncoder {
    *Encoder;
    public isolated function encode(Message message) returns byte[]|HL7Error {
        return createHL7WirePayload(string:toBytes("MSH|^~\\&|SENDING_APP|SENDING_FACILITY|RECEIVING_APP||20230615120000||ACK|MSG001|P|2.3|"));
    }
}

service class TcpMockService {
    *tcp:Service;

    remote function onConnect(tcp:Caller caller) returns tcp:ConnectionService {
        log:printInfo(string `Client connected to echoServer: ${caller.remotePort}`);
        return new HL7ServiceMockConnectionService();
    }
}

service class HL7ServiceMockConnectionService {
    *tcp:ConnectionService;

    remote function onBytes(tcp:Caller caller, readonly & byte[] data) returns byte[]|tcp:Error? {
        string|error recievedMsg = string:fromBytes(data);
        if recievedMsg is string {
            log:printInfo(string `Received HL7 Message: ${recievedMsg}`);
            return data;
        }
        log:printInfo("Error occurred while receiving HL7 message.");
        return error(string `Error occurred while processing the received message: ${recievedMsg.message()}`);
    }

    remote function onError(tcp:Error err) {
        log:printInfo(string `An error occurred while receiving HL7 message: ${err.message()}`);
    }

    remote function onClose() {
        log:printInfo("Client left.");
    }
}

public isolated function createHL7v2XParser() returns Parser {
    Hl7v2XParser parser = new ();
    return parser;
}

public isolated function createHL7v2XEncoder() returns Encoder {
    Hl7v2XEncoder encoder = new ();
    return encoder;
}

public isolated function getMessage(string message) returns Message? {
    return ();
}

public isolated function getSegment(string segmentName) returns Segment? {
    return ();
}

public isolated function getSegmentComponent(string componentName) returns SegmentComponent? {
    return ();
}


function hl7PackageSettingUp() {
    readonly & HL7Package package = {
        name: "HL7v2x",
        hl7Version: "2.x",
        parserCreator: createHL7v2XParser,
        encoderCreator: createHL7v2XEncoder,
        parserUtils: {
            getMessageFunc: getMessage,
            getSegmentFunc: getSegment,
            getSegmentGroupFunc: getSegmentComponent
        }
    };
    hl7Registry.addPackage(package);
}
