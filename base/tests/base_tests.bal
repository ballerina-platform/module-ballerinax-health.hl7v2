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
import ballerina/test;
import ballerina/log;
import ballerina/tcp;

final string msg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.x||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

final string invalidMsg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|||\rEVN|A01|200708181123||";

tcp:Listener hl7Listener = check new tcp:Listener(59519);

@test:BeforeSuite
function startMockHl7Listener() {
    error? attach = hl7Listener.attach(new TcpMockService());
    if attach is error {
        log:printError(string `Error occurred while attaching the HL7 listener: ${attach.message()}`, attach);
    }
    error? 'start = hl7Listener.'start();
    if 'start is error {
        log:printError(string `Error occurred while starting the HL7 listener: ${'start.message()}`, 'start);
    }
    log:printInfo("HL7 listener started successfully.");
}

@test:Config {}
function testCreateHL7WirePayload() {
    byte[] hL7WirePayload = createHL7WirePayload(string:toBytes(msg));
    test:assertEquals(hL7WirePayload[0], HL7_MSG_START_BLOCK, "HL7 Message start block is not correct");
    test:assertEquals(hL7WirePayload[hL7WirePayload.length() - 2], HL7_MSG_END_BLOCK, "HL7 Message end block is not correct");
}

@test:Config {}
function testExtractHL7Version() {
    string? hL7Version = extractHL7Version(msg);
    test:assertEquals(hL7Version, "2.x", "HL7 Version is not correct");
}

@test:Config {
    before: hl7PackageSettingUp
}
function testGetHL7Parser() {
    Parser|HL7Error parser = hl7Registry.getParser("2.x");
    test:assertTrue(parser is Parser, "Error occurred while retrieving the parser for 2.x version");
}

@test:Config {}
function testHL7MsgEncode() returns error? {
    Encoder|HL7Error encoder = hl7Registry.getEncoder("2.x");
    test:assertTrue(encoder is Encoder, "Error occurred while retrieving the encoder for 2.x version");
    TST_2XX tstMsg = {
        msh: {
            msh1: "MSH",
            msh2: "^~\\&",
            msh3: {
                hd1: "ADT1",
                hd2: "GOOD HEALTH HOSPITAL",
                hd3: "GHH LAB, INC."
            }
        }
    };
    byte[]|HL7Error encodeResult = encode("2.x", tstMsg);
    if encodeResult is byte[] {
        test:assertEquals(encodeResult[0], HL7_MSG_START_BLOCK, "HL7 Message start block is not correct");
        test:assertEquals(encodeResult[encodeResult.length() - 2], HL7_MSG_END_BLOCK, "HL7 Message end block is not correct");
    }
}

@test:Config {}
function testHL7MsgParse() {
    Parser|HL7Error parser = hl7Registry.getParser("2.x");
    if parser is Parser {
        //parse the hl7 message as a string.
        Message|HL7Error message = parse(msg);
        if message is HL7Error {
            test:assertEquals(message.detail().message, "There is no concrete parser implementation for version 2.x.");
        }

        //parse the hl7 message as a byte stream.
        message = parse(string:toBytes(msg));
        if message is HL7Error {
            test:assertEquals(message.detail().message, "There is no concrete parser implementation for version 2.x.");
        }

        //parse invalid hl7 message
        message = parse(invalidMsg);
        if message is HL7Error {
            test:assertEquals(message.detail().message, "Package not found for HL7 version : ");
        }
    }
}

@test:Config {}
function testCovertUTCtoTS() {
    string utcTime = "2020-10-10T10:10:10.000Z";
    string|HL7Error ts = utcToTSFormat(utcTime);
    test:assertEquals(ts, "202010101010", "Error occurred while converting UTC to TS format.");
}

@test:Config {}
function testEncodingCharacters() {
    //default encoding characters
    EncodingCharacters encodingChars = new ((), ());
    test:assertEquals(encodingChars.getFieldSeparator(), "|", "Field separator is not correct");
    test:assertEquals(encodingChars.getComponentSeparator(), "^", "Component separator is not correct");
    test:assertEquals(encodingChars.getRepetitionSeperator(), "~", "Repetition separator is not correct");
    test:assertEquals(encodingChars.getEscapeCharacter(), "\\", "Escape character is not correct");
    test:assertEquals(encodingChars.getSubcomponentSeparator(), "&", "Sub component separator is not correct");
    test:assertEquals(encodingChars.getTruncationCharacter(), "#", "Encoding characters are not correct");

    //custom encoding characters
    EncodingCharacters customEncodingChars = new ("!", ["@", "#", "$", "%", "^"]);
    test:assertEquals(customEncodingChars.getFieldSeparator(), "!", "Field separator is not correct");
    test:assertEquals(customEncodingChars.getComponentSeparator(), "@", "Component separator is not correct");
    test:assertEquals(customEncodingChars.getRepetitionSeperator(), "#", "Repetition separator is not correct");
    test:assertEquals(customEncodingChars.getEscapeCharacter(), "$", "Escape character is not correct");
    test:assertEquals(customEncodingChars.getSubcomponentSeparator(), "%", "Sub component separator is not correct");
    test:assertEquals(customEncodingChars.getTruncationCharacter(), "^", "Encoding characters are not correct");
}

@test:Config {}
function testHl7Client() returns error? {
    HL7Client hl7client = check new ("localhost", 59519);
    TST_2XX tstMsg = {
        msh: {
            msh1: "MSH",
            msh2: "^~\\&",
            msh3: {
                hd1: "ADT1",
                hd2: "GOOD HEALTH HOSPITAL",
                hd3: "GHH LAB, INC."
            },
            msh12: "2.x"
        }
    };
    Message|HL7Error response = hl7client.sendMessage(tstMsg);
    //since the concrete parset implementation is not available for 2.x version, the message will be returned as a error string.
    if response is HL7Error {
        test:assertEquals(response.detail().message, "Error occurred while parsing HL7 response message.");
    }
    response = hl7client.sendMessage(createHL7WirePayload(string:toBytes(msg)));
    if response is HL7Error {
        test:assertEquals(response.detail().message, "Error occurred while parsing HL7 response message.");
    }

    HL7Client hl7clientForInvalidServer = check new ("localhost", 59550);
    Message|HL7Error responseForInvalidServer = hl7clientForInvalidServer.sendMessage(tstMsg);
    if responseForInvalidServer is HL7Error {
        test:assertEquals(responseForInvalidServer.detail().message, "Error occurred while sending HL7 message.");
    }
}

@test:AfterSuite
function stopMockHl7Listener() {
    error? gracefulStopState = hl7Listener.gracefulStop();
    if gracefulStopState is error {
        log:printError(string `Error occurred while stopping the HL7 listener: ${gracefulStopState.message()}`, gracefulStopState);
    }
    log:printInfo("HL7 listener stopped successfully.");
}
