// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

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

// Tests for visit / diagnosis / procedure / allergy / insurance segment mappings
// (PV1, PV2, DG1, PR1, AL1, IN1, IN3) against the HL7 v2-to-FHIR IG mapping spreadsheets.
// Tests annotated with `enable: false` and a `// BUG:` comment document spec deviations
// found in the current implementation; they assert the spec-correct behaviour.

import ballerina/test;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

const VIS_PARTICIPATION_TYPE_SYSTEM = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType";

// ---------------------------------------------------------------------------------------------
// Helpers (prefixed with `vis` to avoid clashes with other test files)
// ---------------------------------------------------------------------------------------------

// Removes required-but-placeholder keys (e.g. Procedure.subject = {}) before checking for empty values.
function visHasEmptyFields(anydata 'resource, string[] ignoreKeys = []) returns boolean {
    json j = 'resource.toJson();
    if j is map<json> {
        map<json> copy = j.clone();
        foreach string k in ignoreKeys {
            if copy.hasKey(k) {
                _ = copy.remove(k);
            }
        }
        return containsEmptyFields(copy);
    }
    return containsEmptyFields(j);
}

function visFirstCoding(r4:CodeableConcept? cc) returns r4:Coding {
    if cc is () {
        return {};
    }
    r4:Coding[] codings = cc.coding ?: [];
    return codings.length() > 0 ? codings[0] : {};
}

function visParticipants(international401:Encounter enc) returns international401:EncounterParticipant[] =>
    enc.participant ?: [];

function visParticipantTypeCode(international401:EncounterParticipant p) returns string? {
    r4:CodeableConcept[] types = p.'type ?: [];
    if types.length() == 0 {
        return ();
    }
    return visFirstCoding(types[0]).code;
}

function visLocations(international401:Encounter enc) returns international401:EncounterLocation[] =>
    enc.location ?: [];

function visFullPv1() returns hl7v23:PV1 => {
    name: "PV1",
    pv11: "1",
    pv12: "I",
    pv13: {pl1: "WARD1", pl2: "101", pl3: "A"},
    pv14: "E",
    pv15: {cx1: "PRE-001", cx4: {hd1: "HOSP"}},
    pv16: {pl1: "ER", pl2: "5"},
    pv17: [{xcn1: "D001", xcn2: "Attend", xcn3: "Aaron"}, {xcn1: "D002", xcn2: "Second", xcn3: "Sam"}],
    pv18: [{xcn1: "R001", xcn2: "Refer", xcn3: "Rita"}],
    pv19: [{xcn1: "C001", xcn2: "Consult", xcn3: "Carl"}],
    pv110: "MED",
    pv111: {pl1: "TEMP1"},
    pv113: "R",
    pv114: "7",
    pv115: ["A2", "B6"],
    pv116: "VIP",
    pv117: [{xcn1: "A001", xcn2: "Admit", xcn3: "Adam"}],
    pv119: {cx1: "V123", cx4: {hd1: "HOSP"}},
    pv136: "home",
    pv137: {cm_dld1: "SNF"},
    pv138: "vegan",
    pv139: "FAC1",
    pv142: {pl1: "PEND1"},
    pv144: {ts1: "20230101083000"},
    pv150: {cx1: "ALT-1"},
    pv152: [{xcn1: "O001", xcn2: "Other", xcn3: "Olga"}]
};

// =============================================================================================
// PV1 -> Encounter
// =============================================================================================

@test:Config {}
function visPv1EncounterPeriodAndFinishedStatusTest() {
    hl7v23:PV1 pv1 = {name: "PV1", pv12: "I", pv144: {ts1: "20230101083000"}, pv145: {ts1: "20230105"}};
    international401:Encounter enc = pv1ToEncounter(pv1);
    r4:Period period = enc.period ?: {};
    test:assertEquals(period.'start, "2023-01-01T08:30:00Z", "PV1-44 -> period.start");
    test:assertEquals(period.end, "2023-01-05", "PV1-45 -> period.end");
    test:assertEquals(enc.status, "finished", "PV1-45 valued -> status finished");
}

@test:Config {}
function visPv1EncounterInProgressStatusTest() {
    foreach string cls in ["E", "I", "O", "R", "B", "C", "N"] {
        international401:Encounter enc = pv1ToEncounter({name: "PV1", pv12: cls});
        test:assertEquals(enc.status, "in-progress", string `PV1-2 ${cls} -> status in-progress`);
        test:assertEquals(enc.period, (), "No PV1-44/45 -> no period");
    }
}

@test:Config {}
function visPv1EncounterStatusConceptMapTest() {
    test:assertEquals(pv1ToEncounter({name: "PV1", pv12: "P"}).status, "planned");
    test:assertEquals(pv1ToEncounter({name: "PV1", pv12: "I"}).status, "in-progress");
}

// PatientClass[EncounterStatus]: U → unknown
@test:Config {}
function visPv1EncounterStatusUnknownTest() {
    test:assertEquals(pv1ToEncounter({name: "PV1", pv12: "U"}).status.toString(), "unknown");
}

@test:Config {}
function visPv1EncounterClassConceptMapTest() {
    map<string> expected = {"E": "EMER", "I": "IMP", "O": "AMB", "P": "PRENC"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        r4:Coding cls = pv1ToEncounter({name: "PV1", pv12: v2}).'class;
        test:assertEquals(cls.code, fhir, string `PV1-2 ${v2} -> class.code`);
        test:assertEquals(cls.system, "http://terminology.hl7.org/CodeSystem/v3-ActCode");
    }
    r4:Coding recurring = pv1ToEncounter({name: "PV1", pv12: "R"}).'class;
    test:assertEquals(recurring.code, "R");
    test:assertEquals(recurring.system, "http://terminology.hl7.org/CodeSystem/v2-0004");
}

@test:Config {}
function visPv1EncounterLocationsTest() {
    international401:Encounter enc = pv1ToEncounter(visFullPv1());
    international401:EncounterLocation[] locs = visLocations(enc);
    test:assertEquals(locs.length(), 4, "PV1-3, PV1-6, PV1-11, PV1-42 -> 4 locations");
    test:assertEquals(locs[0].location.display, "WARD1", "PV1-3 -> location[1]");
    test:assertEquals(locs[1].location.display, "ER", "PV1-6 -> location[2]");
    test:assertEquals(locs[2].location.display, "TEMP1", "PV1-11 -> location[3]");
    test:assertEquals(locs[3].location.display, "PEND1", "PV1-42 -> location[4]");
}

@test:Config {}
function visPv1EncounterLocationStatusTest() {
    international401:EncounterLocation[] locs = visLocations(pv1ToEncounter(visFullPv1()));
    test:assertEquals(locs[0].status, "active");
    test:assertEquals(locs[1].status, "completed");
    test:assertEquals(locs[2].status, "active");
    test:assertEquals(locs[3].status, "reserved");
    international401:EncounterLocation[] planned = visLocations(pv1ToEncounter({name: "PV1", pv12: "P", pv13: {pl1: "W"}}));
    test:assertEquals(planned[0].status, "planned");
}

@test:Config {}
function visPv1EncounterTemporaryLocationExtensionTest() {
    international401:EncounterLocation[] locs = visLocations(pv1ToEncounter({name: "PV1", pv111: {pl1: "TEMP1"}}));
    r4:Extension[] exts = locs[0].extension ?: [];
    test:assertEquals(exts.length(), 1);
    test:assertEquals(exts[0].url, "http://hl7.org/fhir/StructureDefinition/subject-locationClassification");
}

@test:Config {}
function visPv1EncounterAdmissionTypeTest() {
    r4:CodeableConcept[] types = pv1ToEncounter({name: "PV1", pv14: "E"}).'type ?: [];
    r4:Coding c = visFirstCoding(types[0]);
    test:assertEquals(c.code, "E");
    test:assertEquals(c.system, "http://terminology.hl7.org/CodeSystem/v2-0007");
}

@test:Config {}
function visPv1EncounterPreAdmissionIdentifierTest() {
    international401:Encounter enc = pv1ToEncounter(visFullPv1());
    international401:EncounterHospitalization hosp = enc.hospitalization ?: {};
    r4:Identifier preAdmit = hosp.preAdmissionIdentifier ?: {};
    test:assertEquals(preAdmit.value, "PRE-001", "PV1-5.1 -> preAdmissionIdentifier.value");
}

@test:Config {}
function visPv1EncounterIdentifierValuesTest() {
    r4:Identifier[] ids = pv1ToEncounter(visFullPv1()).identifier ?: [];
    test:assertEquals(ids.length(), 2, "PV1-19 and PV1-50 -> two identifiers");
    test:assertEquals(ids[0].value, "V123", "PV1-19 -> identifier[1].value");
    test:assertEquals(ids[1].value, "ALT-1", "PV1-50 -> identifier[2].value");
}

@test:Config {}
function visPv1EncounterVisitNumberTypeTest() {
    r4:Identifier[] ids = pv1ToEncounter(visFullPv1()).identifier ?: [];
    r4:CodeableConcept idType = ids[0].'type ?: {};
    r4:Coding c = visFirstCoding(idType);
    test:assertEquals(c.code, "VN");
    test:assertEquals(c.system, "http://terminology.hl7.org/CodeSystem/v2-0203");
    test:assertEquals(idType.text, "visit number");
}

@test:Config {}
function visPv1EncounterAttendingDoctorTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({name: "PV1", pv17: [{xcn1: "D001", xcn2: "Attend"}]}));
    test:assertEquals(ps.length(), 1);
    test:assertEquals(visParticipantTypeCode(ps[0]), "ATND");
    r4:CodeableConcept[] types = ps[0].'type ?: [];
    test:assertEquals(visFirstCoding(types[0]).system, VIS_PARTICIPATION_TYPE_SYSTEM);
    r4:Reference individual = ps[0].individual ?: {};
    test:assertEquals(individual.reference, "Practitioner/D001");
}

@test:Config {}
function visPv1EncounterAttendingNotDuplicatedTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({name: "PV1", pv17: [{xcn1: "D001"}]}));
    test:assertEquals(ps.length(), 1, "single PV1-7 should give a single participant");
}

@test:Config {}
function visPv1EncounterAllRepetitionsTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({
        name: "PV1",
        pv17: [{xcn1: "D001"}, {xcn1: "D002"}],
        pv18: [{xcn1: "R001"}, {xcn1: "R002"}]
    }));
    test:assertEquals(ps.length(), 4);
}

@test:Config {}
function visPv1EncounterAdmittingDoctorTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({name: "PV1", pv117: [{xcn1: "A001"}]}));
    test:assertEquals(ps.length(), 1);
    test:assertEquals(visParticipantTypeCode(ps[0]), "ADM");
}

@test:Config {}
function visPv1EncounterReferringConsultingTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({
        name: "PV1",
        pv18: [{xcn1: "R001"}],
        pv19: [{xcn1: "C001"}]
    }));
    test:assertEquals(ps.length(), 2);
    test:assertEquals(visParticipantTypeCode(ps[0]), "REF");
    test:assertEquals(visParticipantTypeCode(ps[1]), "CON");
}

@test:Config {}
function visPv1EncounterParticipantIndividualTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({
        name: "PV1",
        pv19: [{xcn1: "C001"}, {xcn1: "C002"}]
    }));
    // PV1-9 repeats are all mapped
    test:assertEquals(ps.length(), 2);
    test:assertEquals((ps[0].individual ?: {}).display, "C001");
    test:assertEquals((ps[1].individual ?: {}).display, "C002");
}

@test:Config {}
function visPv1EncounterOtherProviderCodeTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({
        name: "PV1",
        pv152: [{xcn1: "O001", xcn8: "SRC"}]
    }));
    test:assertEquals(ps.length(), 1);
    test:assertEquals(visParticipantTypeCode(ps[0]), "PART", "PV1-52 -> participant type PART");
}

@test:Config {}
function visPv1EncounterOtherProviderSystemTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv1ToEncounter({name: "PV1", pv152: [{xcn1: "O001"}]}));
    test:assertEquals(visParticipantTypeCode(ps[0]), "PART");
    r4:CodeableConcept[] types = ps[0].'type ?: [];
    test:assertEquals(visFirstCoding(types[0]).system, VIS_PARTICIPATION_TYPE_SYSTEM);
}

@test:Config {}
function visPv1EncounterHospitalServiceTest() {
    r4:Coding c = visFirstCoding(pv1ToEncounter({name: "PV1", pv110: "MED"}).serviceType);
    test:assertEquals(c.code, "382");
    test:assertEquals(c.system, "http://terminology.hl7.org/CodeSystem/service-type");
}

@test:Config {}
function visPv1EncounterHospitalizationTextFieldsTest() {
    international401:EncounterHospitalization hosp = pv1ToEncounter(visFullPv1()).hospitalization ?: {};
    test:assertTrue(hosp.reAdmission != (), "PV1-13 -> reAdmission");
    test:assertTrue(hosp.admitSource != (), "PV1-14 -> admitSource");
    test:assertTrue(hosp.dischargeDisposition != (), "PV1-36 -> dischargeDisposition");
    test:assertTrue(hosp.dietPreference != (), "PV1-38 -> dietPreference");
}

@test:Config {}
function visPv1EncounterHospitalizationCodingTest() {
    international401:EncounterHospitalization hosp = pv1ToEncounter(visFullPv1()).hospitalization ?: {};
    r4:Coding readmit = visFirstCoding(hosp.reAdmission);
    test:assertEquals(readmit.code, "R");
    test:assertEquals(readmit.system, "http://terminology.hl7.org/CodeSystem/v2-0092");
    test:assertEquals(visFirstCoding(hosp.admitSource).code, "7");
    test:assertEquals(visFirstCoding(hosp.dischargeDisposition).code, "home");
    r4:CodeableConcept[] diet = hosp.dietPreference ?: [];
    test:assertEquals(visFirstCoding(diet[0]).code, "vegan");
}

@test:Config {}
function visPv1EncounterAmbulatoryStatusTest() {
    international401:EncounterHospitalization hosp = pv1ToEncounter({name: "PV1", pv115: ["A2", "B6"]}).hospitalization ?: {};
    r4:CodeableConcept[] arr = hosp.specialArrangement ?: [];
    test:assertEquals(arr.length(), 2);
    test:assertEquals(visFirstCoding(arr[0]).code, "wheel");
    test:assertEquals(visFirstCoding(arr[0]).system, "http://terminology.hl7.org/CodeSystem/encounter-special-arrangements");
    test:assertEquals(visFirstCoding(arr[1]).code, "B6");
}

@test:Config {}
function visPv1EncounterSpecialCourtesyTest() {
    international401:EncounterHospitalization hosp = pv1ToEncounter({name: "PV1", pv116: "VIP", pv139: "FAC1"}).hospitalization ?: {};
    r4:CodeableConcept[] courtesy = hosp.specialCourtesy ?: [];
    test:assertEquals(courtesy.length(), 1);
    test:assertEquals(visFirstCoding(courtesy[0]).code, "VIP");
}

@test:Config {}
function visPv1EncounterDestinationTest() {
    international401:EncounterHospitalization hosp = pv1ToEncounter({name: "PV1", pv137: {cm_dld1: "SNF"}}).hospitalization ?: {};
    r4:Reference dest = hosp.destination ?: {};
    test:assertNotEquals(dest.reference, "SNF");
    test:assertTrue(dest != {});
}

@test:Config {}
function visPv1EncounterEmptySegmentTest() {
    international401:Encounter enc = pv1ToEncounter({name: "PV1"});
    test:assertEquals(enc.location, ());
    test:assertEquals(enc.participant, ());
    test:assertEquals(enc.identifier, ());
    test:assertEquals(enc.period, ());
    test:assertEquals(enc.hospitalization, ());
    // 'class is required (1..1) in R4 and stays as a placeholder when PV1-2 is empty
    test:assertFalse(visHasEmptyFields(enc, ["class"]), "Empty PV1 should not produce empty fields");
}

@test:Config {}
function visPv1EncounterEmptyRepeatingFieldsNoPanicTest() {
    international401:Encounter enc = pv1ToEncounter({name: "PV1", pv12: "I", pv17: [], pv18: []});
    test:assertEquals(enc.participant, ());
}

@test:Config {}
function visPv1ParsedMessageToFhirTest() returns error? {
    string adt = "MSH|^~\\&|ADT1|HOSP|LAB|HOSP|200808181126||ADT^A01|MSG1|P|2.3\r" +
        "EVN|A01|200808181123\r" +
        "PID|1||PAT1^^^HOSP^MR||DOE^JOHN||19610615|M\r" +
        "PV1|1|I|W1^101^A||||D001^ATTEND^AARON||||||||||||V123||||||||||||||||||||||||200808181100";
    json result = check v2ToFhir(adt);
    test:assertFalse(result.toJsonString().includes("OperationOutcome"), "PV1 message should transform");
    test:assertTrue(result.toJsonString().includes("\"V123\""), "PV1-19 visit number should be present");
}

// =============================================================================================
// PV1 -> Patient
// =============================================================================================

@test:Config {}
function visPv1PatientEmptyTest() {
    international401:Patient patient = pv1ToPatient({name: "PV1"});
    test:assertEquals(patient.extension, ());
}

@test:Config {}
function visPv1PatientVipExtensionTest() {
    r4:Extension[] exts = pv1ToPatient({name: "PV1", pv116: "VIP"}).extension ?: [];
    test:assertEquals(exts.length(), 1);
    test:assertEquals(exts[0].url, "http://hl7.org/fhir/StructureDefinition/patient-importance");
    r4:Extension ext = exts[0];
    if ext is r4:CodeableConceptExtension {
        test:assertEquals(visFirstCoding(ext.valueCodeableConcept).code, "VIP");
    } else {
        test:assertFail("expected CodeableConcept extension");
    }
}

// =============================================================================================
// PV1 -> Coverage
// =============================================================================================

@test:Config {}
function visPv1CoverageTypeTest() {
    international401:Coverage cov = pv1ToCoverage({name: "PV1", pv120: [{fc1: "SP"}, {fc1: "MC"}]});
    test:assertEquals(visFirstCoding(cov.'type).code, "SP", "PV1-20.1 -> Coverage.type");
}

@test:Config {}
function visPv1CoverageSegmentDispatchTest() returns error? {
    r4:BundleEntry[] withFc = check segmentToFhir("PV1", <hl7v23:PV1>{name: "PV1", pv12: "I", pv120: [{fc1: "SP"}]}, (), ());
    r4:BundleEntry[] withoutFc = check segmentToFhir("PV1", <hl7v23:PV1>{name: "PV1", pv12: "I"}, (), ());
    test:assertEquals(withFc.length(), withoutFc.length() + 1, "Coverage only emitted when PV1-20 valued");
}

@test:Config {}
function visPv1CoverageBeneficiaryTest() {
    international401:Coverage cov = pv1ToCoverage({name: "PV1", pv120: [{fc1: "SP"}]});
    test:assertNotEquals(cov.beneficiary.reference, "Patient");
}

// =============================================================================================
// PV2 -> Encounter
// =============================================================================================

@test:Config {}
function visPv2EncounterMappedFieldsTest() {
    international401:Encounter enc = pv2ToEncounter({
        name: "PV2",
        pv21: {pl1: "PRIOR1"},
        pv23: {ce1: "CHEST", ce2: "Chest pain", ce3: "L"},
        pv211: "5",
        pv222: "Y"
    });
    international401:EncounterLocation[] locs = visLocations(enc);
    test:assertEquals(locs[0].location.display, "PRIOR1", "PV2-1 -> location");
    r4:CodeableConcept[] reasons = enc.reasonCode ?: [];
    test:assertEquals(visFirstCoding(reasons[0]).code, "CHEST", "PV2-3 -> reasonCode");
    test:assertEquals(visFirstCoding(reasons[0]).display, "Chest pain");
    r4:Duration len = enc.length ?: {};
    test:assertEquals(len.value, 5d, "PV2-11 -> length.value");
    r4:Meta meta = enc.meta ?: {};
    r4:Coding[] security = meta.security ?: [];
    test:assertEquals(security.length(), 1, "PV2-22 -> meta.security");
}

@test:Config {}
function visPv2EncounterLengthUnitTest() {
    r4:Duration len = pv2ToEncounter({name: "PV2", pv211: "5"}).length ?: {};
    test:assertEquals(len.unit, "days");
    test:assertEquals(len.system, "http://unitsofmeasure.org");
    test:assertEquals(len.code, "d");
}

@test:Config {}
function visPv2EncounterPriorPendingLocationStatusTest() {
    international401:EncounterLocation[] locs = visLocations(pv2ToEncounter({name: "PV2", pv21: {pl1: "PRIOR1"}}));
    test:assertEquals(locs[0].status, "planned");
}

@test:Config {}
function visPv2EncounterReferralSourceTest() {
    international401:EncounterParticipant[] ps = visParticipants(pv2ToEncounter({name: "PV2", pv213: {xcn1: "R001"}}));
    test:assertEquals(ps[0].id, ());
    test:assertTrue(ps[0].individual != ());
    test:assertEquals(visParticipantTypeCode(ps[0]), "REF");
}

@test:Config {}
function visPv2EncounterPriorityTest() {
    r4:Coding c = visFirstCoding(pv2ToEncounter({name: "PV2", pv225: "1"}).priority);
    test:assertEquals(c.code, "EM");
    test:assertEquals(c.system, "http://terminology.hl7.org/CodeSystem/v3-ActPriority");
}

@test:Config {}
function visPv2EncounterExpectedDatesTest() {
    r4:Extension[] exts = pv2ToEncounter({name: "PV2", pv28: {ts1: "20230101"}, pv29: {ts1: "20230105"}}).extension ?: [];
    test:assertEquals(exts.length(), 2);
}

@test:Config {}
function visPv2EncounterVisitDescriptionTest() {
    r4:Narrative text = pv2ToEncounter({name: "PV2", pv212: "Follow-up visit"}).text ?: {div: "", status: "empty"};
    test:assertTrue(text.div.startsWith("<div"), "text.div must be XHTML");
    test:assertTrue(text.div.includes("Follow-up visit"));
}

@test:Config {}
function visPv2EncounterEmptySegmentTest() returns error? {
    international401:Encounter enc = pv2ToEncounter({name: "PV2"});
    test:assertFalse(visHasEmptyFields(enc, ["class"]));
    r4:BundleEntry[] entries = check segmentToFhir("PV2", <hl7v23:PV2>{name: "PV2"}, (), ());
    test:assertEquals(entries.length(), 0);
}

// =============================================================================================
// DG1 -> Condition / Encounter / EpisodeOfCare
// =============================================================================================

function visFullDg1() returns hl7v23:DG1 => {
    name: "DG1",
    dg11: "1",
    dg12: "I9",
    dg13: {ce1: "I10", ce2: "Essential hypertension", ce3: "I10C"},
    dg14: "Hypertension",
    dg15: {ts1: "20230110"},
    dg16: "A",
    dg115: "1",
    dg116: [{xcn1: "D001", xcn2: "Smith"}, {xcn1: "D002", xcn2: "Jones"}],
    dg119: {ts1: "20230111093000"}
};

@test:Config {}
function visDg1ConditionCodeAndDatesTest() {
    international401:Condition cond = dg1ToCondition(visFullDg1());
    r4:CodeableConcept code = cond.code ?: {};
    test:assertEquals(visFirstCoding(code).code, "I10", "DG1-3.1 -> code.coding.code");
    test:assertEquals(visFirstCoding(code).display, "Essential hypertension");
    test:assertEquals(visFirstCoding(code).system, "http://hl7.org/fhir/sid/icd-10-cm");
    test:assertEquals(code.text, "Hypertension", "DG1-4 -> code.text");
    test:assertEquals(cond.onsetDateTime, "2023-01-10", "DG1-5 -> onsetDateTime");
    test:assertEquals(cond.recordedDate, "2023-01-11T09:30:00Z", "DG1-19 -> recordedDate");
    test:assertTrue(cond.id != (), "Condition id is generated when mapped");
}

@test:Config {}
function visDg1ConditionEmptySegmentFieldsTest() {
    international401:Condition cond = dg1ToCondition({name: "DG1", dg11: "1"});
    test:assertEquals(cond.code, ());
    test:assertEquals(cond.asserter, ());
    test:assertEquals(cond.onsetDateTime, ());
}

@test:Config {}
function visDg1ConditionEmptySegmentTest() {
    international401:Condition cond = dg1ToCondition({name: "DG1", dg11: "1"});
    test:assertEquals(cond.id, ());
}

@test:Config {}
function visDg1ConditionAsserterTest() {
    r4:Reference asserter = dg1ToCondition(visFullDg1()).asserter ?: {};
    test:assertEquals(asserter.reference, "Practitioner/D001");
}

@test:Config {}
function visDg1ConditionAssertedDateExtensionTest() {
    r4:Extension[] exts = dg1ToCondition(visFullDg1()).extension ?: [];
    test:assertEquals(exts.length(), 1);
}

@test:Config {}
function visDg1ConditionDescriptionOnlyTest() {
    r4:CodeableConcept code = dg1ToCondition({name: "DG1", dg14: "Hypertension"}).code ?: {};
    test:assertEquals(code.text, "Hypertension");
}

@test:Config {}
function visDg1EncounterDiagnosisReferenceTest() {
    international401:Encounter enc = dg1ToEncounter(visFullDg1(), "cond-1");
    international401:EncounterDiagnosis[] diags = enc.diagnosis ?: [];
    test:assertEquals(diags.length(), 1);
    test:assertEquals(diags[0].condition.reference, "Condition/cond-1");
    test:assertTrue(diags[0].use != (), "DG1-6 -> diagnosis.use");
    test:assertTrue(enc.id != ());
}

@test:Config {}
function visDg1EncounterWithoutConditionTest() {
    international401:Encounter enc = dg1ToEncounter(visFullDg1(), ());
    test:assertEquals(enc.diagnosis, ());
    test:assertEquals(enc.id, ());
}

@test:Config {}
function visDg1EncounterUseAndRankTest() {
    international401:EncounterDiagnosis[] diags = dg1ToEncounter(visFullDg1(), "cond-1").diagnosis ?: [];
    r4:Coding use = visFirstCoding(diags[0].use);
    test:assertEquals(use.code, "AD");
    test:assertEquals(use.system, "http://terminology.hl7.org/CodeSystem/diagnosis-role");
    test:assertEquals(diags[0].rank, 1);
}

@test:Config {}
function visDg1EpisodeOfCareTest() {
    international401:EpisodeOfCare eoc = dg1ToEpisodeOfCare(visFullDg1(), "cond-1", "pat-1");
    test:assertEquals(eoc.patient.reference, "Patient/pat-1");
    international401:EpisodeOfCareDiagnosis[] diags = eoc.diagnosis ?: [];
    test:assertEquals(diags[0].condition.reference, "Condition/cond-1");
    test:assertTrue(eoc.id != ());
}

@test:Config {}
function visDg1EpisodeOfCareRoleAndRankTest() {
    international401:EpisodeOfCareDiagnosis[] diags = dg1ToEpisodeOfCare(visFullDg1(), "cond-1", "pat-1").diagnosis ?: [];
    test:assertEquals(visFirstCoding(diags[0].role).code, "AD");
    test:assertEquals(diags[0].rank, 1);
}

@test:Config {}
function visDg1SegmentDispatchTest() returns error? {
    r4:BundleEntry[] entries = check segmentToFhir("DG1", visFullDg1(), (), ());
    test:assertEquals(entries.length(), 2, "DG1 -> Condition + Encounter");
    test:assertTrue(entries[0]?.'resource is international401:Condition);
    test:assertTrue(entries[1]?.'resource is international401:Encounter);
}

@test:Config {}
function visDg1SegmentDispatchEmptyNoPanicTest() returns error? {
    r4:BundleEntry[] entries = check segmentToFhir("DG1", <hl7v23:DG1>{name: "DG1", dg11: "1"}, (), ());
    test:assertEquals(entries.length(), 0);
}

// =============================================================================================
// PR1 -> Procedure
// =============================================================================================

@test:Config {}
function visPr1ProcedureFieldsTest() {
    international401:Procedure proc = pr1ToProcedure({
        name: "PR1",
        pr11: "1",
        pr13: {ce1: "0FT44ZZ", ce2: "Resection of gallbladder", ce3: "I10P"},
        pr14: "Cholecystectomy",
        pr15: {ts1: "20230215"},
        pr16: "A",
        pr115: {ce1: "K80.20", ce2: "Gallstones", ce3: "I10"}
    });
    r4:CodeableConcept code = proc.code ?: {};
    test:assertEquals(visFirstCoding(code).code, "0FT44ZZ", "PR1-3 -> code");
    test:assertEquals(visFirstCoding(code).system, "http://www.cms.gov/Medicare/Coding/ICD10");
    test:assertEquals(code.text, "Cholecystectomy", "PR1-4 -> code.text");
    test:assertEquals(proc.performedDateTime, "2023-02-15", "PR1-5 -> performedDateTime");
    test:assertEquals(visFirstCoding(proc.category).code, "A", "PR1-6 -> category");
    r4:CodeableConcept[] reasons = proc.reasonCode ?: [];
    test:assertEquals(visFirstCoding(reasons[0]).code, "K80.20", "PR1-15 -> reasonCode");
    test:assertEquals(proc.status, "unknown");
}

@test:Config {}
function visPr1ProcedurePerformersTest() {
    international401:Procedure proc = pr1ToProcedure({
        name: "PR1",
        pr18: [{xcn1: "AN1", xcn2: "Gas", xcn3: "Ann"}, {xcn1: "AN2"}],
        pr111: [{xcn1: "SU1", xcn2: "Cut", xcn3: "Sam"}],
        pr112: [{xcn1: "PP1"}]
    });
    international401:ProcedurePerformer[] perf = proc.performer ?: [];
    test:assertEquals(perf.length(), 4, "all PR1-8/11/12 repetitions mapped");
    test:assertEquals(perf[0].actor.reference, "Practitioner/AN1");
    test:assertEquals(perf[0].actor.display, "Ann Gas");
    test:assertEquals(visFirstCoding(perf[0].'function).code, "88189002", "PR1-8 -> anesthesiologist");
    test:assertEquals(visFirstCoding(perf[0].'function).system, "http://snomed.info/sct");
    test:assertEquals(perf[1].actor.reference, "Practitioner/AN2");
    test:assertEquals(visFirstCoding(perf[2].'function).code, "304292004", "PR1-11 -> surgeon");
    test:assertEquals(perf[3].actor.reference, "Practitioner/PP1");
    test:assertEquals(perf[3].'function, (), "PR1-12 has no function");
}

@test:Config {}
function visPr1ProcedureEmptySegmentTest() {
    international401:Procedure proc = pr1ToProcedure({name: "PR1", pr11: "1"});
    test:assertEquals(proc.code, ());
    test:assertEquals(proc.performer, ());
    test:assertEquals(proc.reasonCode, ());
    test:assertFalse(visHasEmptyFields(proc, ["subject"]));
}

@test:Config {}
function visPr1ProcedurePerformedPeriodTest() {
    international401:Procedure proc = pr1ToProcedure({name: "PR1", pr15: {ts1: "202302151000"}, pr17: "30"});
    test:assertEquals(proc.performedDateTime, ());
    r4:Period period = proc.performedPeriod ?: {};
    test:assertEquals(period.'start, "2023-02-15T10:00:00Z");
    test:assertEquals(period.end, "2023-02-15T10:30:00Z");
}

// =============================================================================================
// AL1 -> AllergyIntolerance
// =============================================================================================

@test:Config {}
function visAl1AllergyCoreFieldsTest() {
    international401:AllergyIntolerance ai = al1ToAllerygyIntolerance({
        name: "AL1",
        al11: "1",
        al12: "DA",
        al13: {ce1: "70618", ce2: "Penicillin", ce3: "RXNORM"},
        al14: "SV",
        al15: "Hives"
    });
    r4:Coding status = visFirstCoding(ai.clinicalStatus);
    test:assertEquals(status.code, "active");
    test:assertEquals(status.system, "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical");
    test:assertEquals(visFirstCoding(ai.code).code, "70618", "AL1-3 -> code");
    test:assertEquals(visFirstCoding(ai.code).display, "Penicillin");
    test:assertEquals(ai.criticality, "high", "AL1-4 SV -> criticality high");
    international401:AllergyIntoleranceReaction[] reactions = ai.reaction ?: [];
    test:assertEquals(reactions[0].manifestation[0].text, "Hives", "AL1-5 -> reaction.manifestation.text");
}

@test:Config {}
function visAl1CriticalityUnmappedCodesTest() {
    foreach string sev in ["MO", "U", ""] {
        test:assertEquals(al1ToAllerygyIntolerance({name: "AL1", al14: sev}).criticality, (),
                string `AL1-4 ${sev} has no criticality mapping`);
    }
}

@test:Config {}
function visAl1CriticalityLowTest() {
    test:assertEquals(al1ToAllerygyIntolerance({name: "AL1", al14: "MI"}).criticality, "low");
}

@test:Config {}
function visAl1TypeConceptMapTest() {
    foreach string t in ["DA", "FA", "MA", "EA", "AA", "PA", "LA"] {
        test:assertEquals(al1ToAllerygyIntolerance({name: "AL1", al12: t}).'type, "allergy", t);
    }
    test:assertEquals(al1ToAllerygyIntolerance({name: "AL1", al12: "MC"}).'type, ());
    test:assertEquals(al1ToAllerygyIntolerance({name: "AL1"}).'type, ());
}

@test:Config {}
function visAl1CategoryConceptMapTest() {
    map<string> expected = {"DA": "medication", "FA": "food", "EA": "environment", "AA": "biologic",
        "PA": "environment", "LA": "environment"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        international401:AllergyIntoleranceCategory[] cat = al1ToAllerygyIntolerance({name: "AL1", al12: v2}).category ?: [];
        test:assertEquals(cat.length(), 1, v2);
        test:assertEquals(cat[0], fhir, v2);
    }
}

@test:Config {}
function visAl1OnsetDateTest() {
    international401:AllergyIntolerance ai = al1ToAllerygyIntolerance({name: "AL1", al15: "Rash", al16: "20200115"});
    test:assertEquals(ai.onsetDateTime, "2020-01-15");
}

@test:Config {}
function visAl1EmptySegmentTest() {
    international401:AllergyIntolerance ai = al1ToAllerygyIntolerance({name: "AL1", al11: "1"});
    test:assertEquals(ai.reaction, ());
    test:assertFalse(visHasEmptyFields(ai, ["patient"]));
}

// =============================================================================================
// IN1 -> Coverage
// =============================================================================================

function visFullIn1() returns hl7v23:IN1 => {
    name: "IN1",
    in11: "1",
    in12: {ce1: "PLAN-001", ce2: "Gold plan"},
    in14: [{xon1: "Acme Insurance"}, {xon1: "Backup Insurance"}],
    in111: [{xon1: "Employer Inc"}],
    in112: "20230101",
    in113: "20231231",
    in115: "HMO",
    in116: [{xpn1: "DOE", xpn2: "JOHN"}],
    in117: "SEL",
    in149: [{cx1: "MEM-123"}]
};

@test:Config {}
function visIn1CoverageMappedFieldsTest() {
    international401:Coverage cov = in1ToCoverage(visFullIn1());
    r4:Identifier[] ids = cov.identifier ?: [];
    test:assertEquals(ids[0].value, "PLAN-001", "IN1-2 -> identifier");
    test:assertEquals(cov.payor.length(), 2, "IN1-4 all repetitions -> payor");
    test:assertEquals(cov.payor[0].display, "Acme Insurance");
    test:assertEquals(cov.payor[1].display, "Backup Insurance");
    r4:Period period = cov.period ?: {};
    test:assertEquals(period.'start, "2023-01-01", "IN1-12 -> period.start");
    test:assertEquals(period.end, "2023-12-31", "IN1-13 -> period.end");
    test:assertEquals(visFirstCoding(cov.'type).code, "HMO", "IN1-15 -> type");
    test:assertEquals(cov.status, "active");
}

@test:Config {}
function visIn1CoveragePartialPeriodTest() {
    international401:Coverage cov = in1ToCoverage({name: "IN1", in112: "20230101"});
    r4:Period period = cov.period ?: {};
    test:assertEquals(period.'start, "2023-01-01");
    test:assertEquals(period.end, ());
}

@test:Config {}
function visIn1CoverageEmptySegmentTest() {
    international401:Coverage cov = in1ToCoverage({name: "IN1", in11: "1"});
    test:assertEquals(cov.identifier, ());
    test:assertEquals(cov.period, ());
    test:assertEquals(cov.'type, ());
    test:assertEquals(cov.relationship, ());
    test:assertFalse(visHasEmptyFields(cov));
}

@test:Config {}
function visIn1RelationshipConceptMapTest() {
    r4:Coding c = visFirstCoding(in1ToCoverage({name: "IN1", in117: "SEL"}).relationship);
    test:assertEquals(c.code, "ONESELF");
    test:assertEquals(c.system, "http://terminology.hl7.org/CodeSystem/v3-RoleCode");
    test:assertEquals(visFirstCoding(in1ToCoverage({name: "IN1", in117: "SPO"}).relationship).code, "SPS");
}

@test:Config {}
function visIn1SubscriberIdExtensionTest() {
    r4:Extension[] exts = in1ToCoverage(visFullIn1()).extension ?: [];
    test:assertEquals(exts.length(), 1);
    test:assertEquals(exts[0].url, "http://hl7.org/fhir/5.0/StructureDefinition/extension-subscriberId");
}

@test:Config {}
function visIn1PolicyHolderAndSubscriberTest() {
    international401:Coverage cov = in1ToCoverage(visFullIn1());
    test:assertTrue(cov.policyHolder != ());
    test:assertTrue(cov.subscriber != ());
}

// =============================================================================================
// IN3 -> CareTeam
// =============================================================================================

@test:Config {}
function visIn3CareTeamEmptySegmentTest() {
    international401:CareTeam ct = in3ToCareTeam({name: "IN3", in31: "1"});
    test:assertEquals(ct.participant, ());
}

@test:Config {}
function visIn3CareTeamParticipantSystemTest() {
    international401:CareTeam ct = in3ToCareTeam({name: "IN3", in321: "Jane Case"});
    international401:CareTeamParticipant[] ps = ct.participant ?: [];
    test:assertEquals(ps.length(), 1);
    r4:CodeableConcept[] roles = ps[0].role ?: [];
    test:assertEquals(visFirstCoding(roles[0]).system, "http://snomed.info/sct");
}

@test:Config {}
function visIn3CareTeamRoleCodeTest() {
    international401:CareTeamParticipant[] ps = in3ToCareTeam({name: "IN3", in321: "Jane Case"}).participant ?: [];
    r4:CodeableConcept[] roles = ps[0].role ?: [];
    test:assertEquals(visFirstCoding(roles[0]).code, "768832004");
    test:assertEquals(roles[0].text, "case manager");
}
