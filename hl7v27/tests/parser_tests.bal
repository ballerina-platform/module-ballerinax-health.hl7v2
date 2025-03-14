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

final string msg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.7||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

final string msgWithAllSegments = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A0X^ADT_A0X|MSG00001|P|2.7||\rEVN|A01|200708181123||\r" +
"SCP|\rAPR|\rQPD|\rSTF|\rCM1|\rVAR|\rCM0|\rCM2|\rIPR|\rCDM|\rDG1|\rOM1|\rSDD|\rOM3|\rNK1|\rOM2|\rOM5|\rOM4|\r" +
"OM7|\rSTZ|\rOM6|\rSLT|\rODT|\rAIG|\rNSC|\rODS|\rLOC|\rFT1|\rAIL|\rEQP|\rAIP|\rEQU|\rAIS|\rIIM|\rQID|\rNST|\r" +
"CER|\rIAM|\rUAC|\rNCK|\rBLC|\rQAK|\rIAR|\rBLG|\rTXA|\rNTE|\rRCP|\rARQ|\rBTS|\rQRD|\rMRG|\rERR|\rFTS|\rQRF|\r" +
"UB2|\rZL7|\rARV|\rUB1|\rURD|\rBTX|\rCNS|\rHxx|\rQRI|\rOVR|\rABS|\rTQ2|\rRDF|\rTQ1|\rURS|\rMSA|\rISD|\rNDS|\r" +
"PYE|\rSFT|\rACC|\rCON|\rMSH|\rRDT|\rGOL|\rAL1|\rECD|\rGP2|\rGP1|\rPID|\rPR1|\rRMI|\rDB1|\rPAC|\rECR|\rDRG|\r" +
"LAN|\rREL|\rRF1|\rPRA|\rPRC|\rADD|\rPRB|\rITM|\rPRD|\rADJ|\rLRL|\rVND|\rILT|\rSPM|\rPRT|\rRFI|\rDSC|\rEDU|\r" +
"SHP|\rAUT|\rDSP|\rPSH|\rPSG|\rPSL|\rIN2|\rIN1|\rLCC|\rPKG|\rROL|\rIN3|\rSID|\rLCH|\rPSS|\rPCE|\rSAC|\rTCD|\r" +
"TCC|\rIVC|\rRXA|\rEVN|\rPD1|\rRXC|\rPCR|\rRXE|\rRGS|\rRXD|\rBPO|\rRXG|\rAFF|\rORC|\rORG|\rPTH|\rIVT|\rRXO|\r" +
"MFA|\rBPX|\rBHS|\rPDA|\rMFE|\rRXR|\rPDC|\rFHS|\rINV|\rMFI|\rNPU|\rRQ1|\rLDP|\rZxx|\rOBR|\rCSP|\rDMI|\rCSS|\r" +
"CSR|\rOBX|\rRQD|\rGT1|\rFAC|\rPV1|\rPV2|\rCTD|\rSCD|\rPMT|\rCTI|\rSCH|\rPEO|\rIPC|\rPES|";

final string msgWithInvalidField = "MSH|^~\\&|SENDING_APP|SENDING_FACILITY|RECEIVING_APP|RECEIVING_FACILITY|20230101120000||ADT^A01|MSG000001|P|2.7|\r" +
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
    ORU_R01 oru_r01 = {
        msh: {
            msh3: {hd1: "ADT1"},
            msh4: {hd1: "MCM"},
            msh5: {hd1: "LABADT"},
            msh6: {hd1: "MCM"},
            msh8: "SECURITY",
            msh9: {msg1: "ORU", msg2: "R01"},
            msh10: "MSG00001",
            msh11: {pt1: "P"},
            msh12: {
                vid1: "2.7"
            }
        }
    };
    byte[] encodedQRYA19 = check hl7:encode(VERSION, oru_r01);
    test:assertEquals(encodedQRYA19[0], hl7:HL7_MSG_START_BLOCK, "HL7 Message start block is not correct");
}

@test:Config {}
function testEncodeHl7MessageWithSegmentArrays() returns error? {
    ORU_R01 orm_o01 = {
        msh: {
            msh1: "|",
            msh2: "^~\\&",
            msh7: "20231130080250.98+0530",
            msh9: {msg1: "ORU", msg2: "R01"},
            msh10: "301",
            msh11: {pt1: "T"},
            msh12: {vid1: "2.7"}
        },
        patient_result: [
            {
                oru_r01_patient: {
                    pid: {
                        pid1: "1",
                        pid5: [{xpn1: {fn1: "WAYNE"}, xpn2: "BRUCE", xpn7: "D", xpn5: "Mr"}],
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
            }
            ]
    };
    byte[] encodedORMO01 = check hl7:encode(VERSION, orm_o01);
    string|error encodedMsgStr = string:fromBytes(encodedORMO01);
    if encodedMsgStr is string {
        string[] segmentLines = re `\r`.split(encodedMsgStr);
        test:assertEquals(segmentLines[1], "PID|1||||WAYNE^BRUCE^^^Mr^D||||||Hays street^^Geelong^^^Au||||||||||||||||||||||||||||||", "Encoding issue occurred with the message");
    } else {
        test:assertFail("Encoding failed");
    }
}

@test:Config {}
function testNonExistantMsgWithAllSegments() {
    hl7:Message|hl7:HL7Error parseResult = hl7:parse(msgWithAllSegments);
    test:assertTrue(parseResult is hl7:HL7Error, "Undefined messages are not handled properly");
}

@test:Config {}
function testInvalidField() {
    hl7:Message|hl7:HL7Error parseResult = hl7:parse(msgWithInvalidField);
    if parseResult is hl7:Message {
        anydata cspSegment = parseResult.get("csp");
        if cspSegment is hl7:Segment[] {
            hl7:Segment csp = cspSegment[0];
            test:assertEquals(csp.entries().length(), 6, "Invalid field is not handled properly");
        } else {
            test:assertFail("Extrating CSP segment failed");
        }
    } else {
        test:assertFail("Parsing failed");
    }
}

