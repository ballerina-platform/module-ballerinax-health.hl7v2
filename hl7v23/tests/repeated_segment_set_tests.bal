// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

// Messages with two ungrouped patient sets (ADT_A17 / ADT_A24 / ADT_A37): the second set must not overwrite
// the first; it is parsed into the `<segment>_2` fields.

import ballerina/test;
import ballerinax/health.hl7v2 as hl7;

final string adtA17Msg = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A17|MSG00003|P|2.3\r" +
    "EVN|A17|200801011200\r" +
    "PID|1||PAT1^^^ADT1^MR||FIRST^ONE\r" +
    "PV1|1|I|2000^2012^01\r" +
    "OBX|1|ST|HT^HEIGHT||180\r" +
    "OBX|2|ST|WT^WEIGHT||80\r" +
    "PID|2||PAT2^^^ADT1^MR||SECOND^TWO\r" +
    "PV1|1|I|3000^3012^02\r" +
    "OBX|1|ST|HT^HEIGHT||165";

@test:Config {}
function testAdtA17TwoPatientSets() returns error? {
    hl7:Message parsed = check hl7:parse(adtA17Msg);
    ADT_A17 a17 = check parsed.ensureType();
    test:assertEquals(a17.pid.pid3[0].cx1, "PAT1", "first PID stays in pid");
    test:assertEquals(a17.pv1.pv13.pl1, "2000", "first PV1 stays in pv1");
    test:assertEquals(a17.obx.length(), 2, "both OBX of the first set stay in obx");
    PID? second = a17.pid_2;
    test:assertTrue(second is PID, "second PID is parsed into pid_2");
    if second is PID {
        test:assertEquals(second.pid3[0].cx1, "PAT2");
    }
    test:assertEquals(a17.pv1_2?.pv13?.pl1, "3000", "second PV1 is parsed into pv1_2");
    OBX[] secondObx = a17.obx_2 ?: [];
    test:assertEquals(secondObx.length(), 1, "OBX of the second set is parsed into obx_2");
}

@test:Config {}
function testAdtA24TwoPatientSets() returns error? {
    string a24 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A24|MSG00004|P|2.3\r" +
        "EVN|A24|200801011200\r" +
        "PID|1||PAT1^^^ADT1^MR||FIRST^ONE\r" +
        "PID|2||PAT2^^^ADT1^MR||SECOND^TWO";
    ADT_A24 parsed = check (check hl7:parse(a24)).ensureType();
    test:assertEquals(parsed.pid.pid3[0].cx1, "PAT1");
    PID? second = parsed.pid_2;
    test:assertTrue(second is PID, "second PID is parsed into pid_2");
    if second is PID {
        test:assertEquals(second.pid3[0].cx1, "PAT2");
    }
}

@test:Config {}
function testAdtA17EncodeKeepsSetOrder() returns error? {
    hl7:Message parsed = check hl7:parse(adtA17Msg);
    string encoded = check string:fromBytes(check hl7:encode(VERSION, parsed));
    test:assertTrue(encoded.includes("PAT1") && encoded.includes("PAT2"), "both patient sets are encoded");
    int? firstPat = encoded.indexOf("PAT1");
    int? secondPat = encoded.indexOf("PAT2");
    test:assertTrue(firstPat is int && secondPat is int && firstPat < secondPat, "sets are encoded in order");
}

@test:Config {}
function testAdtA37TwoPatientSets() returns error? {
    string a37 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A37|MSG00005|P|2.3\r" +
        "EVN|A37|200801011200\r" +
        "PID|1||PAT1^^^ADT1^MR||FIRST^ONE\r" +
        "PD1|||GHH CLINIC\r" +
        "PV1|1|I|2000^2012^01\r" +
        "PID|2||PAT2^^^ADT1^MR||SECOND^TWO\r" +
        "PV1|1|O|3000^3012^02";
    ADT_A37 parsed = check (check hl7:parse(a37)).ensureType();
    test:assertEquals(parsed.pid.pid3[0].cx1, "PAT1", "first PID stays in pid");
    test:assertTrue(parsed.pd1 is PD1, "PD1 of the first set stays in pd1");
    test:assertEquals(parsed.pv1?.pv13?.pl1, "2000", "first PV1 stays in pv1");
    PID? second = parsed.pid_2;
    test:assertTrue(second is PID, "second PID is parsed into pid_2");
    if second is PID {
        test:assertEquals(second.pid3[0].cx1, "PAT2");
    }
    test:assertEquals(parsed.pv1_2?.pv13?.pl1, "3000", "second PV1 is parsed into pv1_2");
}
