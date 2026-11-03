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

// Unit tests for the order / result / document segment mappings:
// OBR -> DiagnosticReport / ServiceRequest, OBX -> Observation, ORC -> DiagnosticReport /
// Immunization / ServiceRequest, NTE -> Observation, TXA -> DocumentReference / Provenance.
//
// Expected values follow the HL7 v2-to-FHIR IG mapping spreadsheets. Tests annotated with
// `enable: false` and a `// BUG:` comment document spec deviations in the current implementation.

import ballerina/test;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

const ORD_V2_0203 = "http://terminology.hl7.org/CodeSystem/v2-0203";

// ---------------------------------------------------------------------------------------------
// Helpers (prefixed to avoid clashes with other test files in this module)
// ---------------------------------------------------------------------------------------------

function ordFirstCoding(r4:CodeableConcept? cc) returns r4:Coding {
    if cc is () {
        return {};
    }
    r4:Coding[] codings = cc.coding ?: [];
    return codings.length() > 0 ? codings[0] : {};
}

function ordIdentifierTypeCode(r4:Identifier id) returns string? {
    return ordFirstCoding(id.'type).code;
}

function ordIdentifierTypeSystem(r4:Identifier id) returns string? {
    return ordFirstCoding(id.'type).system;
}

function ordHasEmptyFields(anydata fhirResource) returns boolean {
    return containsEmptyFields(fhirResource.toJson());
}

function ordObx(string valueType, string[] values, string status = "F") returns hl7v23:OBX {
    hl7v23:varies[] obx5 = from string v in values
        select {value: v};
    return {
        name: "OBX",
        obx1: "1",
        obx2: valueType,
        obx3: {ce1: "718-7", ce2: "Hemoglobin", ce3: "LN"},
        obx5: obx5,
        obx11: status
    };
}

// ---------------------------------------------------------------------------------------------
// OBX -> Observation  (OBX[Observation], OBX[Observation-Component])
// ---------------------------------------------------------------------------------------------

@test:Config {}
function ordObxCodeEffectiveAndMethodTest() {
    hl7v23:OBX obx = ordObx("NM", ["13.5"]);
    obx.obx14 = {ts1: "20230901110000"};
    obx.obx17 = [{ce1: "MTH-1", ce2: "Automated count", ce3: "L"}];
    international401:Observation obs = obxToObservation(obx);

    r4:Coding code = ordFirstCoding(obs.code);
    test:assertEquals(code.code, "718-7", "OBX-3.1 -> code.coding.code");
    test:assertEquals(code.display, "Hemoglobin", "OBX-3.2 -> code.coding.display");
    test:assertEquals(code.system, "http://loinc.org", "OBX-3.3 -> code.coding.system");
    test:assertEquals(obs.effectiveDateTime, "2023-09-01T11:00:00Z", "OBX-14 -> effectiveDateTime");
    r4:Coding method = ordFirstCoding(obs.method);
    test:assertEquals(method.code, "MTH-1", "OBX-17 -> method");
    test:assertEquals(method.display, "Automated count", "OBX-17.2 -> method.display");
}

@test:Config {}
function ordObxCodeAlternateCodingTest() {
    hl7v23:OBX obx = ordObx("ST", ["x"]);
    obx.obx3 = {ce1: "718-7", ce2: "Hemoglobin", ce3: "LN", ce4: "HGB", ce5: "Hgb local", ce6: "L"};
    international401:Observation obs = obxToObservation(obx);
    r4:Coding[] codings = obs.code.coding ?: [];
    test:assertEquals(codings.length(), 2, "OBX-3 primary and alternate triplets -> 2 codings");
    test:assertEquals(codings[1].code, "HGB", "OBX-3.4 -> second coding code");
    test:assertEquals(codings[1].system, "L", "OBX-3.6 -> second coding system");
}

@test:Config {}
function ordObxEffectiveDatePrecisionTest() {
    hl7v23:OBX obx = ordObx("ST", ["x"]);
    obx.obx14 = {ts1: "20230901"};
    test:assertEquals(obxToObservation(obx).effectiveDateTime, "2023-09-01", "OBX-14 date-only precision");
    obx.obx14 = {ts1: "202309"};
    test:assertEquals(obxToObservation(obx).effectiveDateTime, "2023-09", "OBX-14 year-month precision");
}

@test:Config {}
function ordObxEffectiveTimezoneTest() {
    hl7v23:OBX obx = ordObx("ST", ["x"]);
    obx.obx14 = {ts1: "20230901110000-0500"};
    test:assertEquals(obxToObservation(obx).effectiveDateTime, "2023-09-01T11:00:00-05:00",
        "OBX-14 offset must be preserved");
}

@test:Config {}
function ordObxNoEffectiveWhenEmptyTest() {
    international401:Observation obs = obxToObservation(ordObx("ST", ["x"]));
    test:assertEquals(obs.effectiveDateTime, (), "No OBX-14 -> no effectiveDateTime");
    test:assertEquals(obs.method, (), "No OBX-17 -> no method");
}

@test:Config {}
function ordObxNumericValueQuantityTest() {
    hl7v23:OBX obx = ordObx("NM", ["13.5"]);
    obx.obx6 = {ce1: "g/dL", ce2: "grams per deciliter", ce3: "http://unitsofmeasure.org"};
    international401:Observation obs = obxToObservation(obx);
    r4:Quantity? q = obs.valueQuantity;
    test:assertTrue(q is r4:Quantity, "OBX-2=NM -> valueQuantity");
    if q is r4:Quantity {
        test:assertEquals(q.value, 13.5d, "OBX-5 -> valueQuantity.value");
        test:assertEquals(q.unit, "grams per deciliter", "OBX-6.2 -> valueQuantity.unit");
        test:assertEquals(q.code, "g/dL", "OBX-6.1 -> valueQuantity.code");
        test:assertEquals(q.system, "http://unitsofmeasure.org", "OBX-6.3 -> valueQuantity.system");
    }
    test:assertEquals(obs.valueString, (), "NM must not produce valueString");
}

@test:Config {}
function ordObxStringValueTest() {
    test:assertEquals(obxToObservation(ordObx("ST", ["Positive"])).valueString, "Positive", "ST -> valueString");
    test:assertEquals(obxToObservation(ordObx("TX", ["Free text"])).valueString, "Free text", "TX -> valueString");
    test:assertEquals(obxToObservation(ordObx("FT", ["Formatted"])).valueString, "Formatted", "FT -> valueString");
}

@test:Config {}
function ordObxCodedValueTest() {
    international401:Observation obs = obxToObservation(ordObx("CE", ["260373001^Detected^SCT"]));
    r4:Coding c = ordFirstCoding(obs.valueCodeableConcept);
    test:assertEquals(c.code, "260373001", "OBX-5.1 -> valueCodeableConcept.coding.code");
    test:assertEquals(c.display, "Detected", "OBX-5.2 -> valueCodeableConcept.coding.display");
    test:assertEquals(c.system, "http://snomed.info/sct", "OBX-5.3 -> valueCodeableConcept.coding.system");
}

@test:Config {}
function ordObxDateValueTest() {
    test:assertEquals(obxToObservation(ordObx("DT", ["20230815"])).valueDateTime, "2023-08-15", "DT -> valueDateTime");
    test:assertEquals(obxToObservation(ordObx("TS", ["20230815103000"])).valueDateTime, "2023-08-15T10:30:00Z",
            "TS -> valueDateTime");
}

@test:Config {}
function ordObxStructuredNumericTest() {
    international401:Observation obs = obxToObservation(ordObx("SN", ["<^5.0"]));
    r4:Quantity? q = obs.valueQuantity;
    test:assertTrue(q is r4:Quantity, "SN with comparator -> valueQuantity");
    if q is r4:Quantity {
        test:assertEquals(q.value, 5.0d, "SN.2 -> value");
        test:assertEquals(q.comparator, "<", "SN.1 -> comparator");
    }
    international401:Observation ratio = obxToObservation(ordObx("SN", ["^1^:^128"]));
    test:assertTrue(ratio.valueRatio is r4:Ratio, "SN with ':' separator -> valueRatio");
}

// ObservationResultStatusCodesInterpretation for OBX-11 (codes representable by ObservationStatus;
// C maps to its parent status "amended").
@test:Config {}
function ordObxStatusVocabularyTest() {
    map<string> expected = {"F": "final", "P": "preliminary", "A": "amended", "C": "amended"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        test:assertEquals(obxToObservation(ordObx("ST", ["x"], v2)).status, fhir,
                string `OBX-11 ${v2} -> status ${fhir}`);
    }
}

// BUG (upstream): OBX-11 C → "corrected", D/W → "entered-in-error" and X → "cancelled" cannot be emitted because
// the ObservationStatus enum in ballerinax/health.fhir.r4.international401 only allows
// amended|final|registered|preliminary.
@test:Config {enable: false}
function ordObxStatusUnrepresentableCodesTest() {
    map<string> expected = {"C": "corrected", "D": "entered-in-error", "X": "cancelled"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        test:assertEquals(obxToObservation(ordObx("ST", ["x"], v2)).status.toString(), fhir,
                string `OBX-11 ${v2} -> status ${fhir}`);
    }
}

@test:Config {}
function ordObxDataAbsentReasonTest() {
    test:assertEquals(obxToObservation(ordObx("ST", ["x"], "F")).dataAbsentReason, (),
            "OBX-11=F must not populate dataAbsentReason");
    international401:Observation obs = obxToObservation(ordObx("ST", [], "N"));
    r4:Coding[] codings = obs.dataAbsentReason?.coding ?: [];
    boolean found = codings.some(c => c.code == "not-asked"
        && c.system == "http://terminology.hl7.org/CodeSystem/data-absent-reason");
    test:assertTrue(found, "OBX-11=N -> dataAbsentReason not-asked");
}

@test:Config {}
function ordObxReferenceRangeTest() {
    hl7v23:OBX obx = ordObx("NM", ["13.5"]);
    obx.obx7 = "12.0-16.0";
    international401:ObservationReferenceRange[] ranges = obxToObservation(obx).referenceRange ?: [];
    test:assertEquals(ranges.length(), 1, "OBX-7 -> referenceRange");
    test:assertEquals(ranges[0].text, "12.0-16.0", "OBX-7 -> referenceRange.text");
}

@test:Config {}
function ordObxInterpretationTest() {
    hl7v23:OBX obx = ordObx("NM", ["18.2"]);
    obx.obx8 = ["H"];
    r4:CodeableConcept[] interp = obxToObservation(obx).interpretation ?: [];
    test:assertEquals(interp.length(), 1, "OBX-8 -> interpretation");
    r4:Coding c = ordFirstCoding(interp[0]);
    test:assertEquals(c.code, "H", "OBX-8 H -> H");
    test:assertEquals(c.system, "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "InterpretationCodes system");
}

@test:Config {}
function ordObxPerformerTest() {
    hl7v23:OBX obx = ordObx("NM", ["13.5"]);
    obx.obx16 = {xcn1: "OBS-1", xcn2: "Lab", xcn3: "Tech"};
    r4:Reference[] performers = obxToObservation(obx).performer ?: [];
    test:assertTrue(performers.length() > 0, "OBX-16 -> performer");
}

@test:Config {}
function ordObxComponentRepetitionTest() {
    hl7v23:OBX obx = ordObx("ST", ["120", "80"]);
    international401:Observation obs = obxToObservation(obx);
    international401:ObservationComponent[] comps = obs.component ?: [];
    test:assertEquals(comps.length(), 2, "OBX-5 repetitions -> one component each");
    test:assertEquals(ordFirstCoding(comps[0].code).code, "718-7", "OBX-3 -> component.code");
    test:assertEquals(ordFirstCoding(comps[1].code).code, "718-7", "OBX-3 -> component.code");
    test:assertEquals(obs.valueString, (), "Component observation must not have top-level value");
}

@test:Config {}
function ordObxComponentValueTest() {
    international401:ObservationComponent[] comps = obxToObservation(ordObx("ST", ["120", "80"])).component ?: [];
    test:assertEquals(comps.length(), 2);
    test:assertEquals(comps[0].valueString, "120", "OBX-5[1] -> component[1].valueString");
    test:assertEquals(comps[1].valueString, "80", "OBX-5[2] -> component[2].valueString");
}

@test:Config {}
function ordObxNaTypeIsNotComponentTest() {
    international401:Observation obs = obxToObservation(ordObx("NA", ["1", "2"]));
    test:assertEquals(obs.component, (), "OBX-2=NA with repetitions must not create components");
}

@test:Config {}
function ordObxEmptyArraysNoPanicTest() {
    hl7v23:OBX obx = {name: "OBX", obx2: "ST", obx3: {ce1: "X"}, obx5: [], obx17: []};
    international401:Observation|error res = trap obxToObservation(obx);
    test:assertTrue(res is international401:Observation, "Empty OBX-5/OBX-17 arrays must not panic");
}

@test:Config {}
function ordObxEmptySegmentNoEmptyFieldsTest() {
    international401:Observation|error res = trap obxToObservation({name: "OBX"});
    test:assertTrue(res is international401:Observation, "Empty OBX must not panic");
    if res is international401:Observation {
        test:assertFalse(ordHasEmptyFields(res), "Empty OBX must not produce empty strings/objects");
    }
}

@test:Config {}
function ordObxSegmentDispatchTest() returns error? {
    hl7:Segment seg = ordObx("ST", ["x"]);
    r4:BundleEntry[] entries = check segmentToFhir("OBX", seg, defaultMapper, ());
    test:assertEquals(entries.length(), 1, "OBX dispatch -> one Observation entry");
    test:assertTrue(entries[0]?.'resource is international401:Observation, "OBX dispatch -> Observation");
}

// ---------------------------------------------------------------------------------------------
// OBR -> DiagnosticReport  (OBR[DiagnosticReport])
// ---------------------------------------------------------------------------------------------

function ordObr() returns hl7v23:OBR => {
    name: "OBR",
    obr1: "1",
    obr2: {ei1: "PLAC-123", ei2: "EHR"},
    obr3: {ei1: "FILL-456", ei2: "LAB"},
    obr4: {ce1: "85025", ce2: "CBC with Differential", ce3: "LN"},
    obr5: "R",
    obr6: {ts1: "20230901080000"},
    obr7: {ts1: "20230901100000"},
    obr8: {ts1: "20230901110000"},
    obr16: [{xcn1: "DOC456", xcn2: "Smith", xcn3: "John"}],
    obr22: {ts1: "20230901120000"},
    obr24: "HM",
    obr25: "F",
    obr31: [{ce1: "R50.9", ce2: "Fever", ce3: "I10"}, {ce1: "R05", ce2: "Cough", ce3: "I10"}]
};

@test:Config {}
function ordObrDrCodeTest() {
    international401:DiagnosticReport dr = obrToDiagnosticReport(ordObr());
    r4:Coding c = ordFirstCoding(dr.code);
    test:assertEquals(c.code, "85025", "OBR-4.1 -> code.coding.code");
    test:assertEquals(c.display, "CBC with Differential", "OBR-4.2 -> code.coding.display");
    test:assertEquals(c.system, "http://loinc.org", "OBR-4.3 -> code.coding.system");
}

@test:Config {}
function ordObrDrEffectivePeriodValuesTest() {
    international401:DiagnosticReport dr = obrToDiagnosticReport(ordObr());
    test:assertEquals(dr.effectivePeriod?.'start, "2023-09-01T10:00:00Z", "OBR-7 -> effectivePeriod.start");
    test:assertEquals(dr.effectivePeriod?.end, "2023-09-01T11:00:00Z", "OBR-8 -> effectivePeriod.end");
}

@test:Config {}
function ordObrDrEffectiveChoiceTest() {
    international401:DiagnosticReport withEnd = obrToDiagnosticReport(ordObr());
    test:assertEquals(withEnd.effectiveDateTime, (), "OBR-8 valued -> no effectiveDateTime");
    hl7v23:OBR obr = ordObr();
    obr.obr8 = {};
    international401:DiagnosticReport noEnd = obrToDiagnosticReport(obr);
    test:assertEquals(noEnd.effectiveDateTime, "2023-09-01T10:00:00Z", "OBR-8 not valued -> effectiveDateTime");
    test:assertEquals(noEnd.effectivePeriod, (), "OBR-8 not valued -> no effectivePeriod");
}

@test:Config {}
function ordObrDrIdentifiersTest() {
    international401:DiagnosticReport dr = obrToDiagnosticReport(ordObr());
    r4:Identifier[] ids = dr.identifier ?: [];
    test:assertEquals(ids.length(), 2, "OBR-2 and OBR-3 -> 2 identifiers");
    test:assertEquals(ids[0].value, "PLAC-123", "OBR-2 -> identifier[1].value");
    test:assertEquals(ordIdentifierTypeCode(ids[0]), "PLAC");
    test:assertEquals(ordIdentifierTypeSystem(ids[0]), ORD_V2_0203);
    test:assertEquals(ids[1].value, "FILL-456", "OBR-3 -> identifier[2].value");
    test:assertEquals(ordIdentifierTypeCode(ids[1]), "FILL");
    test:assertEquals(dr.subject, (), "OBR-2 must not be mapped to subject");
}

@test:Config {}
function ordObrDrStatusFinalTest() {
    test:assertEquals(obrToDiagnosticReport(ordObr()).status, "final", "OBR-25 F -> final");
}

// ResultStatus[Non-Queries] concept map for OBR-25 (codes representable by DiagnosticReportStatus).
@test:Config {}
function ordObrDrStatusVocabularyTest() {
    map<string> expected = {
        "O": "registered",
        "I": "registered",
        "S": "registered",
        "P": "preliminary",
        "R": "partial",
        "F": "final"
    };
    foreach [string, string] [v2, fhir] in expected.entries() {
        hl7v23:OBR obr = ordObr();
        obr.obr25 = v2;
        test:assertEquals(obrToDiagnosticReport(obr).status, fhir, string `OBR-25 ${v2} -> ${fhir}`);
    }
}

// BUG (upstream): OBR-25 C → "corrected" and X → "cancelled" cannot be emitted because the
// DiagnosticReportStatus enum in ballerinax/health.fhir.r4.international401 omits them.
@test:Config {enable: false}
function ordObrDrStatusUnrepresentableCodesTest() {
    foreach [string, string] [v2, fhir] in {"C": "corrected", "X": "cancelled"}.entries() {
        hl7v23:OBR obr = ordObr();
        obr.obr25 = v2;
        test:assertEquals(obrToDiagnosticReport(obr).status.toString(), fhir, string `OBR-25 ${v2} -> ${fhir}`);
    }
}

@test:Config {}
function ordObrDrIssuedTest() {
    test:assertEquals(obrToDiagnosticReport(ordObr()).issued, "2023-09-01T12:00:00Z", "OBR-22 -> issued (instant)");
}

@test:Config {}
function ordObrDrCategoryCodeTest() {
    r4:CodeableConcept[] cats = obrToDiagnosticReport(ordObr()).category ?: [];
    test:assertEquals(cats.length(), 1, "OBR-24 -> category");
    test:assertEquals(ordFirstCoding(cats[0]).code, "HM", "OBR-24 -> category.coding.code");
}

@test:Config {}
function ordObrDrCategorySystemTest() {
    r4:CodeableConcept[] cats = obrToDiagnosticReport(ordObr()).category ?: [];
    test:assertEquals(ordFirstCoding(cats[0]).system, "http://terminology.hl7.org/CodeSystem/v2-0074");
}

@test:Config {}
function ordObrDrNoCategoryWhenEmptyTest() {
    hl7v23:OBR obr = ordObr();
    obr.obr24 = "";
    r4:CodeableConcept[] cats = obrToDiagnosticReport(obr).category ?: [];
    test:assertEquals(cats.length(), 0, "OBR-24 empty -> no category");
}

@test:Config {}
function ordObrDrEmptySegmentTest() {
    international401:DiagnosticReport|error dr = trap obrToDiagnosticReport({name: "OBR"});
    test:assertTrue(dr is international401:DiagnosticReport, "Empty OBR must not panic");
    if dr is international401:DiagnosticReport {
        test:assertFalse(ordHasEmptyFields(dr), "Empty OBR must not produce empty strings/objects");
    }
}

// ---------------------------------------------------------------------------------------------
// OBR -> ServiceRequest  (OBR[ServiceRequest])
// ---------------------------------------------------------------------------------------------

@test:Config {}
function ordObrSrCodeAndOccurrenceTest() {
    international401:ServiceRequest sr = obrToServiceRequest(ordObr());
    r4:Coding c = ordFirstCoding(sr.code);
    test:assertEquals(c.code, "85025", "OBR-4 -> code");
    test:assertEquals(c.system, "http://loinc.org", "OBR-4.3 -> code.coding.system");
    test:assertEquals(sr.occurrenceDateTime, "2023-09-01T08:00:00Z", "OBR-6 -> occurrenceDateTime");
}

@test:Config {}
function ordObrSrFillerIdentifierValueTest() {
    r4:Identifier[] ids = obrToServiceRequest(ordObr()).identifier ?: [];
    boolean found = ids.some(i => i.value == "FILL-456");
    test:assertTrue(found, "OBR-3 -> identifier value");
}

@test:Config {}
function ordObrSrIntentTest() {
    test:assertEquals(obrToServiceRequest(ordObr()).intent, "order", "OBR -> intent 'order'");
    hl7v23:OBR obr = ordObr();
    obr.obr11 = "G";
    test:assertEquals(obrToServiceRequest(obr).intent, "reflex-order", "OBR-11 G -> reflex-order");
}

@test:Config {}
function ordObrSrPriorityTest() {
    map<string> expected = {"S": "stat", "A": "asap", "R": "routine"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        hl7v23:OBR obr = ordObr();
        obr.obr5 = v2;
        test:assertEquals(obrToServiceRequest(obr).priority, fhir, string `OBR-5 ${v2} -> ${fhir}`);
    }
    hl7v23:OBR obr = ordObr();
    obr.obr5 = "";
    test:assertEquals(obrToServiceRequest(obr).priority, (), "Empty OBR-5 -> no priority");
}

@test:Config {}
function ordObrSrIdentifierTypesTest() {
    r4:Identifier[] ids = obrToServiceRequest(ordObr()).identifier ?: [];
    test:assertEquals(ids.length(), 2, "OBR-2 and OBR-3 -> identifiers");
    test:assertEquals(ids[0].value, "PLAC-123");
    test:assertEquals(ordIdentifierTypeCode(ids[0]), "PLAC");
    test:assertEquals(ids[1].value, "FILL-456");
    test:assertEquals(ordIdentifierTypeCode(ids[1]), "FILL");
    test:assertEquals(ordIdentifierTypeSystem(ids[1]), ORD_V2_0203);
}

@test:Config {}
function ordObrSrRequesterTest() {
    test:assertEquals(obrToServiceRequest(ordObr()).requester?.reference, "Practitioner/DOC456",
            "OBR-16 -> requester(Practitioner)");
}

@test:Config {}
function ordObrSrReasonCodeRepetitionsTest() {
    r4:CodeableConcept[] reasons = obrToServiceRequest(ordObr()).reasonCode ?: [];
    test:assertEquals(reasons.length(), 2, "Each OBR-31 repetition -> reasonCode");
    test:assertEquals(ordFirstCoding(reasons[1]).code, "R05");
}

@test:Config {}
function ordObrSrFirstReasonCodeTest() {
    r4:CodeableConcept[] reasons = obrToServiceRequest(ordObr()).reasonCode ?: [];
    test:assertTrue(reasons.length() >= 1, "OBR-31 -> reasonCode");
    test:assertEquals(ordFirstCoding(reasons[0]).code, "R50.9", "OBR-31.1 -> reasonCode.coding.code");
}

@test:Config {}
function ordObrSrEmptySegmentTest() {
    international401:ServiceRequest|error sr = trap obrToServiceRequest({name: "OBR"});
    test:assertTrue(sr is international401:ServiceRequest, "Empty OBR must not panic");
    if sr is international401:ServiceRequest {
        test:assertEquals(sr.reasonCode, (), "Empty OBR-31 -> no reasonCode");
        test:assertFalse(ordHasEmptyFields(sr), "Empty OBR must not produce empty strings/objects");
    }
}

@test:Config {}
function ordObrSrEmptyArraysNoPanicTest() {
    hl7v23:OBR obr = {name: "OBR", obr16: [], obr31: []};
    international401:ServiceRequest|error sr = trap obrToServiceRequest(obr);
    test:assertTrue(sr is international401:ServiceRequest, "Empty repeating fields must not panic");
}

@test:Config {}
function ordObrSegmentDispatchTest() returns error? {
    r4:BundleEntry[] entries = check segmentToFhir("OBR", ordObr(), defaultMapper, ());
    test:assertEquals(entries.length(), 2, "OBR dispatch -> DiagnosticReport + ServiceRequest");
    test:assertTrue(entries[0]?.'resource is international401:DiagnosticReport);
    test:assertTrue(entries[1]?.'resource is international401:ServiceRequest);
}

// ---------------------------------------------------------------------------------------------
// ORC -> ServiceRequest  (ORC[ServiceRequest])
// ---------------------------------------------------------------------------------------------

function ordOrc() returns hl7v23:ORC => {
    name: "ORC",
    orc1: "NW",
    orc2: {ei1: "PLACER-001", ei2: "EHR"},
    orc3: {ei1: "FILLER-001", ei2: "LAB"},
    orc4: {ei1: "GROUP-01"},
    orc9: {ts1: "20230901093000"},
    orc12: [{xcn1: "DOC123", xcn2: "Smith", xcn3: "John"}],
    orc16: {ce1: "PATREQ", ce2: "Patient request", ce3: "L"}
};

@test:Config {}
function ordOrcSrIdentifiersTest() {
    international401:ServiceRequest sr = orcToServiceRequest(ordOrc());
    test:assertEquals(sr.intent, "order", "ORC -> intent order");
    r4:Identifier[] ids = sr.identifier ?: [];
    test:assertEquals(ids.length(), 2, "ORC-2 and ORC-3 -> 2 identifiers");
    test:assertEquals(ids[0].value, "PLACER-001", "ORC-2 -> identifier[1].value");
    test:assertEquals(ordIdentifierTypeCode(ids[0]), "PLAC", "ORC-2 -> PLAC");
    test:assertEquals(ordIdentifierTypeSystem(ids[0]), ORD_V2_0203);
    test:assertEquals(ids[1].value, "FILLER-001", "ORC-3 -> identifier[2].value");
    test:assertEquals(ordIdentifierTypeCode(ids[1]), "FILL", "ORC-3 -> FILL");
    test:assertEquals(ordIdentifierTypeSystem(ids[1]), ORD_V2_0203);
}

@test:Config {}
function ordOrcSrOnlyFillerIdentifierTest() {
    hl7v23:ORC orc = ordOrc();
    orc.orc2 = {};
    r4:Identifier[] ids = orcToServiceRequest(orc).identifier ?: [];
    test:assertEquals(ids.length(), 1, "Only ORC-3 valued -> 1 identifier");
    test:assertEquals(ordIdentifierTypeCode(ids[0]), "FILL");
}

@test:Config {}
function ordOrcSrAuthoredOnTest() {
    test:assertEquals(orcToServiceRequest(ordOrc()).authoredOn, "2023-09-01T09:30:00Z",
            "ORC-9 (ORC-1=NW) -> authoredOn");
}

@test:Config {}
function ordOrcSrAuthoredOnConditionTest() {
    hl7v23:ORC orc = ordOrc();
    orc.orc1 = "SC";
    test:assertEquals(orcToServiceRequest(orc).authoredOn, (), "ORC-1 != NW -> no authoredOn");
}

@test:Config {}
function ordOrcSrStatusFromOrderStatusTest() {
    map<string> expected = {
        "CA": "revoked",
        "CM": "completed",
        "DC": "revoked",
        "ER": "entered-in-error",
        "HD": "on-hold",
        "IP": "active",
        "RP": "revoked",
        "SC": "active"
    };
    foreach [string, string] [v2, fhir] in expected.entries() {
        hl7v23:ORC orc = ordOrc();
        orc.orc5 = v2;
        test:assertEquals(orcToServiceRequest(orc).status, fhir, string `ORC-5 ${v2} -> ${fhir}`);
    }
}

@test:Config {}
function ordOrcSrStatusFromOrderControlTest() {
    map<string> expected = {"NW": "active", "OC": "revoked", "HR": "on-hold", "CR": "revoked", "DC": "revoked"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        hl7v23:ORC orc = ordOrc();
        orc.orc1 = v2;
        test:assertEquals(orcToServiceRequest(orc).status, fhir, string `ORC-1 ${v2} -> ${fhir}`);
    }
}

@test:Config {}
function ordOrcSrRequisitionTest() {
    r4:Identifier? req = orcToServiceRequest(ordOrc()).requisition;
    test:assertEquals(req?.value, "GROUP-01", "ORC-4 -> requisition.value");
    if req is r4:Identifier {
        test:assertEquals(ordIdentifierTypeCode(req), "PGN");
    }
}

@test:Config {}
function ordOrcSrStatusReasonTest() {
    international401:ServiceRequest sr = orcToServiceRequest(ordOrc());
    test:assertEquals(sr.reasonCode, (), "ORC-16 must not populate reasonCode");
    r4:Extension[] exts = sr.extension ?: [];
    boolean found = exts.some(e => e.url == "http://hl7.org/fhir/StructureDefinition/request-statusReason");
    test:assertTrue(found, "ORC-16 -> request-statusReason extension");
}

@test:Config {}
function ordOrcSrRequesterTest() {
    test:assertEquals(orcToServiceRequest(ordOrc()).requester?.reference, "Practitioner/DOC123",
            "ORC-12 -> requester(Practitioner)");
}

@test:Config {}
function ordOrcSrNoOccurrenceFromOrc15Test() {
    hl7v23:ORC orc = ordOrc();
    orc.orc15 = {ts1: "20230905"};
    test:assertEquals(orcToServiceRequest(orc).occurrenceDateTime, (), "ORC-15 is not mapped by the spec");
}

@test:Config {}
function ordOrcSrEmptyArraysNoPanicTest() {
    hl7v23:ORC orc = {name: "ORC", orc12: []};
    international401:ServiceRequest|error sr = trap orcToServiceRequest(orc);
    test:assertTrue(sr is international401:ServiceRequest, "Empty ORC-12 array must not panic");
}

@test:Config {}
function ordOrcSrEmptySegmentTest() {
    international401:ServiceRequest sr = orcToServiceRequest({name: "ORC"});
    test:assertEquals(sr.identifier, ());
    test:assertFalse(ordHasEmptyFields(sr), "Empty ORC must not produce empty strings/objects");
}

@test:Config {}
function ordOrcSrEmptySegmentOptionalFieldsTest() {
    international401:ServiceRequest sr = orcToServiceRequest({name: "ORC"});
    test:assertEquals(sr.identifier, (), "No ORC-2/3 -> no identifier");
    test:assertEquals(sr.requester, (), "No ORC-12 -> no requester");
    test:assertEquals(sr.authoredOn, (), "No ORC-9 -> no authoredOn");
    test:assertEquals(sr.reasonCode, (), "No ORC-16 -> no reasonCode");
}

// ---------------------------------------------------------------------------------------------
// ORC -> Immunization  (ORC[Immunization])
// ---------------------------------------------------------------------------------------------

@test:Config {}
function ordOrcImmRecordedTest() {
    test:assertEquals(orcToImmunization(ordOrc()).recorded, "2023-09-01T09:30:00Z", "ORC-9 -> recorded");
}

@test:Config {}
function ordOrcImmIdentifiersTest() {
    r4:Identifier[] ids = orcToImmunization(ordOrc()).identifier ?: [];
    test:assertEquals(ids.length(), 2, "ORC-2 and ORC-3 -> 2 identifiers");
    test:assertEquals(ids[0].value, "PLACER-001");
    test:assertEquals(ordIdentifierTypeCode(ids[0]), "PLAC");
    test:assertEquals(ordIdentifierTypeSystem(ids[0]), ORD_V2_0203);
    test:assertEquals(ids[1].value, "FILLER-001");
    test:assertEquals(ordIdentifierTypeCode(ids[1]), "FILL");
}

@test:Config {}
function ordOrcImmPerformerTest() {
    international401:ImmunizationPerformer[] perf = orcToImmunization(ordOrc()).performer ?: [];
    test:assertEquals(perf.length(), 1);
    r4:Coding fn = ordFirstCoding(perf[0].'function);
    test:assertEquals(fn.code, "OP", "ORC-12 -> performer.function OP");
    test:assertEquals(fn.system, "http://terminology.hl7.org/CodeSystem/v2-0443");
    test:assertNotEquals(perf[0].actor.reference, "DOC123", "actor must be a typed reference");
}

@test:Config {}
function ordOrcImmNoEmptyFieldsTest() {
    international401:Immunization imm = orcToImmunization(ordOrc());
    test:assertNotEquals(imm.occurrenceDateTime, "", "occurrenceDateTime must not be an empty string");
    test:assertNotEquals(imm.occurrenceString, "", "occurrenceString must not be an empty string");
    test:assertFalse(ordHasEmptyFields(imm), "ORC Immunization must not contain empty strings/objects");
}

@test:Config {}
function ordOrcImmEmptyArraysNoPanicTest() {
    international401:Immunization|error imm = trap orcToImmunization({name: "ORC", orc12: []});
    test:assertTrue(imm is international401:Immunization, "Empty ORC-12 must not panic");
}

@test:Config {}
function ordOrcDispatchNoImmunizationForLabOrderTest() returns error? {
    r4:BundleEntry[] entries = check segmentToFhir("ORC", ordOrc(), defaultMapper, ());
    boolean hasImm = entries.some(e => e?.'resource is international401:Immunization);
    test:assertFalse(hasImm, "Lab ORC must not produce an Immunization");
}

@test:Config {}
function ordOrcDispatchProducesServiceRequestTest() returns error? {
    r4:BundleEntry[] entries = check segmentToFhir("ORC", ordOrc(), defaultMapper, ());
    boolean hasSr = entries.some(e => e?.'resource is international401:ServiceRequest);
    test:assertTrue(hasSr, "ORC dispatch -> ServiceRequest");
}

// ---------------------------------------------------------------------------------------------
// ORC -> DiagnosticReport  (ORC[DiagnosticReport])
// ---------------------------------------------------------------------------------------------

@test:Config {}
function ordOrcDrIdentifiersTest() {
    r4:Identifier[] ids = orcToDiagnosticReport(ordOrc()).identifier ?: [];
    test:assertEquals(ids[0].value, "PLACER-001", "ORC-2 -> identifier[1].value");
    test:assertEquals(ordIdentifierTypeCode(ids[0]), "PLAC");
    test:assertEquals(ids[1].value, "FILLER-001", "ORC-3 -> identifier[2].value");
    test:assertEquals(ordIdentifierTypeCode(ids[1]), "FILL");
    boolean duplicate = ids.filter(i => i.value == "FILLER-001").length() > 1;
    test:assertFalse(duplicate, "ORC-3 must not be duplicated");
}

@test:Config {}
function ordOrcDrStatusReasonExtensionTest() {
    r4:Extension[] exts = orcToDiagnosticReport(ordOrc()).extension ?: [];
    test:assertEquals(exts.length(), 1);
    test:assertEquals(exts[0].url, "http://hl7.org/fhir/StructureDefinition/event-statusReason");
    r4:Extension[] none = orcToDiagnosticReport({name: "ORC"}).extension ?: [];
    test:assertEquals(none.length(), 0, "Empty ORC-16 -> no extension");
}

@test:Config {}
function ordOrcDrBasedOnTest() {
    r4:Reference[] basedOn = orcToDiagnosticReport(ordOrc()).basedOn ?: [];
    test:assertEquals(basedOn.length(), 1, "ORC-2 -> basedOn(ServiceRequest)");
}

// ---------------------------------------------------------------------------------------------
// NTE -> Observation  (NTE[Observation])
// ---------------------------------------------------------------------------------------------

@test:Config {}
function ordNteMultipleLinesTest() {
    hl7v23:NTE nte = {name: "NTE", nte1: "1", nte2: "L", nte3: ["Line one", "Line two"]};
    r4:Annotation[] notes = nteToObservation(nte).note ?: [];
    test:assertEquals(notes.length(), 2, "Each NTE-3 repetition -> note");
    test:assertEquals(notes[0].text, "Line one");
    test:assertEquals(notes[1].text, "Line two");
}

@test:Config {}
function ordNteSkipsEmptyLinesTest() {
    hl7v23:NTE nte = {name: "NTE", nte3: ["", "Only line"]};
    r4:Annotation[] notes = nteToObservation(nte).note ?: [];
    test:assertEquals(notes.length(), 1, "Empty NTE-3 repetitions are skipped");
    test:assertEquals(notes[0].text, "Only line");
}

@test:Config {}
function ordNteEmptyNoNoteTest() {
    international401:Observation|error obs = trap nteToObservation({name: "NTE", nte3: []});
    test:assertTrue(obs is international401:Observation, "Empty NTE must not panic");
    if obs is international401:Observation {
        test:assertEquals(obs.note, (), "Empty NTE-3 -> no note");
    }
}

@test:Config {}
function ordNteNoEmptyFieldsTest() {
    international401:Observation obs = nteToObservation({name: "NTE", nte3: ["Text"]});
    test:assertFalse(ordHasEmptyFields(obs), "NTE Observation must not contain empty objects");
}

// ---------------------------------------------------------------------------------------------
// TXA -> DocumentReference  (TXA[DocumentReference])
// ---------------------------------------------------------------------------------------------

function ordTxa() returns hl7v23:TXA => {
    name: "TXA",
    txa1: "1",
    txa2: "DS",
    txa3: "TX",
    txa6: {ts1: "20230901120000"},
    txa8: [{ts1: "20230902090000"}, {ts1: "20230903090000"}],
    txa9: {xcn1: "DOC001", xcn2: "Davis", xcn3: "Alan"},
    txa10: [{xcn1: "DOC002", xcn2: "Jones", xcn3: "Mary"}],
    txa12: {ei1: "DOC-2023-001", ei2: "HOSP"},
    txa16: "discharge_summary.txt",
    txa17: "AU",
    txa18: "R",
    txa19: "AV",
    txa21: "Corrected dosage",
    txa23: [{xcn1: "DOC003", xcn2: "Brown"}]
};

@test:Config {}
function ordTxaDocRefCoreFieldsTest() {
    international401:DocumentReference dr = txaToDocumentReference(ordTxa());
    test:assertEquals(ordFirstCoding(dr.'type).code, "DS", "TXA-2 -> type");
    test:assertEquals(dr.content[0].attachment.contentType, "TX", "TXA-3 -> content.attachment.contentType");
    r4:Reference[] authors = dr.author ?: [];
    test:assertEquals(authors.length(), 1, "TXA-9 -> author");
    test:assertEquals(authors[0].reference, "Practitioner/DOC001", "TXA-9.1 -> author reference");
    test:assertEquals(authors[0].display, "Alan Davis", "TXA-9 name -> author display");
    test:assertEquals(dr.authenticator?.reference, "Practitioner/DOC002", "TXA-10 -> authenticator");
    test:assertEquals(dr.masterIdentifier?.value, "DOC-2023-001", "TXA-12 -> masterIdentifier");
    r4:Identifier[] ids = dr.identifier ?: [];
    test:assertEquals(ids.length(), 1, "TXA-16 -> identifier");
    test:assertEquals(ids[0].value, "discharge_summary.txt");
    test:assertEquals(dr.docStatus, "final", "TXA-17 AU -> docStatus final");
    test:assertEquals(dr.status, "current", "TXA-19 AV -> status current");
}

@test:Config {}
function ordTxaDocStatusVocabularyTest() {
    map<string> expected = {"AU": "final", "IP": "preliminary", "DI": "preliminary", "IN": "preliminary",
        "PA": "preliminary"};
    foreach [string, string] [v2, fhir] in expected.entries() {
        hl7v23:TXA txa = ordTxa();
        txa.txa17 = v2;
        test:assertEquals(txaToDocumentReference(txa).docStatus, fhir, string `TXA-17 ${v2} -> ${fhir}`);
    }
}

@test:Config {}
function ordTxaStatusDefaultTest() {
    hl7v23:TXA txa = ordTxa();
    txa.txa19 = "";
    test:assertEquals(txaToDocumentReference(txa).status, "current", "TXA-19 not valued -> status current");
}

@test:Config {}
function ordTxaDocRefDateTest() {
    test:assertEquals(txaToDocumentReference(ordTxa()).date, "2023-09-01T12:00:00Z", "TXA-6 -> date (instant)");
}

@test:Config {}
function ordTxaSecurityLabelTest() {
    r4:CodeableConcept[] labels = txaToDocumentReference(ordTxa()).securityLabel ?: [];
    test:assertEquals(labels.length(), 1, "TXA-18 -> securityLabel");
    test:assertEquals(ordFirstCoding(labels[0]).code, "R", "TXA-18 R -> R");
}

@test:Config {}
function ordTxaDescriptionTest() {
    test:assertEquals(txaToDocumentReference(ordTxa()).description, (), "TXA-21 must not map to description");
}

@test:Config {}
function ordTxaTypeSystemTest() {
    test:assertEquals(ordFirstCoding(txaToDocumentReference(ordTxa()).'type).system,
            "http://terminology.hl7.org/CodeSystem/v2-0270");
}

@test:Config {}
function ordTxaEmptyArraysNoPanicTest() {
    international401:DocumentReference|error dr = trap txaToDocumentReference({name: "TXA", txa10: [], txa8: []});
    test:assertTrue(dr is international401:DocumentReference, "Empty TXA arrays must not panic");
}

@test:Config {}
function ordTxaEmptySegmentNoEmptyFieldsTest() {
    international401:DocumentReference dr = txaToDocumentReference({name: "TXA"});
    test:assertFalse(ordHasEmptyFields(dr), "Empty TXA must not produce empty objects");
}

@test:Config {}
function ordTxaEmptySegmentOptionalFieldsTest() {
    international401:DocumentReference dr = txaToDocumentReference({name: "TXA"});
    test:assertEquals(dr.status, "current");
    test:assertEquals(dr.'type, ());
    test:assertEquals(dr.author, ());
    test:assertEquals(dr.authenticator, ());
    test:assertEquals(dr.masterIdentifier, ());
    test:assertEquals(dr.docStatus, ());
    test:assertEquals(dr.date, ());
}

// ---------------------------------------------------------------------------------------------
// TXA -> Provenance  (TXA[Provenance])
// ---------------------------------------------------------------------------------------------

@test:Config {}
function ordTxaProvAgentWhoTest() returns error? {
    international401:Provenance prov = check txaToProvenance(ordTxa()).ensureType();
    boolean found = prov.agent.some(a => a.who.reference == "Practitioner/DOC001");
    test:assertTrue(found, "TXA-9 -> agent.who(Practitioner)");
}

@test:Config {}
function ordTxaProvRecordedTest() {
    test:assertEquals(txaToProvenance(ordTxa())?.recorded, "2023-09-02T09:00:00Z", "TXA-8 -> recorded");
}

@test:Config {}
function ordTxaProvReasonTest() {
    r4:CodeableConcept[] reasons = txaToProvenance(ordTxa())?.reason ?: [];
    test:assertEquals(reasons.length(), 1);
    test:assertEquals(reasons[0].text, "Corrected dosage", "TXA-21 -> reason.text");
}

@test:Config {}
function ordTxaProvAgentRolesTest() returns error? {
    international401:Provenance prov = check txaToProvenance(ordTxa()).ensureType();
    test:assertEquals(prov.agent.length(), 2, "TXA-23 and TXA-9 -> 2 agents");
    foreach international401:ProvenanceAgent a in prov.agent {
        r4:CodeableConcept[] roles = a.role ?: [];
        test:assertEquals(ordFirstCoding(roles.length() > 0 ? roles[0] : ()).code, "IRCP");
    }
}

@test:Config {}
function ordTxaProvEmptySegmentTest() {
    test:assertEquals(txaToProvenance({name: "TXA"}), (), "TXA without TXA-8 -> no Provenance");
    international401:Provenance? prov = txaToProvenance({name: "TXA", txa8: [{ts1: "20230902"}]});
    test:assertTrue(prov is international401:Provenance);
    test:assertFalse(ordHasEmptyFields(prov), "TXA Provenance must not contain empty fields");
}

// ---------------------------------------------------------------------------------------------
// End-to-end via message string
// ---------------------------------------------------------------------------------------------

final string ordOruMessage = "MSH|^~\\&|LAB|HOSP|EHR|HOSP|20230901120000||ORU^R01|MSG1|P|2.3\r" +
    "PID|1||12345^^^HOSP^MR||DOE^JOHN\r" +
    "OBR|1|PLAC1^EHR|FILL1^LAB|85025^CBC^LN|||20230901100000|20230901110000|||||||||||||||" +
    "20230901120000||HM|F\r" +
    "OBX|1|NM|718-7^Hemoglobin^LN||13.5|g/dL^grams per deciliter^UCUM|12.0-16.0|N|||F|||20230901110000\r";

@test:Config {}
function ordOruParsedObxFieldsTest() returns error? {
    hl7:Message msg = check stringToHl7(ordOruMessage);
    hl7v23:ORU_R01 oru = check msg.ensureType(hl7v23:ORU_R01);
    hl7v23:OBX? obx = oru.patient_result[0].oru_r01_order_observation[0].oru_r01_observation[0].obx;
    test:assertTrue(obx is hl7v23:OBX, "OBX should be parsed");
    if obx is () {
        return;
    }
    international401:Observation obs = obxToObservation(obx);
    test:assertEquals(ordFirstCoding(obs.code).code, "718-7", "Parsed OBX-3 -> code");
    test:assertEquals(obs.effectiveDateTime, "2023-09-01T11:00:00Z", "Parsed OBX-14 -> effectiveDateTime");
    hl7v23:OBR obr = oru.patient_result[0].oru_r01_order_observation[0].obr;
    international401:DiagnosticReport dr = obrToDiagnosticReport(obr);
    test:assertEquals(ordFirstCoding(dr.code).code, "85025", "Parsed OBR-4 -> code");
}

@test:Config {}
function ordOruR01StringToBundleTest() returns error? {
    json bundle = check v2ToFhir(ordOruMessage);
    r4:Bundle b = check bundle.cloneWithType(r4:Bundle);
    r4:BundleEntry[] entries = b.entry ?: [];
    boolean hasObs = entries.some(e => (e?.'resource is map<anydata>)
        && (<map<anydata>>e?.'resource)["resourceType"] == "Observation");
    boolean hasDr = entries.some(e => (e?.'resource is map<anydata>)
        && (<map<anydata>>e?.'resource)["resourceType"] == "DiagnosticReport");
    test:assertTrue(hasObs, "ORU^R01 -> Observation");
    test:assertTrue(hasDr, "ORU^R01 -> DiagnosticReport");
}
