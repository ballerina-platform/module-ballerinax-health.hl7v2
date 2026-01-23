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
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.3||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

final string msgWithAllSegments = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A0X^ADT_A0X|MSG00001|P|2.3||\rAPR|\rSTF|\rCM1|\rVAR|\rCM0|\rCM2|\rCDM|\rDG1|\rOM1|\rOM3|\rNK1|\rOM2|\rOM5|\rOM4|\rOM6|\rODT|\rAIG|\rNSC|" +
"\rODS|\rEQL|\rLOC|\rFT1|\rAIL|\rAIP|\rAIS|\rNST|\rNCK|\rQAK|\rBLG|\rTXA|\rNTE|\rARQ|\rBTS|\rQRD|\rMRG|\rERR|\rFTS|\rQRF|\rUB2|\rERQ|\rUB1|\rURD|" +
"VTQ|\rRDF|\rURS|\rMSA|\rACC|\rRDT|\rGOL|\rAL1|\rPR1|\rNTE|\rARQ|\rBTS|\rQRD|\rMRG|\rERR|\rFTS|\rQRF|\rUB2|\rERQ|\rUB1|\rURD|\rVTQ|\rRDF|\rURS|\rMSA|" +
"ACC|\rRDT|\rGOL|\rAL1|\rPR1|\rDB1|\rDRG|\rRF1|\rPRA|\rPRC|\rADD|\rPRB|\rPRD|\rLRL|\rSPR|\rDSC|\rAUT|\rDSP|\rPSH|\rIN2|\rIN1|\rLCC|\rROL|\rIN3|\r" +
"LCH|\rRXA|\rPD1|\rRXC|\rPCR|\rRXE|\rRGS|\rRXD|\rRXG|\rORC|\rPTH|\rRXO|\rMFA|\rBHS|\rMFE|\rRXR|\rPDC|\rFHS|\rMFI|\rNPU|\rRQ1|\rLDP|\rOBR|\rCSP|\r" +
"CSS|\rCSR|\rOBX|\rRQD|\rGT1|\rFAC|\rPV2|\rCTD|\rCTI|\rSCH|\rPEO|\rPES|";

final string msgWithInvalidField = "MSH|^~\\&|SENDING_APP|SENDING_FACILITY|RECEIVING_APP|RECEIVING_FACILITY|20230101120000||ADT^A01|MSG000001|P|2.3|\r" +
"EVN|A01|20230101120000||\r" +
"PID|1||123456789|^^^^MR||Doe^John^||19600101|M|||123 Main St^Apt 4B^New York^NY^10001||(555)555-5555||S||123456789|\r" +
"PV1|1|O|^^^OP^||||12345^Smith^John^Dr.||||||||||||||||N|||||||||\r" +
"CSP|1|20230101|20231231|E|XXX|";

@test:Config {}
function testParseHl7Message() {
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
            msh2: "^~\\&",
            msh3: {hd1: "ADT1"},
            msh4: {hd1: "MCM"},
            msh5: {hd1: "LABADT"},
            msh6: {hd1: "MCM"},
            msh8: "SECURITY",
            msh9: {cm_msg1: "QRY", cm_msg2: "A19"},
            msh10: "MSG00001",
            msh11: {pt1: "P"},
            msh12: "2.3"
        },
        qrd: {
            qrd1: {ts1: "20220828104856+0000"},
            qrd2: "R",
            qrd3: "I",
            qrd4: "QueryID01",
            qrd7: {cq1: "5"},
            qrd8: [{xcn1: "1", xcn2: "ADAM", xcn3: "EVERMAN"}],
            qrd9: [{ce1: "VXI"}],
            qrd10: [{ce1: "SIIS"}]
        }
    };
    byte[] encodedQRYA19 = check hl7:encode(VERSION, qry_a19);
    string|error encodedMsgStr = string:fromBytes(encodedQRYA19);
    if encodedMsgStr is string {
        string[] segmentLines = re `\r`.split(encodedMsgStr);
        test:assertEquals(segmentLines[1], "QRD|20220828104856+0000|R|I|QueryID01|||5|1^ADAM^EVERMAN|VXI|SIIS|||", "Encoding issue occurred with the message");
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
            msh9: {cm_msg1: "ORM", cm_msg2: "O01"},
            msh10: "301",
            msh11: {pt1: "T"},
            msh12: "2.3"
        },
        patient: 
            {
                pid: {
                    pid1: "1",
                    pid2: {cx1: "123456789", cx5: "SSN"},
                    pid5: [{xpn1: "WAYNE", xpn2: "BRUCE", xpn7: "D", xpn5: "Mr"}],
                    pid8: "f",
                    pid11: [{xad1: "Hays street", xad3: "Geelong", xad6: "Au"}]

                }
            },
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
        string[] segmentLines = re `\r`.split(encodedMsgStr);
        test:assertEquals(segmentLines[1], "PID|1|123456789^^^^SSN|||WAYNE^BRUCE^^^Mr^^D|||f|||Hays street^^Geelong^^^Au||||||||||||||||||||", "Encoding issue occurred with the message");
    } else {
        test:assertFail("Encoding failed");
    }
}

@test:Config {}
function testNonExistantMsgWithAllSegments() {
    hl7:Message|error parseResult = hl7:parse(msgWithAllSegments);
    test:assertTrue(parseResult is error, "No such record: ADT_A0X");
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

@test:Config {}
function testSegmentGroupsParsing() returns error? {
    string[] segmentsArr = [
        string `MSH|^~\&|SENDING_APPLICATION|SENDING_FACILITY|RECEIVING_APPLICATION|RECEIVING_FACITILITY|20240718115723||ORM^O01|12345|P|2.3||||AL||8859/1`,
        string `PV1|1||2039^Room 3^Bed 4^IMW||||||||||||||||||||||||||||||||||||9876^InternalMedicalWard|||||||||||1.2345.777.888`,
        string `PV2|1|||||||||||||||||1011|`,
        string `PID|1|040404-0404^^^^SSN|||Lastname^Givenname^Middlename`,
        string `ORC|NW|20240718-1^FOO|||||^^^^^A||202407181157|||030303-0303^Smith^John^^^^^^^^^^SSN~987654^Smith^John^^^^^^^^^^SV`,
        string `OBR|1|20240718-1^FOO||4520^P-INR^LAB-KL-98|||202407201257||||L||info to sample taking||||||||||||||^^^^^A|||PORT`,
        string `NTE|1||Additional info to laboratory|`
    ];

    string hl7MsgStr = string:'join("\r", ...segmentsArr);
    hl7:Message parsedMsg = check hl7:parse(hl7MsgStr);
    ORM_O01 inOrm = check parsedMsg.ensureType(ORM_O01);
    test:assertTrue(inOrm.'order[0].orm_o01_order_detail?.orm_o01_order_detail_segment?.obr?.obr1 == "1", "Segment groups parsing failed");
    test:assertTrue(inOrm.patient?.orm_o01_patient_visit?.pv1?.pv11 == "1", "Segment groups parsing failed");
}

@test:Config {}
function testNestedSegmentGroupsParsing() returns error? {
    final string oruMsg = "MSH|^~\\&|MESA_RPT_MGR|EAST_RADIOLOGY|iFW|XYZ|20010501141500||ORU^R01|MESA3b|P|2.3"+
"\rPID|||CR3^^^ADT1||CRTHREE^PAUL|||||||||||||PatientAcct"+
"\rPV1||1|CE||||12345^SMITH^BARON^H|||||||||||"+
"\rOBR|||||||20010501141500||||||||||||||||||F||||||||||||||||||"+
"\rOBX|1|HD|SR Instance UID||1.113654.1.2001.30.2.1||||||F||||||"+
"\rOBX|2|TX|SR Text||Radiology Report History: Cough. Findings: PA evaluation of the chest demonstrates the lungs to be expanded and clear. Conclusions: Normal PA chest x-ray.|||||FCTI|study1|^1|^10_EP1" + 
"\rNTE|1||For patients >49 years of age, the reference limit";

    hl7:Message parsedMsg = check hl7:parse(oruMsg);
    ORU_R01 inOru = check parsedMsg.ensureType(ORU_R01);
    test:assertTrue(inOru.patient_result[0].oru_r01_order_observation[0].obr.obr7.ts1 == "20010501141500", "ORU_R01 message parsing failed");
    test:assertTrue(inOru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation[0].obx?.obx1 == "1", "ORU_R01 message parsing failed");
    
    // Verify there are 2 observations (OBX|1 and OBX|2)
    test:assertTrue(inOru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation.length() >= 2, "Should have at least 2 observations");
    
    // Verify varies type field (OBX.5) is correctly parsed
    OBX? obx1 = inOru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation[0].obx;
    if obx1 is OBX {
        test:assertTrue(obx1.obx5.length() > 0, "OBX.5 (varies array) should have at least one element");
        if obx1.obx5.length() > 0 {
            varies obx5First = obx1.obx5[0];
            anydata? obx5Value = obx5First?.value;
            test:assertTrue(obx5Value is string, "OBX.5[0].value should be a string");
            if obx5Value is string {
                test:assertEquals(obx5Value, "1.113654.1.2001.30.2.1", "OBX.5[0].value should be '1.113654.1.2001.30.2.1'");
            }
        }
    }
    
    // Verify varies type field for second OBX (OBX|2)
    OBX? obx2 = inOru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation[1].obx;
    if obx2 is OBX {
        test:assertTrue(obx2.obx5.length() > 0, "OBX.5 (varies array) should have at least one element for OBX|2");
        if obx2.obx5.length() > 0 {
            varies obx5Second = obx2.obx5[0];
            anydata? obx5Value2 = obx5Second?.value;
            test:assertTrue(obx5Value2 is string, "OBX.5[0].value should be a string for OBX|2");
            if obx5Value2 is string {
                test:assertTrue(obx5Value2.startsWith("Radiology Report History"), 
                    "OBX.5[0].value for OBX|2 should start with 'Radiology Report History'");
            }
        }
    }
    
    // Check that NTE is NOT in the first observation (OBX|1)
    NTE[]? nteArrayFirst = inOru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation[0].nte;
    if nteArrayFirst is NTE[] {
        test:assertTrue(nteArrayFirst.length() == 0 || (nteArrayFirst.length() == 1 && nteArrayFirst[0].isEmtpy), 
            "NTE should NOT be in the first observation group (OBX|1)");
    }
    
    // Check NTE segment in the second observation group (OBX|2) - verify it's in the correct nested location
    NTE[]? nteArray = inOru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation[1].nte;
    test:assertTrue(nteArray is NTE[], "NTE array should exist in the second observation group");
    if nteArray is NTE[] {
        test:assertTrue(nteArray.length() > 0, "NTE array should have at least one element in the second observation");
        // Get the last segment in the array (the parsed one, not the default empty one)
        NTE nte = nteArray[nteArray.length() - 1];
        // Verify NTE segment exists in the nested observation group that contains OBX|2
        // This verifies that nested segment groups are working correctly for NTE segments
        test:assertEquals(nte.name, "NTE", "NTE segment name should be 'NTE'");
        
        // Verify NTE segment field values
        // Expected: NTE|1||For patients >49 years of age, the reference limit
        // nte1 = "1", nte2 = "", nte3[0] = "For patients >49 years of age, the reference limit"
        test:assertEquals(nte.nte1, "1", "NTE Set ID (nte1) should be '1'");
        test:assertEquals(nte.nte2, "", "NTE Source of Comment (nte2) should be empty");
        test:assertTrue(nte.nte3.length() > 0, "NTE Comment (nte3) array should have at least one element");
        if nte.nte3.length() > 0 {
            test:assertEquals(nte.nte3[0], "For patients >49 years of age, the reference limit", 
                "NTE Comment (nte3[0]) should match the expected text");
        }
    }
    
    // Verify NTE is NOT at the ORDER_OBSERVATION level
    NTE[]? nteArrayOrder = inOru.patient_result[0].oru_r01_order_observation[0].nte;
    if nteArrayOrder is NTE[] {
        test:assertTrue(nteArrayOrder.length() == 0 || (nteArrayOrder.length() == 1 && nteArrayOrder[0].isEmtpy), 
            "NTE should NOT be at the ORDER_OBSERVATION level");
    }
    
    // Verify NTE is NOT at the PATIENT level
    NTE[]? nteArrayPatient = inOru.patient_result[0].oru_r01_patient?.nte;
    if nteArrayPatient is NTE[] {
        test:assertTrue(nteArrayPatient.length() == 0 || (nteArrayPatient.length() == 1 && nteArrayPatient[0].isEmtpy), 
            "NTE should NOT be at the PATIENT level - it should be in the observation group");
    }
}


