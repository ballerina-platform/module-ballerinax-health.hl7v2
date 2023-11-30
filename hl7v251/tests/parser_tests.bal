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
import ballerinax/health.hl7v2 as hl7;
import ballerina/lang.regexp;

final string msg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.5.1||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

final string msgWithInvalidField = "MSH|^~\\&|SENDING_APP|SENDING_FACILITY|RECEIVING_APP|RECEIVING_FACILITY|20230101120000||ADT^A01|MSG000001|P|2.5.1|\r" +
"EVN|A01|20230101120000||\r" +
"PID|1||123456789|^^^^MR||Doe^John^||19600101|M|||123 Main St^Apt 4B^New York^NY^10001||(555)555-5555||S||123456789|\r" +
"PV1|1|O|^^^OP^||||12345^Smith^John^Dr.||||||||||||||||N|||||||||\r" +
"CSP|1|20230101|20231231|E|XXX|";

@test:Config {}
function parseHl7Message() {
    hl7:Message|hl7:HL7Error parseResult = hl7:parse(msg);
    if parseResult is hl7:Message {
        test:assertEquals(parseResult.name, "ADT_A01", "Parsing issue occurred with the message");
    } else {
        test:assertFail("Parsing failed");
    }
}

@test:Config {}
function testEncodeHl7Message() returns error? {
    QRY_A19 qry_a19 = {
        msh: {
            msh3: {hd1: "ADT1"},
            msh4: {hd1: "MCM"},
            msh5: {hd1: "LABADT"},
            msh6: {hd1: "MCM"},
            msh8: "SECURITY",
            msh9: {msg1: "QRY", msg2: "A19"},
            msh10: "MSG00001",
            msh11: {pt1: "P"},
            msh12: {
                vid1: "2.5.1"
            }
        },
        qrd: {
            qrd1: {ts1: "20220828104856+0000"},
            qrd2: "R",
            qrd3: "I",
            qrd4: "QueryID01",
            qrd7: {cq1: "5"},
            qrd8: [{xcn1: "1", xcn2: {fn1: "ADAM"}, xcn3: "EVERMAN"}],
            qrd9: [{ce1: "VXI"}],
            qrd10: [{ce1: "SIIS"}]
        }
    };
    byte[] encodedQRYA19 = check hl7:encode(VERSION, qry_a19);
    string|error encodedMsgStr = string:fromBytes(encodedQRYA19);
    if encodedMsgStr is string {
        string[] segmentLines = regexp:split(re `\r`, encodedMsgStr);
        test:assertEquals(segmentLines[1], "QRD|20220828104856+0000|R|I|QueryID01|||5|1^ADAM^EVERMAN|VXI|SIIS||", "Encoding issue occurred with the message");
    } else {
        test:assertFail("Encoding failed");
    }
    test:assertEquals(encodedQRYA19[0], hl7:HL7_MSG_START_BLOCK, "HL7 Message start block is not correct");
}

@test:Config {}
function testEncodeHl7MessageWithSegmentArrays() returns error? {
    ORM_O01 orm_o01 = {
        msh: {
            msh1: "|",
            msh2: "^~\\&",
            msh7: {ts1: "20231130080250.98+0530"},
            msh9: {msg1: "ORM", msg2: "O01"},
            msh10: "301",
            msh11: {pt1: "T"},
            msh12: {vid1: "2.5.1"}
        },
        patient: [
            {
                pid: {
                    pid1: "1",
                    pid2: {cx1: "123456789", cx5: "SSN"},
                    pid5: [{xpn1: {fn1: "WAYNE"}, xpn2: "BRUCE", xpn7: "D", xpn5: "Mr"}],
                    pid8: "f",
                    pid11: [
                        {
                            xad1: {
                                sad1: "Hays street"
                            },
                            xad3: "Geelong",
                            xad6: "Au"
                        }
                    ]
                }
            }
        ],
        'order: [
            {
                orc: {
                    orc2: {ei1: "23121A"}
                }
            }
        ]
    };
    byte[] encodedORMO01 = check hl7:encode(VERSION, orm_o01);
    string|error encodedMsgStr = string:fromBytes(encodedORMO01);
    if encodedMsgStr is string {
        string[] segmentLines = regexp:split(re `\r`, encodedMsgStr);
        test:assertEquals(segmentLines[1], "PID|1|123456789^^^^SSN|||WAYNE^BRUCE^^^Mr^^D|||f|||Hays street^^Geelong^^^Au||||||||||||||||||||||||||||", "Encoding issue occurred with the message");
    } else {
        test:assertFail("Encoding failed");
    }
}

@test:Config {}
function testInvalidField() {
    hl7:Message|hl7:HL7Error parseResult = hl7:parse(msgWithInvalidField);
    if parseResult is hl7:Message {
        anydata cspSegment = parseResult.get("csp");
        if cspSegment is hl7:Segment[] {
            hl7:Segment csp = cspSegment[0];
            test:assertEquals(csp.entries().length(), 5, "Invalid field is not handled properly");
        } else {
            test:assertFail("Extrating CSP segment failed");
        }
    } else {
        test:assertFail("Parsing failed");
    }
}

