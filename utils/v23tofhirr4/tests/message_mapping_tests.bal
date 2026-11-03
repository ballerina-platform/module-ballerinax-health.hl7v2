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

// =============================================================================
// Message-level mapping tests (HL7 v2.3 message -> FHIR R4 Bundle)
// Spec: v2-to-fhir IG message maps (mappings/messages/*.csv).
// Tests assert the SPEC-CORRECT behaviour. Tests that currently fail because of
// an implementation defect are disabled and annotated with `// BUG:`.
// =============================================================================

import ballerina/test;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

// -----------------------------------------------------------------------------
// Sample messages
// -----------------------------------------------------------------------------

final string msgAdtA01Full = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A01|MSG00001|P|2.3\r" +
    "EVN|A01|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M|||2222 HOME STREET^^GREENSBORO^NC^27401\r" +
    "PD1|||||||Y\r" +
    "NK1|1|NUCLEAR^NELDA|SPO^SPOUSE\r" +
    "NK1|2|NUCLEAR^JOHN|EMR^EMERGENCY\r" +
    "NK1|3|NUCLEAR^SUE|CHD^CHILD\r" +
    "PV1|1|I|2000^2012^01||||004777^ATTEND^AARON|||SUR||||ADM|A0|||||A1\r" +
    "PV2|||^ABDOMINAL PAIN\r" +
    "OBX|1|NM|8302-2^Height^LN||180|cm|||||F\r" +
    "OBX|2|NM|29463-7^Weight^LN||80|kg|||||F\r" +
    "AL1|1|DA|1605^ACETAMINOPHEN|SV|RASH\r" +
    "AL1|2|FA|NUTS^PEANUT|MO|HIVES\r" +
    "DG1|1|I9|786.50^CHEST PAIN^I9|CHEST PAIN||A\r" +
    "DG1|2|I9|401.9^HYPERTENSION^I9|HTN||A\r" +
    "PR1|1|C4|99213^OFFICE VISIT^C4|VISIT|200801011200\r" +
    "PR1|2|C4|99214^FOLLOW UP^C4|FOLLOWUP|200801021200\r" +
    "IN1|1|PLAN01^PLAN|INS01^^^^XX|BLUE CROSS\r" +
    "IN3|1|CERT01\r" +
    "IN1|2|PLAN02^PLAN|INS02^^^^XX|AETNA";

final string msgAdtA01Minimal = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A01|MSG00002|P|2.3\r" +
    "EVN|A01|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "PV1|1|I|2000^2012^01";

final string msgAdtA01WithOperator = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A01|MSG00009|P|2.3\r" +
    "EVN|A01|200801011200|||OPER1^SMITH^JOHN\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "PV1|1|I|2000^2012^01";

final string msgAdtA01WithPv2 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A01|MSG00010|P|2.3\r" +
    "EVN|A01|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "PV1|1|I|2000^2012^01\r" +
    "PV2|||^ABDOMINAL PAIN";

final string msgAdtA02 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A02|MSG00011|P|2.3\r" +
    "EVN|A02|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "PV1|1|I|3000^3012^01\r" +
    "OBX|1|NM|8302-2^Height^LN||180|cm\r" +
    "OBX|2|NM|29463-7^Weight^LN||80|kg";

final string msgAdtA05 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A05|MSG00012|P|2.3\r" +
    "EVN|A05|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "NK1|1|NUCLEAR^NELDA|SPO^SPOUSE\r" +
    "NK1|2|NUCLEAR^JOHN|EMR^EMERGENCY\r" +
    "PV1|1|P|2000^2012^01\r" +
    "AL1|1|DA|1605^ACETAMINOPHEN|SV|RASH\r" +
    "AL1|2|FA|NUTS^PEANUT|MO|HIVES\r" +
    "DG1|1|I9|786.50^CHEST PAIN^I9|CHEST PAIN||A\r" +
    "PR1|1|C4|99213^OFFICE VISIT^C4|VISIT|200801011200";

final string msgAdtA06 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A06|MSG00013|P|2.3\r" +
    "EVN|A06|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "MRG|OLD1^^^ADT1^MR||ACCT9\r" +
    "NK1|1|NUCLEAR^NELDA|SPO^SPOUSE\r" +
    "PV1|1|I|2000^2012^01\r" +
    "DG1|1|I9|786.50^CHEST PAIN^I9|CHEST PAIN||A";

final string msgAdtA09 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A09|MSG00014|P|2.3\r" +
    "EVN|A09|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "PV1|1|I|2000^2012^01\r" +
    "OBX|1|NM|8302-2^Height^LN||180|cm\r" +
    "OBX|2|NM|29463-7^Weight^LN||80|kg\r" +
    "DG1|1|I9|786.50^CHEST PAIN^I9|CHEST PAIN||A";

final string msgAdtA11 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A11|MSG00015|P|2.3\r" +
    "EVN|A11|200801011200\r" +
    "PID|1||PATID1234^^^ADT1^MR||EVERYMAN^ADAM^A||19610615|M\r" +
    "PV1|1|I|2000^2012^01\r" +
    "DG1|1|I9|786.50^CHEST PAIN^I9|CHEST PAIN||A\r" +
    "DG1|2|I9|401.9^HYPERTENSION^I9|HTN||A";

final string msgAdtA17 = "MSH|^~\\&|ADT1|GHH|LAB|GHH|200801011200||ADT^A17|MSG00003|P|2.3\r" +
    "EVN|A17|200801011200\r" +
    "PID|1||P1^^^ADT1^MR||ONE^PAT\r" +
    "PV1|1|I|W1^R1^B1\r" +
    "OBX|1|NM|8302-2^Height^LN||180|cm\r" +
    "PID|2||P2^^^ADT1^MR||TWO^PAT\r" +
    "PV1|1|I|W2^R2^B2\r" +
    "OBX|1|NM|8302-2^Height^LN||170|cm";

final string msgMdmT02 = "MSH|^~\\&|DOC|GHH|EHR|GHH|200801011200||MDM^T02|MSG00008|P|2.3\r" +
    "EVN|T02|200801011200\r" +
    "PID|1||P1^^^DOC^MR||DOE^JOHN\r" +
    "PV1|1|O|CLINIC\r" +
    "TXA|1|DS|TX|200801011200|||||||DOC1|||||AU\r" +
    "OBX|1|TX|DS^Discharge^L||Patient discharged in good condition";

final string msgMdmT02Edited = "MSH|^~\\&|DOC|GHH|EHR|GHH|200801011200||MDM^T02|MSG00016|P|2.3\r" +
    "EVN|T02|200801011200\r" +
    "PID|1||P1^^^DOC^MR||DOE^JOHN\r" +
    "PV1|1|O|CLINIC\r" +
    "TXA|1|DS|TX|200801011200||||200801021200|||DOC1|||||AU\r" +
    "OBX|1|TX|DS^Discharge^L||Patient discharged in good condition";

final string msgOrmO01 = "MSH|^~\\&|EHR|GHH|LAB|GHH|200801011200||ORM^O01|MSG00005|P|2.3\r" +
    "PID|1||P1^^^EHR^MR||DOE^JANE||19800101|F\r" +
    "PV1|1|O|CLINIC\r" +
    "ORC|NW|PL1\r" +
    "OBR|1|PL1||CBC^COMPLETE BLOOD COUNT^L\r" +
    "DG1|1|I9|786.50^CHEST PAIN^I9\r" +
    "ORC|NW|PL2\r" +
    "OBR|2|PL2||BMP^BASIC METABOLIC^L";

final string msgOrmO01NoPatient = "MSH|^~\\&|EHR|GHH|LAB|GHH|200801011200||ORM^O01|MSG00017|P|2.3\r" +
    "ORC|NW|PL1\r" +
    "OBR|1|PL1||CBC^COMPLETE BLOOD COUNT^L";

final string msgOruR01 = "MSH|^~\\&|LAB|GHH|EHR|GHH|200801011200||ORU^R01|MSG00004|P|2.3\r" +
    "PID|1||P1^^^LAB^MR||DOE^JOHN||19700101|M\r" +
    "PV1|1|O|CLINIC\r" +
    "ORC|RE|PL1|FL1\r" +
    "OBR|1|PL1|FL1|CBC^COMPLETE BLOOD COUNT^L|||200801011000\r" +
    "OBX|1|NM|WBC^WBC^L||7.5|10*3/uL|||||F\r" +
    "OBX|2|NM|RBC^RBC^L||4.5|10*6/uL|||||F\r" +
    "OBR|2|PL2|FL2|BMP^BASIC METABOLIC^L|||200801011000\r" +
    "OBX|1|NM|NA^SODIUM^L||140|mmol/L|||||F";

final string msgSiuS12 = "MSH|^~\\&|SCHED|GHH|EHR|GHH|200801011200||SIU^S12|MSG00007|P|2.3\r" +
    "SCH|APT1|APT1F|||||ROUTINE^ROUTINE|NORMAL|30|MIN|^^30^200801021000^200801021030|||||D1^DOC^ONE||||||||Booked\r" +
    "NTE|1||Bring records\r" +
    "PID|1||P1^^^SCHED^MR||DOE^JOHN\r" +
    "PV1|1|O|CLINIC\r" +
    "RGS|1|A\r" +
    "AIS|1|A|CONSULT^Consultation\r" +
    "AIL|1|A|CLINIC^RM1\r" +
    "AIP|1|A|D1^DOC^ONE|ATT";

final string msgVxuV04 = "MSH|^~\\&|EHR|GHH|IIS|GHH|200801011200||VXU^V04|MSG00006|P|2.3\r" +
    "PID|1||P1^^^EHR^MR||KID^BABY||20200101|F\r" +
    "NK1|1|KID^MOM|MTH^MOTHER\r" +
    "ORC|RE||IZ1\r" +
    "RXA|0|1|20210101|20210101|08^HEPB^CVX|0.5|mL\r" +
    "RXR|IM^INTRAMUSCULAR|LA^LEFT ARM\r" +
    "OBX|1|CE|64994-7^ELIG^LN||V02^VFC^HL70064\r" +
    "ORC|RE||IZ2\r" +
    "RXA|0|1|20210201|20210201|20^DTAP^CVX|0.5|mL";

final string msgOmlO21 = "MSH|^~\\&|EHR|GHH|LAB|GHH|200801011200||OML^O21|MSG00018|P|2.3\r" +
    "PID|1||P1^^^EHR^MR||DOE^JANE\r" +
    "ORC|NW|PL1\r" +
    "OBR|1|PL1||CBC^COMPLETE BLOOD COUNT^L";

// -----------------------------------------------------------------------------
// Helpers
// -----------------------------------------------------------------------------

function msgEntries(json bundle) returns json[] {
    if bundle is map<json> {
        json e = bundle["entry"];
        if e is json[] {
            return e;
        }
    }
    return [];
}

function msgTransform(string message) returns json[]|error {
    json bundle = check v2ToFhir(message);
    return msgEntries(bundle);
}

function msgResource(json entry) returns map<json> {
    if entry is map<json> {
        json r = entry["resource"];
        if r is map<json> {
            return r;
        }
    }
    return {};
}

function msgOfType(json[] entries, string resourceType) returns map<json>[] {
    map<json>[] out = [];
    foreach json e in entries {
        map<json> r = msgResource(e);
        if r["resourceType"] == resourceType {
            out.push(r);
        }
    }
    return out;
}

function msgCount(json[] entries, string resourceType) returns int => msgOfType(entries, resourceType).length();

function msgTypes(json[] entries) returns string[] {
    string[] out = [];
    foreach json e in entries {
        out.push(msgResource(e)["resourceType"].toString());
    }
    return out;
}

// First coding.code of a CodeableConcept field (default `code`).
function msgFirstCode(map<json> r, string 'field = "code") returns string {
    json cc = r['field];
    if cc is map<json> {
        json coding = cc["coding"];
        if coding is json[] && coding.length() > 0 {
            json c = coding[0];
            if c is map<json> {
                json v = c["code"];
                if v is string {
                    return v;
                }
            }
        }
    }
    return "";
}

function msgCountWithCode(json[] entries, string resourceType, string code, string 'field = "code") returns int {
    int n = 0;
    foreach map<json> r in msgOfType(entries, resourceType) {
        if msgFirstCode(r, 'field) == code {
            n += 1;
        }
    }
    return n;
}

// Resolves a Reference against bundle entries (by fullUrl or ResourceType/id).
function msgResolve(json[] entries, json ref) returns map<json>? {
    if ref !is map<json> {
        return ();
    }
    json refStr = ref["reference"];
    if refStr !is string || refStr == "" {
        return ();
    }
    foreach json e in entries {
        map<json> r = msgResource(e);
        if e is map<json> && e["fullUrl"] == refStr {
            return r;
        }
        json id = r["id"];
        if id is string && id != "" && string `${r["resourceType"].toString()}/${id}` == refStr {
            return r;
        }
    }
    return ();
}

function msgRefsOf(map<json> r, string 'field) returns json[] {
    json v = r['field];
    if v is json[] {
        return v;
    }
    if v is () {
        return [];
    }
    return [v];
}

// True if every resource of srcType has a non-empty `field` reference that resolves to targetType.
function msgAllRefTo(json[] entries, string srcType, string 'field, string targetType) returns boolean {
    map<json>[] srcs = msgOfType(entries, srcType);
    if srcs.length() == 0 {
        return false;
    }
    foreach map<json> s in srcs {
        json[] refs = msgRefsOf(s, 'field);
        if refs.length() == 0 {
            return false;
        }
        foreach json ref in refs {
            map<json>? target = msgResolve(entries, ref);
            if target is () || target["resourceType"] != targetType {
                return false;
            }
        }
    }
    return true;
}

// Number of `field` references on `src` that resolve to targetType.
function msgResolvedRefCount(json[] entries, map<json> src, string 'field, string targetType) returns int {
    int n = 0;
    foreach json ref in msgRefsOf(src, 'field) {
        json target = ref;
        if ref is map<json> && ref["condition"] is map<json> {
            target = ref["condition"]; // Encounter.diagnosis.condition
        }
        map<json>? resolved = msgResolve(entries, target);
        if resolved is map<json> && resolved["resourceType"] == targetType {
            n += 1;
        }
    }
    return n;
}

// =============================================================================
// Dispatch / end-to-end
// =============================================================================

@test:Config {}
function msgDispatchUsesTypedAdtA01MapperTest() returns error? {
    json[] viaString = check msgTransform(msgAdtA01Full);
    hl7:Message parsed = check stringToHl7(msgAdtA01Full);
    hl7v23:ADT_A01 typed = check parsed.ensureType(hl7v23:ADT_A01);
    json[] viaTyped = msgEntries((check adtA01ToBundle(typed)).toJson());
    test:assertEquals(msgTypes(viaString), msgTypes(viaTyped),
        "v2ToFhir(string) should dispatch ADT_A01 to adtA01ToBundle");
}

@test:Config {}
function msgDispatchUsesTypedVxuV04MapperTest() returns error? {
    json[] viaString = check msgTransform(msgVxuV04);
    hl7:Message parsed = check stringToHl7(msgVxuV04);
    json[] viaTyped = msgEntries((check vxuV04ToBundle(check parsed.ensureType(hl7v23:VXU_V04))).toJson());
    test:assertEquals(msgTypes(viaString), msgTypes(viaTyped),
        "v2ToFhir(string) should dispatch VXU_V04 to vxuV04ToBundle");
}

@test:Config {}
function msgMessageHeaderIsFirstEntryTest() returns error? {
    foreach string m in [msgAdtA01Full, msgAdtA02, msgAdtA05, msgAdtA06, msgAdtA09, msgAdtA11, msgAdtA17,
            msgMdmT02, msgOrmO01, msgOruR01, msgSiuS12, msgVxuV04] {
        json[] entries = check msgTransform(m);
        test:assertTrue(entries.length() > 0, "Bundle must not be empty");
        test:assertEquals(msgResource(entries[0])["resourceType"], "MessageHeader",
            "MessageHeader (MSH[MessageHeader]) must be the first entry");
        test:assertEquals(msgCount(entries, "MessageHeader"), 1, "Exactly one MessageHeader expected");
    }
}

@test:Config {}
function msgBundleTypeIsMessageTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA01Minimal);
    test:assertEquals(check bundle.'type, "message", "MSH[Bundle] maps Bundle.type to 'message'");
}

@test:Config {}
function msgEntriesHaveFullUrlAndRequestTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA01Minimal);
    foreach json e in msgEntries(bundle) {
        map<json> entry = <map<json>>e;
        test:assertTrue(entry["fullUrl"] is string, "Each entry should have a fullUrl");
        if (check bundle.'type) == "transaction" {
            json req = entry["request"];
            test:assertTrue(req is map<json> && req["method"] is string && req["url"] is string,
                "Transaction entries require request.method and request.url");
        }
    }
}

// OML_O21 does not exist in HL7 v2.3 (introduced in v2.4), so its message map is not applicable;
// this verifies a v2.3 OML message is not mapped as if it were a supported order message.
@test:Config {}
function msgOmlO21NotApplicableToV23Test() {
    json|error result = v2ToFhir(msgOmlO21);
    if result is json {
        test:assertNotEquals(msgCount(msgEntries(result), "ServiceRequest"), 1,
            "OML_O21 is not a v2.3 message; no typed mapping is expected");
    }
}

// =============================================================================
// ADT_A01
// =============================================================================

@test:Config {}
function msgAdtA01RepeatedSegmentsAndGroupsTest() returns error? {
    json[] entries = check msgTransform(msgAdtA01Full);
    // OBX x2 + PD1-7 living will
    test:assertEquals(msgCountWithCode(entries, "Observation", "8302-2"), 1, "OBX 1 -> Observation");
    test:assertEquals(msgCountWithCode(entries, "Observation", "29463-7"), 1, "OBX 2 -> Observation");
    test:assertEquals(msgCountWithCode(entries, "Observation", "75320-2"), 1,
        "PD1-7 valued -> Observation (living will)");
    test:assertEquals(msgCount(entries, "AllergyIntolerance"), 2, "AL1 x2 -> AllergyIntolerance x2");
    test:assertEquals(msgCount(entries, "Condition"), 2, "DG1 x2 -> Condition x2");
    test:assertEquals(msgCount(entries, "Procedure"), 2, "PROCEDURE x2 -> Procedure x2");
    // PV1-20 valued -> Coverage, + IN1 x2 -> Coverage x2
    test:assertEquals(msgCount(entries, "Coverage"), 3, "PV1-20 + INSURANCE x2 -> Coverage x3");
}

@test:Config {}
function msgAdtA01Nk1RelationshipConditionTest() returns error? {
    json[] entries = check msgTransform(msgAdtA01Full);
    map<json>[] related = msgOfType(entries, "RelatedPerson");
    // NK1-3 = EMR must not produce a RelatedPerson (ADT_A01 Sort Order 15.1)
    test:assertEquals(related.length(), 2, "Only NK1 with NK1-3.1 NOT IN (EMR,E,F,I,S) -> RelatedPerson");
    foreach map<json> r in related {
        test:assertNotEquals(msgFirstCode(r, "relationship"), "EMR");
    }
}

@test:Config {}
function msgAdtA01ProvenanceOperatorConditionTest() returns error? {
    // EVN-5 not valued and MSH-4 valued -> EVN Provenance + MSH[Provenance-Operator]
    json[] withoutOperator = check msgTransform(msgAdtA01Minimal);
    test:assertEquals(msgEventProvenanceCount(withoutOperator), 2,
        "EVN-5 empty + MSH-4 valued -> MSH[Provenance-Operator] in addition to EVN[Provenance]");
    // EVN-5 valued -> no MSH[Provenance-Operator]
    json[] withOperator = check msgTransform(msgAdtA01WithOperator);
    test:assertEquals(msgEventProvenanceCount(withOperator), 1, "EVN-5 valued -> only EVN[Provenance]");
}

@test:Config {}
function msgAdtA01OptionalSegmentsAbsentTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA01Minimal);
    json[] entries = msgEntries(bundle);
    foreach string t in ["RelatedPerson", "Coverage", "AllergyIntolerance", "Condition", "Procedure",
            "Observation", "CareTeam", "Account"] {
        test:assertEquals(msgCount(entries, t), 0, string `No ${t} expected when source segment absent`);
    }
    test:assertFalse(containsEmptyFields(bundle), "Minimal ADT_A01 bundle must not contain empty values");
}

@test:Config {}
function msgAdtA01SinglePatientTest() returns error? {
    json[] entries = check msgTransform(msgAdtA01Full);
    test:assertEquals(msgCount(entries, "Patient"), 1, "PID/PD1/NK1/PV1 all map into Patient[1]");
}

@test:Config {}
function msgAdtA01Pv2MergedIntoEncounterTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA01WithPv2);
    json[] entries = msgEntries(bundle);
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV2 is incorporated into Encounter[1]");
    test:assertFalse(containsEmptyFields(bundle), "PV2 must not introduce empty values");
}

@test:Config {}
function msgAdtA01PatientReferencesResolveTest() returns error? {
    json[] entries = check msgTransform(msgAdtA01Full);
    test:assertTrue(msgAllRefTo(entries, "Encounter", "subject", "Patient"), "Encounter.subject -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "Observation", "subject", "Patient"), "Observation.subject -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "AllergyIntolerance", "patient", "Patient"),
        "AllergyIntolerance.patient -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "Condition", "subject", "Patient"), "Condition.subject -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "Procedure", "subject", "Patient"), "Procedure.subject -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "RelatedPerson", "patient", "Patient"),
        "RelatedPerson.patient -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "Coverage", "beneficiary", "Patient"), "Coverage.beneficiary -> Patient[1]");
}

@test:Config {}
function msgAdtA01ProvenanceTargetsMessageHeaderTest() returns error? {
    json[] entries = check msgTransform(msgAdtA01Full);
    map<json>[] eventProvenances = msgOfType(entries, "Provenance").filter(p => msgIsEventProvenance(p));
    test:assertTrue(eventProvenances.length() > 0);
    foreach map<json> p in eventProvenances {
        test:assertEquals(msgResolvedRefCount(entries, p, "target", "MessageHeader"), 1,
            "Provenance[3].target -> MessageHeader[1]");
    }
}

@test:Config {}
function msgAdtA01DiagnosisLinkedToEncounterTest() returns error? {
    json[] entries = check msgTransform(msgAdtA01Full);
    int linked = 0;
    foreach map<json> enc in msgOfType(entries, "Encounter") {
        linked += msgResolvedRefCount(entries, enc, "diagnosis", "Condition");
    }
    test:assertEquals(linked, 2, "Encounter[1].diagnosis -> Condition for each DG1");
    test:assertEquals(msgCount(entries, "EpisodeOfCare"), 2, "DG1[EpisodeOfCare] for each DG1");
}

@test:Config {}
function msgAdtA01GenericPathProcessesGroupsTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA01Full, customMapper = {});
    json[] entries = msgEntries(bundle);
    test:assertEquals(msgCount(entries, "Procedure"), 2, "PROCEDURE x2 -> Procedure x2 in generic path");
    test:assertEquals(msgCount(entries, "Coverage"), 3, "PV1-20 + INSURANCE x2 -> Coverage x3 in generic path");
}

@test:Config {}
function msgAdtA01EmptyFinancialClassNoPanicTest() {
    hl7v23:ADT_A01 message = {
        msh: {msh9: {cm_msg1: "ADT", cm_msg2: "A01"}},
        evn: {},
        pid: {pid5: [{xpn1: "DOE"}]},
        pv1: {pv12: "I", pv120: []}
    };
    var result = trap adtA01ToBundle(message);
    test:assertFalse(result is error, "Empty PV1-20 must not crash the mapper");
}

// =============================================================================
// ADT_A02
// =============================================================================

@test:Config {}
function msgAdtA02ResourcesTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA02);
    json[] entries = msgEntries(bundle);
    test:assertTrue(msgCount(entries, "Patient") >= 1, "PID -> Patient");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV1 -> Encounter");
    test:assertEquals(msgCount(entries, "Observation"), 2, "OBX x2 -> Observation x2");
    foreach string t in ["RelatedPerson", "Coverage", "AllergyIntolerance", "Condition", "Procedure"] {
        test:assertEquals(msgCount(entries, t), 0, string `ADT_A02 must not produce ${t}`);
    }
}

// =============================================================================
// ADT_A05
// =============================================================================

@test:Config {}
function msgAdtA05ResourcesTest() returns error? {
    json[] entries = check msgTransform(msgAdtA05);
    // ADT_A05 Sort Order 15.1: NK1[RelatedPerson] is unconditional (no NK1-3 filter in A05)
    test:assertEquals(msgCount(entries, "RelatedPerson"), 2, "NK1 x2 -> RelatedPerson x2");
    test:assertEquals(msgCount(entries, "AllergyIntolerance"), 2, "AL1 x2 -> AllergyIntolerance x2");
    test:assertEquals(msgCount(entries, "Condition"), 1, "DG1 -> Condition");
    test:assertEquals(msgCount(entries, "Procedure"), 1, "PR1 -> Procedure");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV1 -> Encounter");
}

// =============================================================================
// ADT_A06
// =============================================================================

@test:Config {}
function msgAdtA06MrgAccountTest() returns error? {
    json[] entries = check msgTransform(msgAdtA06);
    test:assertEquals(msgCount(entries, "Account"), 1, "MRG -> Account[2]");
    test:assertEquals(msgCount(entries, "RelatedPerson"), 1, "NK1 -> RelatedPerson");
    test:assertEquals(msgCount(entries, "Condition"), 1, "DG1 -> Condition");
}

@test:Config {}
function msgAdtA06AccountSubjectTest() returns error? {
    json[] entries = check msgTransform(msgAdtA06);
    test:assertTrue(msgAllRefTo(entries, "Account", "subject", "Patient"), "Account[2].subject -> Patient[1]");
}

// =============================================================================
// ADT_A09
// =============================================================================

@test:Config {}
function msgAdtA09ResourcesTest() returns error? {
    json[] entries = check msgTransform(msgAdtA09);
    test:assertEquals(msgCount(entries, "Observation"), 2, "OBX x2 -> Observation x2");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV1 -> Encounter");
}

@test:Config {}
function msgAdtA09NoConditionTest() returns error? {
    json[] entries = check msgTransform(msgAdtA09);
    test:assertEquals(msgCount(entries, "Condition"), 0, "ADT_A09 spec does not map DG1");
}

// =============================================================================
// ADT_A11
// =============================================================================

@test:Config {}
function msgAdtA11RepeatedDg1Test() returns error? {
    json[] entries = check msgTransform(msgAdtA11);
    test:assertEquals(msgCount(entries, "Condition"), 2, "DG1 x2 -> Condition x2");
    test:assertEquals(msgCountWithCode(entries, "Condition", "786.50"), 1);
    test:assertEquals(msgCountWithCode(entries, "Condition", "401.9"), 1);
}

// =============================================================================
// ADT_A17 (swap patients: two PID/PV1 sets)
// =============================================================================

@test:Config {}
function msgAdtA17ObservationsTest() returns error? {
    json[] entries = check msgTransform(msgAdtA17);
    test:assertEquals(msgCount(entries, "Observation"), 2, "OBX of both patients -> Observation x2");
}

// BUG (upstream, hl7v23 package): hl7v23:ADT_A17 declares a single pid/pv1 field, so the parser keeps only the
// second PID/PV1 set and adtA17ToBundle cannot emit Patient[1..2] / Encounter[1..2] (spec Sort Order 6-8, 13-15).
@test:Config {enable: false}
function msgAdtA17TwoPatientsTest() returns error? {
    json[] entries = check msgTransform(msgAdtA17);
    test:assertEquals(msgCount(entries, "Patient"), 2, "Two PID segments -> Patient[1] and Patient[2]");
    test:assertEquals(msgCount(entries, "Encounter"), 2, "Two PV1 segments -> Encounter[1] and Encounter[2]");
}

// =============================================================================
// MDM_T02
// =============================================================================

@test:Config {}
function msgMdmT02ResourcesTest() returns error? {
    json[] entries = check msgTransform(msgMdmT02);
    test:assertEquals(msgCount(entries, "DocumentReference"), 1, "TXA -> DocumentReference");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV1 -> Encounter");
    test:assertEquals(msgEventProvenanceCount(entries), 1, "EVN -> Provenance; TXA-8 empty -> no TXA Provenance");
}

@test:Config {}
function msgMdmT02Txa8ProvenanceConditionTest() returns error? {
    json[] entries = check msgTransform(msgMdmT02Edited);
    test:assertEquals(msgEventProvenanceCount(entries), 2, "TXA-8 valued -> TXA[Provenance] in addition to EVN");
}

@test:Config {}
function msgMdmT02ObxToDocumentReferenceTest() returns error? {
    json[] entries = check msgTransform(msgMdmT02);
    test:assertEquals(msgCount(entries, "Observation"), 0, "OBX content belongs in DocumentReference");
    test:assertTrue(msgAllRefTo(entries, "DocumentReference", "subject", "Patient"),
        "DocumentReference.subject -> Patient[1]");
}

// =============================================================================
// ORM_O01
// =============================================================================

@test:Config {}
function msgOrmO01RepeatedOrdersTest() returns error? {
    json[] entries = check msgTransform(msgOrmO01);
    int placerPl1 = 0;
    int placerPl2 = 0;
    foreach map<json> sr in msgOfType(entries, "ServiceRequest") {
        string s = sr.toJsonString();
        if s.includes("\"PL1\"") {
            placerPl1 += 1;
        }
        if s.includes("\"PL2\"") {
            placerPl2 += 1;
        }
    }
    test:assertTrue(placerPl1 >= 1 && placerPl2 >= 1, "Each ORDER group -> ServiceRequest");
    test:assertEquals(msgCountWithCode(entries, "ServiceRequest", "CBC"), 1, "OBR (order 1) -> ServiceRequest");
    test:assertEquals(msgCountWithCode(entries, "ServiceRequest", "BMP"), 1, "OBR (order 2) -> ServiceRequest");
    test:assertEquals(msgCountWithCode(entries, "Condition", "786.50"), 1, "DG1 -> Condition");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PATIENT_VISIT.PV1 -> Encounter");
}

@test:Config {}
function msgOrmO01OneServiceRequestPerOrderTest() returns error? {
    json[] entries = check msgTransform(msgOrmO01);
    test:assertEquals(msgCount(entries, "ServiceRequest"), 2, "One ServiceRequest per ORDER group");
}

@test:Config {}
function msgOrmO01NoEmptyResourcesTest() returns error? {
    json[] entries = check msgTransform(msgOrmO01);
    test:assertEquals(msgCount(entries, "AllergyIntolerance"), 0, "No AL1 -> no AllergyIntolerance");
    test:assertEquals(msgCount(entries, "Observation"), 0, "No OBX/NTE -> no Observation");
    test:assertEquals(msgCount(entries, "Condition"), 1, "Only one DG1 -> one Condition");
}

@test:Config {}
function msgOrmO01ReferencesTest() returns error? {
    json[] entries = check msgTransform(msgOrmO01);
    test:assertTrue(msgAllRefTo(entries, "ServiceRequest", "subject", "Patient"), "ServiceRequest.subject -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "Condition", "subject", "Patient"), "Condition.subject -> Patient[1]");
    int reasons = 0;
    foreach map<json> sr in msgOfType(entries, "ServiceRequest") {
        reasons += msgResolvedRefCount(entries, sr, "reasonReference", "Condition");
    }
    test:assertEquals(reasons, 1, "ServiceRequest[1].reasonReference -> Condition (DG1)");
}

// SPEC GAP: ORM_O01 Sort Order 4.2.1.1 maps OBR → SupplyRequest IF PID NOT VALUED, but the IG has no
// OBR[SupplyRequest] segment map to implement; such orders currently produce no request resource.
@test:Config {enable: false}
function msgOrmO01NoPatientSupplyRequestTest() returns error? {
    json[] entries = check msgTransform(msgOrmO01NoPatient);
    test:assertEquals(msgCount(entries, "SupplyRequest"), 1, "OBR without PID -> SupplyRequest");
}

// =============================================================================
// ORU_R01
// =============================================================================

@test:Config {}
function msgOruR01ParsesPatientResultGroupsTest() returns error? {
    hl7:Message parsed = check stringToHl7(msgOruR01);
    hl7v23:ORU_R01 oru = check parsed.ensureType(hl7v23:ORU_R01);
    test:assertEquals(oru.patient_result.length(), 1, "PATIENT_RESULT group is a typed field in v2.3");
    test:assertEquals(oru.patient_result[0].oru_r01_order_observation.length(), 2, "Two ORDER_OBSERVATION groups");
    json[] entries = check msgTransform(msgOruR01);
    test:assertEquals(msgResource(entries[0])["resourceType"], "MessageHeader");
}

@test:Config {}
function msgOruR01EndToEndTest() returns error? {
    json[] entries = check msgTransform(msgOruR01);
    test:assertEquals(msgCount(entries, "Patient"), 1, "PID -> Patient");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV1 -> Encounter");
    test:assertEquals(msgCount(entries, "DiagnosticReport"), 2, "OBR x2 -> DiagnosticReport x2");
    test:assertEquals(msgCount(entries, "Observation"), 3, "OBX x3 -> Observation x3");
    test:assertTrue(msgCount(entries, "ServiceRequest") >= 1, "ORC -> ServiceRequest");
}

@test:Config {}
function msgOruR01ResultReferencesTest() returns error? {
    hl7:Message parsed = check stringToHl7(msgOruR01);
    json[] entries = msgEntries((check oruR01ToBundle(check parsed.ensureType(hl7v23:ORU_R01))).toJson());
    map<json>[] reports = msgOfType(entries, "DiagnosticReport");
    test:assertEquals(reports.length(), 2, "OBR x2 -> DiagnosticReport x2");
    test:assertEquals(msgResolvedRefCount(entries, reports[0], "result", "Observation"), 2,
        "DiagnosticReport[1].result -> 2 Observations");
    test:assertEquals(msgResolvedRefCount(entries, reports[1], "result", "Observation"), 1,
        "DiagnosticReport[2].result -> 1 Observation");
    test:assertTrue(msgAllRefTo(entries, "DiagnosticReport", "subject", "Patient"), "DiagnosticReport.subject -> Patient");
    test:assertTrue(msgAllRefTo(entries, "Observation", "subject", "Patient"), "Observation.subject -> Patient");
}

// =============================================================================
// SIU_S12
// =============================================================================

@test:Config {}
function msgSiuS12ResourcesTest() returns error? {
    json[] entries = check msgTransform(msgSiuS12);
    int fromSch = 0;
    foreach map<json> a in msgOfType(entries, "Appointment") {
        if a["minutesDuration"] == 30 {
            fromSch += 1;
        }
    }
    test:assertEquals(fromSch, 1, "SCH -> Appointment[1]");
    test:assertEquals(msgCount(entries, "Patient"), 1, "PID -> Patient");
    test:assertEquals(msgCount(entries, "Encounter"), 1, "PV1 -> Encounter");
}

@test:Config {}
function msgSiuS12SingleAppointmentTest() returns error? {
    json[] entries = check msgTransform(msgSiuS12);
    test:assertEquals(msgCount(entries, "Appointment"), 1, "SCH/AIS/AIL/AIP -> Appointment[1]");
}

@test:Config {}
function msgSiuS12NoteIsAppointmentCommentTest() returns error? {
    json[] entries = check msgTransform(msgSiuS12);
    test:assertEquals(msgCount(entries, "Observation"), 0, "NTE -> Appointment.comment, not Observation");
    boolean hasComment = false;
    foreach map<json> a in msgOfType(entries, "Appointment") {
        if a["comment"] is string {
            hasComment = true;
        }
    }
    test:assertTrue(hasComment, "Appointment.comment should hold NTE text");
}

@test:Config {}
function msgSiuS12PatientParticipantTest() returns error? {
    json[] entries = check msgTransform(msgSiuS12);
    int patientActors = 0;
    foreach map<json> a in msgOfType(entries, "Appointment") {
        foreach json p in msgRefsOf(a, "participant") {
            if p is map<json> {
                map<json>? actor = msgResolve(entries, p["actor"]);
                if actor is map<json> && actor["resourceType"] == "Patient" {
                    patientActors += 1;
                }
            }
        }
    }
    test:assertTrue(patientActors >= 1, "Appointment.participant.actor -> Patient[1]");
}

// =============================================================================
// VXU_V04
// =============================================================================

@test:Config {}
function msgVxuV04RepeatedOrdersTest() returns error? {
    json[] entries = check msgTransform(msgVxuV04);
    test:assertEquals(msgCountWithCode(entries, "Immunization", "08", "vaccineCode"), 1, "RXA (order 1) -> Immunization");
    test:assertEquals(msgCountWithCode(entries, "Immunization", "20", "vaccineCode"), 1, "RXA (order 2) -> Immunization");
    test:assertEquals(msgCount(entries, "RelatedPerson"), 1, "NK1 -> RelatedPerson");
    test:assertEquals(msgCountWithCode(entries, "Observation", "64994-7"), 1, "ORDER.OBSERVATION.OBX -> Observation");
}

@test:Config {}
function msgVxuV04OneImmunizationPerOrderTest() returns error? {
    json[] entries = check msgTransform(msgVxuV04);
    test:assertEquals(msgCount(entries, "Immunization"), 2, "One Immunization per ORDER group");
    test:assertEquals(msgCount(entries, "MedicationRequest"), 0, "VXU_V04 spec does not map RXR -> MedicationRequest");
}

@test:Config {}
function msgVxuV04ObservationLinkageTest() returns error? {
    json[] entries = check msgTransform(msgVxuV04);
    test:assertEquals(msgCount(entries, "Observation"), 1, "Only the OBX -> Observation");
    test:assertTrue(msgAllRefTo(entries, "Observation", "subject", "Patient"), "Observation.subject -> Patient[1]");
    test:assertTrue(msgAllRefTo(entries, "Observation", "partOf", "Immunization"),
        "Observation.partOf -> Immunization[1]");
    test:assertTrue(msgAllRefTo(entries, "Immunization", "patient", "Patient"), "Immunization.patient -> Patient[1]");
}

// EVN/operator/TXA Provenances only (excludes MSH[Provenance-Source] and MSH[Provenance-Transformation])
function msgIsEventProvenance(map<json> p) returns boolean =>
    !p.toJsonString().includes("v2-fhir-transformation") && !p.toJsonString().includes("\"message - ");

function msgEventProvenanceCount(json[] entries) returns int =>
    msgOfType(entries, "Provenance").filter(p => msgIsEventProvenance(p)).length();

@test:Config {}
function msgAdtA01SourceAndTransformationProvenanceTest() returns error? {
    json bundle = check v2ToFhir(msgAdtA01Full);
    json[] entries = msgEntries(bundle);
    map<json>[] provs = msgOfType(entries, "Provenance");
    test:assertEquals(provs.filter(p => p.toJsonString().includes("v2-fhir-transformation")).length(), 1,
        "MSH[Provenance-Transformation]");
    test:assertEquals(provs.filter(p => p.toJsonString().includes("\"message - ")).length(), 1,
        "MSH[Provenance-Source] (MSH-4 valued)");
    string bundleId = check bundle.id;
    foreach map<json> p in provs.filter(p => !msgIsEventProvenance(p)) {
        test:assertTrue(p.toJsonString().includes("Bundle/" + bundleId), "Source/Transformation target Bundle");
    }
}
