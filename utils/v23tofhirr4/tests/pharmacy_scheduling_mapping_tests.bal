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

// Unit tests for pharmacy / immunization / scheduling segment mappings
// (RXA, RXO, RXR, SCH, AIG, AIL, AIP, AIS) against the HL7 v2-to-FHIR IG
// segment mapping spreadsheets.

import ballerina/test;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

// ------------------------------------------------------------------------------------------
// Helpers (prefixed to avoid clashes with other test files in this module)
// ------------------------------------------------------------------------------------------

function rxFirstCoding(r4:CodeableConcept? cc) returns r4:Coding {
    if cc is () {
        return {};
    }
    r4:Coding[] codings = cc.coding ?: [];
    return codings.length() > 0 ? codings[0] : {};
}

function rxHasCoding(r4:CodeableConcept? cc, string system, string code) returns boolean {
    if cc is () {
        return false;
    }
    foreach r4:Coding c in cc.coding ?: [] {
        if c.system == system && c.code == code {
            return true;
        }
    }
    return false;
}

function rxIsEmptyCodeableConcept(r4:CodeableConcept? cc) returns boolean {
    if cc is () {
        return true;
    }
    r4:Coding[] codings = cc.coding ?: [];
    return codings.length() == 0 && cc.text is ();
}

function rxSchWithStatus(string status) returns hl7v23:SCH => {
    name: "SCH",
    sch1: {ei1: "APT-1"},
    sch25: {ce1: status, ce3: "HL70278"}
};

function rxAisWithStatus(string status) returns hl7v23:AIS => {
    name: "AIS",
    ais1: "1",
    ais3: {ce1: "CONSULT"},
    ais10: {ce1: status, ce3: "HL70278"}
};

// ==========================================================================================
// RXA → Immunization
// ==========================================================================================

@test:Config {}
function rxRxaFullMappingTest() {
    hl7v23:RXA rxa = {
        name: "RXA",
        rxa1: "0",
        rxa2: "1",
        rxa3: {ts1: "20230901103000"},
        rxa4: {ts1: "20230901103000"},
        rxa5: {ce1: "08", ce2: "Hep B, adolescent or pediatric", ce3: "CVX", ce4: "90744", ce5: "HepB", ce6: "CPT"},
        rxa6: "0.5",
        rxa7: {ce1: "mL", ce2: "milliliter", ce3: "UCUM"},
        rxa10: {xcn1: "NURSE001", xcn2: "Jones", xcn3: "Mary"},
        rxa15: ["LOT12345", "LOT99999"],
        rxa16: [{ts1: "20251231"}],
        rxa17: [{ce1: "MSD", ce2: "Merck and Co., Inc.", ce3: "MVX"}],
        rxa18: [{ce1: "00", ce2: "Parental decision", ce3: "NIP002"}],
        rxa19: [{ce1: "V05.3", ce2: "Need for prophylactic vaccination", ce3: "I9"},
            {ce1: "Z23", ce2: "Encounter for immunization", ce3: "I10"}],
        rxa20: "CP",
        rxa21: "A",
        rxa22: {ts1: "20230902080000"}
    };
    international401:Immunization imm = rxaToImmunization(rxa);

    // RXA-3 → occurrenceDateTime
    test:assertEquals(imm.occurrenceDateTime, "2023-09-01T10:30:00Z", "RXA-3 → occurrenceDateTime");

    // RXA-5 → vaccineCode (CWE[CodeableConcept], incl. alternate triplet)
    r4:Coding[] vaccineCodings = imm.vaccineCode.coding ?: [];
    test:assertEquals(vaccineCodings.length(), 2, "RXA-5 primary + alternate codings");
    test:assertEquals(vaccineCodings[0].code, "08");
    test:assertEquals(vaccineCodings[0].display, "Hep B, adolescent or pediatric");
    test:assertEquals(vaccineCodings[0].system, "http://hl7.org/fhir/sid/cvx");
    test:assertEquals(vaccineCodings[1].code, "90744");

    // RXA-6/RXA-7 → doseQuantity
    r4:Quantity dose = imm.doseQuantity ?: {};
    test:assertEquals(dose.value, 0.5d, "RXA-6 → doseQuantity.value");
    test:assertEquals(dose.code, "mL", "RXA-7.1 → doseQuantity.code");
    test:assertEquals(dose.unit, "milliliter", "RXA-7.2 → doseQuantity.unit");

    // RXA-10 → performer.actor + function AP / v2-0443
    international401:ImmunizationPerformer[] performers = imm.performer ?: [];
    test:assertEquals(performers.length(), 1, "RXA-10 → one performer");
    test:assertEquals(performers[0].actor.reference, "Practitioner/NURSE001");
    test:assertEquals(performers[0].actor.display, "Mary Jones");
    r4:Coding fn = rxFirstCoding(performers[0].'function);
    test:assertEquals(fn.code, "AP", "RXA-10 performer.function.coding.code = AP");
    test:assertEquals(fn.system, "http://terminology.hl7.org/CodeSystem/v2-0443");

    // RXA-15 → lotNumber (first repetition only, target max 1)
    test:assertEquals(imm.lotNumber, "LOT12345", "RXA-15 → lotNumber");
    // RXA-16 → expirationDate
    test:assertEquals(imm.expirationDate, "2025-12-31", "RXA-16 → expirationDate");
    // RXA-17 → manufacturer (Organization name as display)
    test:assertEquals(imm.manufacturer?.display, "Merck and Co., Inc.", "RXA-17.2 → manufacturer name");
    // RXA-18 → statusReason
    r4:Coding statusReason = rxFirstCoding(imm.statusReason);
    test:assertEquals(statusReason.code, "00", "RXA-18 → statusReason");
    test:assertEquals(statusReason.system, "NIP002");
    // RXA-19 → reasonCode (all repetitions)
    r4:CodeableConcept[] reasons = imm.reasonCode ?: [];
    test:assertEquals(reasons.length(), 2, "RXA-19 repetitions → reasonCode[]");
    test:assertEquals(rxFirstCoding(reasons[0]).code, "V05.3");
    test:assertEquals(rxFirstCoding(reasons[1]).code, "Z23");
    // RXA-20 → status
    test:assertEquals(imm.status, "completed", "RXA-20 CP → completed");
    // RXA-22 → recorded (RXA-21 = A)
    test:assertEquals(imm.recorded, "2023-09-02T08:00:00Z", "RXA-22 → recorded");
}

@test:Config {}
function rxRxaDatePrecisionConversionTest() {
    hl7v23:RXA rxaDateOnly = {name: "RXA", rxa3: {ts1: "20030901"}, rxa5: {ce1: "08"}};
    test:assertEquals(rxaToImmunization(rxaDateOnly).occurrenceDateTime, "2003-09-01", "RXA-3 date only");
    hl7v23:RXA rxaMonth = {name: "RXA", rxa3: {ts1: "200309"}, rxa5: {ce1: "08"}};
    test:assertEquals(rxaToImmunization(rxaMonth).occurrenceDateTime, "2003-09", "RXA-3 year-month");
    hl7v23:RXA rxaMinute = {name: "RXA", rxa3: {ts1: "200309011030"}, rxa5: {ce1: "08"}};
    test:assertEquals(rxaToImmunization(rxaMinute).occurrenceDateTime, "2003-09-01T10:30:00Z", "RXA-3 minute precision");
}

@test:Config {}
function rxRxaDateTimezoneConversionTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20030901103000-0500"}, rxa5: {ce1: "08"}};
    test:assertEquals(rxaToImmunization(rxa).occurrenceDateTime, "2003-09-01T10:30:00-05:00", "RXA-3 with seconds + tz");
    hl7v23:RXA rxaMinute = {name: "RXA", rxa3: {ts1: "200309011030-0500"}, rxa5: {ce1: "08"}};
    test:assertEquals(rxaToImmunization(rxaMinute).occurrenceDateTime, "2003-09-01T10:30:00-05:00", "RXA-3 minute + tz");
}

@test:Config {}
function rxRxaCompletionStatusVocabularyTest() {
    // CompletionStatus concept map (HL70322 → event-status)
    map<string> expected = {"CP": "completed", "RE": "not-done", "NA": "not-done", "PA": "completed"};
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa20: v2Code};
        test:assertEquals(rxaToImmunization(rxa).status, fhirCode, string `RXA-20 ${v2Code} → ${fhirCode}`);
    }
    // RXA-20 not valued (and RXA-21 != D) → "completed"
    hl7v23:RXA rxaNoStatus = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}};
    test:assertEquals(rxaToImmunization(rxaNoStatus).status, "completed", "RXA-20 not valued → completed");
}

@test:Config {}
function rxRxaActionCodeDeletedTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa20: "CP", rxa21: "D"};
    test:assertEquals(rxaToImmunization(rxa).status, "entered-in-error", "RXA-21 D → entered-in-error");
}

@test:Config {}
function rxRxaRecordedOnlyWhenActionAddTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa21: "U", rxa22: {ts1: "20230902"}};
    test:assertEquals(rxaToImmunization(rxa).recorded, (), "RXA-22 must not map when RXA-21 != A");
}

@test:Config {}
function rxRxaNoEmptyOccurrenceStringTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}};
    international401:Immunization imm = rxaToImmunization(rxa);
    test:assertEquals(imm.occurrenceString, (), "occurrenceString must not be an empty string");
    test:assertEquals(imm.occurrenceDateTime, "2023-09-01");
}

@test:Config {}
function rxRxaDoseQuantitySystemAndUnitTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa6: "1", rxa7: {ce1: "mL", ce3: "UCUM"}};
    r4:Quantity dose = rxaToImmunization(rxa).doseQuantity ?: {};
    test:assertEquals(dose.system, "http://unitsofmeasure.org", "RXA-7.3 → doseQuantity.system (URI)");
    test:assertEquals(dose.unit, "mL", "RXA-7.1 → doseQuantity.unit when RXA-7.2 not valued");
}

@test:Config {}
function rxRxaManufacturerIdentifierTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa17: [{ce1: "MSD", ce2: "Merck", ce3: "MVX"}]};
    r4:Reference mfr = rxaToImmunization(rxa).manufacturer ?: {};
    test:assertEquals(mfr.identifier?.value, "MSD", "RXA-17.1 → Organization.identifier.value");
    test:assertEquals(mfr.identifier?.system, "http://terminology.hl7.org/CodeSystem/MVX", "RXA-17.3 → Organization.identifier.system (URI)");
}

@test:Config {}
function rxRxaExpirationDateTruncationTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa16: [{ts1: "20251231000000"}]};
    test:assertEquals(rxaToImmunization(rxa).expirationDate, "2025-12-31", "RXA-16 must be a date");
}

@test:Config {}
function rxRxaManufacturerCodeFallbackTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa17: [{ce1: "MSD"}]};
    test:assertEquals(rxaToImmunization(rxa).manufacturer?.display, "MSD", "RXA-17.1 used when name missing");
}

@test:Config {}
function rxRxaMinimalSegmentTest() {
    hl7v23:RXA rxa = {name: "RXA"};
    international401:Immunization imm = rxaToImmunization(rxa);
    test:assertEquals(imm.status, "completed", "Default status");
    test:assertEquals(imm.occurrenceDateTime, (), "No RXA-3 → no occurrenceDateTime");
    test:assertEquals(imm.doseQuantity, ());
    test:assertEquals(imm.performer, ());
    test:assertEquals(imm.lotNumber, (), "Default empty RXA-15 rep must not produce empty lotNumber");
    test:assertEquals(imm.expirationDate, ());
    test:assertEquals(imm.manufacturer, ());
    test:assertEquals(imm.statusReason, ());
    test:assertEquals(imm.reasonCode, ());
    test:assertEquals(imm.recorded, ());
}

@test:Config {}
function rxRxaInvalidDoseAmountTest() {
    hl7v23:RXA rxa = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "08"}, rxa6: "abc", rxa7: {ce1: "mL"}};
    test:assertEquals(rxaToImmunization(rxa).doseQuantity, (), "Non-numeric RXA-6 is ignored");

    hl7v23:RXA rxaUnknown = {name: "RXA", rxa3: {ts1: "20230901"}, rxa5: {ce1: "998"}, rxa6: "999"};
    r4:Quantity dose = rxaToImmunization(rxaUnknown).doseQuantity ?: {};
    test:assertEquals(dose.value, 999d, "RXA-6 without units");
    test:assertEquals(dose.code, (), "No RXA-7 → no code");
    test:assertEquals(dose.unit, ());
}

// ==========================================================================================
// RXO → MedicationRequest
// ==========================================================================================

@test:Config {}
function rxRxoFullMappingTest() {
    hl7v23:RXO rxo = {
        name: "RXO",
        rxo1: {ce1: "00904-2341-61", ce2: "Amoxicillin 250mg", ce3: "NDC"},
        rxo2: "250",
        rxo3: "500",
        rxo4: {ce1: "mg", ce2: "milligram", ce3: "UCUM"},
        rxo9: "G",
        rxo11: "30",
        rxo13: "2",
        rxo14: {xcn1: "PHYS001", xcn2: "Smith", xcn3: "John"}
    };
    international401:MedicationRequest mr = rxoToMedicationRequest(rxo);

    test:assertEquals(mr.intent, "original-order", "RXO → intent original-order");

    // RXO-1 → medication.code
    r4:Coding med = rxFirstCoding(mr.medicationCodeableConcept);
    test:assertEquals(med.code, "00904-2341-61", "RXO-1 → medication code");
    test:assertEquals(med.display, "Amoxicillin 250mg");
    test:assertEquals(med.system, "http://hl7.org/fhir/sid/ndc");

    // RXO-2/3/4 → doseAndRate.doseRange
    r4:Dosage[] dosages = mr.dosageInstruction ?: [];
    test:assertEquals(dosages.length(), 1);
    r4:ElementDoseAndRate[] dar = dosages[0].doseAndRate ?: [];
    test:assertEquals(dar.length(), 1);
    r4:Range range = dar[0].doseRange ?: {};
    test:assertEquals(range.low?.value, 250d, "RXO-2 → doseRange.low.value");
    test:assertEquals(range.high?.value, 500d, "RXO-3 → doseRange.high.value");
    test:assertEquals(range.low?.code, "mg", "RXO-4.1 → doseRange.low.code");
    test:assertEquals(range.low?.unit, "milligram", "RXO-4.2 → doseRange.low.unit");
    test:assertEquals(range.high?.code, "mg", "RXO-4.1 → doseRange.high.code");
    test:assertEquals(range.high?.unit, "milligram", "RXO-4.2 → doseRange.high.unit");

    // RXO-9 → substitution.allowedCodeableConcept
    international401:MedicationRequestSubstitution subst = mr.substitution ?: {allowedCodeableConcept: {}};
    test:assertEquals(rxFirstCoding(subst.allowedCodeableConcept).code, "G", "RXO-9 → substitution");

    // RXO-11 / RXO-13 → dispenseRequest
    international401:MedicationRequestDispenseRequest dr = mr.dispenseRequest ?: {};
    test:assertEquals(dr.quantity?.value, 30d, "RXO-11 → dispenseRequest.quantity.value");
    test:assertEquals(dr.numberOfRepeatsAllowed, 2, "RXO-13 → numberOfRepeatsAllowed");

    // RXO-14 → requester
    test:assertEquals(mr.requester?.reference, "Practitioner/PHYS001", "RXO-14 → requester");
    test:assertEquals(mr.requester?.display, "John Smith");
}

@test:Config {}
function rxRxoDoseRateTypeOrderedTest() {
    hl7v23:RXO rxo = {name: "RXO", rxo1: {ce1: "X"}, rxo2: "250", rxo4: {ce1: "mg"}};
    r4:Dosage[] dosages = rxoToMedicationRequest(rxo).dosageInstruction ?: [];
    r4:ElementDoseAndRate[] dar = dosages.length() > 0 ? (dosages[0].doseAndRate ?: []) : [];
    test:assertTrue(dar.length() > 0);
    test:assertEquals(rxFirstCoding(dar[0].'type).code, "ordered", "doseAndRate.type = ordered");
}

@test:Config {}
function rxRxoLowOnlyNoEmptyHighTest() {
    hl7v23:RXO rxo = {name: "RXO", rxo1: {ce1: "X"}, rxo2: "250", rxo4: {ce1: "mg"}};
    international401:MedicationRequest mr = rxoToMedicationRequest(rxo);
    r4:Dosage[] dosages = mr.dosageInstruction ?: [];
    r4:ElementDoseAndRate[] dar = dosages[0].doseAndRate ?: [];
    r4:Range range = dar[0].doseRange ?: {};
    test:assertEquals(range.low?.value, 250d);
    test:assertEquals(range.high, (), "RXO-3 not valued → no doseRange.high");
}

@test:Config {}
function rxRxoAllowSubstitutionVocabularyTest() {
    foreach string code in ["N", "G", "T"] {
        hl7v23:RXO rxo = {name: "RXO", rxo1: {ce1: "X"}, rxo9: code};
        international401:MedicationRequestSubstitution subst = rxoToMedicationRequest(rxo).substitution
            ?: {allowedCodeableConcept: {}};
        test:assertTrue(rxHasCoding(subst.allowedCodeableConcept, "http://terminology.hl7.org/CodeSystem/v2-0161", code),
            string `RXO-9 ${code} → v2-0161`);
    }
}

@test:Config {}
function rxRxoDispenseUnitsTest() {
    hl7v23:RXO rxo = {name: "RXO", rxo1: {ce1: "X"}, rxo11: "30", rxo12: {ce1: "TAB", ce2: "Tablet"}};
    international401:MedicationRequestDispenseRequest dr = rxoToMedicationRequest(rxo).dispenseRequest ?: {};
    test:assertEquals(dr.quantity?.value, 30d);
    test:assertEquals(dr.quantity?.code, "TAB", "RXO-12.1 → dispenseRequest.quantity.code");
    test:assertEquals(dr.quantity?.unit, "Tablet", "RXO-12.2 → dispenseRequest.quantity.unit");
}

@test:Config {}
function rxRxoMinimalSegmentTest() {
    hl7v23:RXO rxo = {name: "RXO"};
    international401:MedicationRequest mr = rxoToMedicationRequest(rxo);
    test:assertEquals(mr.intent, "original-order");
    test:assertEquals(mr.dosageInstruction, (), "No RXO-2/3 → no dosageInstruction");
    test:assertEquals(mr.substitution, ());
    test:assertEquals(mr.dispenseRequest, ());
    test:assertEquals(mr.requester, ());
    test:assertTrue(rxIsEmptyCodeableConcept(mr.medicationCodeableConcept));
}

@test:Config {}
function rxRxoInvalidNumericValuesTest() {
    hl7v23:RXO rxo = {name: "RXO", rxo1: {ce1: "X"}, rxo2: "abc", rxo3: "def", rxo11: "many", rxo13: "x"};
    international401:MedicationRequest mr = rxoToMedicationRequest(rxo);
    test:assertEquals(mr.dosageInstruction, (), "Non-numeric RXO-2/3 ignored");
    test:assertEquals(mr.dispenseRequest, (), "Non-numeric RXO-11/13 ignored");
}

@test:Config {}
function rxRxoRefillsOnlyTest() {
    hl7v23:RXO rxo = {name: "RXO", rxo1: {ce1: "X"}, rxo13: "5"};
    international401:MedicationRequestDispenseRequest dr = rxoToMedicationRequest(rxo).dispenseRequest ?: {};
    test:assertEquals(dr.numberOfRepeatsAllowed, 5);
    test:assertEquals(dr.quantity, ());
}

// ==========================================================================================
// RXR → Immunization / MedicationRequest
// ==========================================================================================

@test:Config {}
function rxRxrImmunizationRouteSiteTest() {
    hl7v23:RXR rxr = {
        name: "RXR",
        rxr1: {ce1: "IM", ce2: "Intramuscular", ce3: "HL70162"},
        rxr2: {ce1: "LA", ce2: "Left Arm", ce3: "HL70163"}
    };
    international401:Immunization imm = rxrToImmunization(rxr);
    test:assertEquals(rxFirstCoding(imm.route).code, "IM", "RXR-1 → route");
    test:assertEquals(rxFirstCoding(imm.site).code, "LA", "RXR-2 → site");
    test:assertEquals(rxFirstCoding(imm.site).display, "Left Arm");
}

@test:Config {}
function rxRxrImmunizationRouteVocabularyTest() {
    map<string> expected = {"IM": "IM", "ID": "IDINJ", "SC": "SQ", "PO": "PO", "IV": "IVINJ"};
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        hl7v23:RXR rxr = {name: "RXR", rxr1: {ce1: v2Code, ce3: "HL70162"}};
        test:assertTrue(rxHasCoding(rxrToImmunization(rxr).route,
                "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration", fhirCode),
            string `RXR-1 ${v2Code} → ${fhirCode}`);
    }
}

@test:Config {}
function rxRxrImmunizationNoEmptyStringsTest() {
    hl7v23:RXR rxr = {name: "RXR", rxr1: {ce1: "IM"}};
    international401:Immunization imm = rxrToImmunization(rxr);
    test:assertEquals(imm.occurrenceString, (), "occurrenceString must not be empty string");
    test:assertEquals(imm.occurrenceDateTime, (), "occurrenceDateTime must not be empty string");
}

@test:Config {}
function rxRxrImmunizationEmptyTest() {
    international401:Immunization imm = rxrToImmunization({name: "RXR"});
    test:assertEquals(imm.route, ());
    test:assertEquals(imm.site, ());
}

@test:Config {}
function rxRxrMedicationRequestFullTest() {
    hl7v23:RXR rxr = {
        name: "RXR",
        rxr1: {ce1: "PO", ce2: "Oral", ce3: "HL70162"},
        rxr2: {ce1: "MTH", ce2: "Mouth", ce3: "HL70163"},
        rxr4: {ce1: "CH", ce2: "Chew", ce3: "HL70165"}
    };
    international401:MedicationRequest mr = rxrToMedicationRequest(rxr);
    r4:Dosage[] dosages = mr.dosageInstruction ?: [];
    test:assertEquals(dosages.length(), 1);
    test:assertEquals(rxFirstCoding(dosages[0].route).code, "PO", "RXR-1 → dosageInstruction.route");
    test:assertEquals(rxFirstCoding(dosages[0].site).code, "MTH", "RXR-2 → dosageInstruction.site");
    // AdministrationMethod concept map: CH → SNOMED 419747000
    test:assertEquals(rxFirstCoding(dosages[0].method).code, "419747000", "RXR-4 → dosageInstruction.method");
}

@test:Config {}
function rxRxrMedicationRequestMethodVocabularyTest() {
    map<string> expected = {"CH": "419747000", "DI": "421682005", "IS": "421257003", "SH": "420606003", "WA": "422152000"};
    foreach [string, string] [v2Code, snomed] in expected.entries() {
        hl7v23:RXR rxr = {name: "RXR", rxr1: {ce1: "PO"}, rxr4: {ce1: v2Code, ce3: "HL70165"}};
        r4:Dosage[] dosages = rxrToMedicationRequest(rxr).dosageInstruction ?: [];
        test:assertTrue(rxHasCoding(dosages[0].method, "http://snomed.info/sct", snomed),
            string `RXR-4 ${v2Code} → SNOMED ${snomed}`);
    }
}

@test:Config {}
function rxRxrMedicationRequestEmptyTest() {
    international401:MedicationRequest mr = rxrToMedicationRequest({name: "RXR"});
    test:assertEquals(mr.dosageInstruction, (), "Empty RXR → no dosageInstruction");
}

@test:Config {}
function rxRxrHelperPredicatesTest() {
    hl7v23:RXR empty = {name: "RXR"};
    test:assertFalse(hasRxrImmunizationData(empty));
    test:assertFalse(hasRxrMedicationOrderContext(empty));

    hl7v23:RXR routeOnly = {name: "RXR", rxr1: {ce1: "IM"}};
    test:assertTrue(hasRxrImmunizationData(routeOnly));
    test:assertFalse(hasRxrMedicationOrderContext(routeOnly));

    hl7v23:RXR siteTextOnly = {name: "RXR", rxr2: {ce2: "Left Arm"}};
    test:assertTrue(hasRxrImmunizationData(siteTextOnly));

    hl7v23:RXR methodOnly = {name: "RXR", rxr4: {ce1: "CH"}};
    test:assertFalse(hasRxrImmunizationData(methodOnly));
    test:assertTrue(hasRxrMedicationOrderContext(methodOnly));

    test:assertTrue(hasMeaningfulRxrImmunizationResource(rxrToImmunization(routeOnly)));
    test:assertTrue(hasMeaningfulRxrImmunizationResource(rxrToImmunization(siteTextOnly)));
    test:assertFalse(hasMeaningfulRxrImmunizationResource(rxrToImmunization(empty)));

    test:assertTrue(hasMeaningfulRxrMedicationRequestResource(rxrToMedicationRequest(methodOnly)));
    test:assertFalse(hasMeaningfulRxrMedicationRequestResource(rxrToMedicationRequest(empty)));
}

// ==========================================================================================
// SCH → Appointment
// ==========================================================================================

@test:Config {}
function rxSchFullMappingTest() {
    hl7v23:SCH sch = {
        name: "SCH",
        sch1: {ei1: "10345", ei2: "PLACER"},
        sch2: {ei1: "20345", ei2: "FILLER"},
        sch7: {ce1: "FOLLOWUP", ce2: "Follow up visit", ce3: "HL70276"},
        sch8: {ce1: "Normal", ce2: "Routine", ce3: "HL70277"},
        sch9: "30",
        sch10: {ce1: "min", ce3: "ANS+"},
        sch12: {xcn1: "PL001", xcn2: "Placer", xcn3: "Paul"},
        sch16: {xcn1: "FI001", xcn2: "Filler", xcn3: "Fiona"},
        sch20: {xcn1: "EN001", xcn2: "Enterer", xcn3: "Eve"},
        sch25: {ce1: "Pending", ce3: "HL70278"}
    };
    international401:Appointment appt = schToAppointment(sch);

    r4:Identifier[] ids = appt.identifier ?: [];
    test:assertEquals(ids.length(), 2, "SCH-1, SCH-2 → identifier[]");
    test:assertEquals(ids[0].value, "10345", "SCH-1 → identifier[1].value");
    test:assertEquals(ids[1].value, "20345", "SCH-2 → identifier[2].value");

    r4:CodeableConcept[] reasons = appt.reasonCode ?: [];
    test:assertEquals(reasons.length(), 1);
    // AppointmentReasonCodes concept map: FOLLOWUP → SNOMED 185389009
    test:assertEquals(rxFirstCoding(reasons[0]).code, "185389009", "SCH-7 → reasonCode");
    test:assertEquals(rxFirstCoding(appt.appointmentType).code, "Normal", "SCH-8 → appointmentType");
    test:assertEquals(appt.minutesDuration, 30, "SCH-9 (minutes) → minutesDuration");
    test:assertEquals(appt.status, "pending", "SCH-25 Pending → pending");

    international401:AppointmentParticipant[] parts = appt.participant;
    test:assertEquals(parts.length(), 3, "SCH-12, SCH-16, SCH-20 → participant[1..3]");
    test:assertEquals(parts[0].actor?.reference, "Practitioner/PL001", "SCH-12 → participant[1].actor");
    test:assertEquals(parts[0].actor?.display, "Paul Placer");
    test:assertEquals(parts[1].actor?.reference, "Practitioner/FI001", "SCH-16 → participant[2].actor");
    test:assertEquals(parts[2].actor?.reference, "Practitioner/EN001", "SCH-20 → participant[3].actor");
}

@test:Config {}
function rxSchFillerStatusImplementedCodesTest() {
    // FillerStatusCodes[Appointment] concept map — codes currently handled
    map<string> expected = {"Pending": "pending", "Complete": "fulfilled", "Cancelled": "cancelled"};
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        test:assertEquals(schToAppointment(rxSchWithStatus(v2Code)).status, fhirCode,
            string `SCH-25 ${v2Code} → ${fhirCode}`);
    }
}

@test:Config {}
function rxSchFillerStatusMissingCodesTest() {
    map<string> expected = {
        "Booked": "booked",
        "Waitlist": "waitlist",
        "Started": "checked-in",
        "Deleted": "entered-in-error",
        "Noshow": "noshow"
    };
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        test:assertEquals(schToAppointment(rxSchWithStatus(v2Code)).status, fhirCode,
            string `SCH-25 ${v2Code} → ${fhirCode}`);
    }
}

@test:Config {}
function rxSchMinimalSegmentTest() {
    international401:Appointment appt = schToAppointment({name: "SCH"});
    test:assertEquals(appt.status, "proposed", "No SCH-25 → default status");
    test:assertEquals(appt.identifier, ());
    test:assertEquals(appt.reasonCode, ());
    test:assertEquals(appt.appointmentType, ());
    test:assertEquals(appt.minutesDuration, ());
    test:assertEquals(appt.participant.length(), 1, "Required participant placeholder");
    test:assertEquals(appt.participant[0].status, "needs-action");
    test:assertEquals(appt.participant[0].actor, ());
}

@test:Config {}
function rxSchInvalidDurationTest() {
    hl7v23:SCH sch = {name: "SCH", sch9: "abc", sch10: {ce1: "min"}};
    test:assertEquals(schToAppointment(sch).minutesDuration, (), "Non-numeric SCH-9 ignored");
}

@test:Config {}
function rxSchDurationUnitsTest() {
    hl7v23:SCH sch = {name: "SCH", sch9: "2", sch10: {ce1: "h", ce2: "hours", ce3: "ANS+"}};
    test:assertNotEquals(schToAppointment(sch).minutesDuration, 2, "SCH-9 in hours must not map as minutes");
}

@test:Config {}
function rxSchTimingQuantityStartEndTest() {
    hl7v23:SCH sch = {
        name: "SCH",
        sch1: {ei1: "A1"},
        sch11: [{tq3: "30", tq4: {ts1: "20230901090000"}, tq5: {ts1: "20230901093000"}}]
    };
    international401:Appointment appt = schToAppointment(sch);
    test:assertEquals(appt.'start, "2023-09-01T09:00:00Z", "SCH-11.4 → start");
    test:assertEquals(appt.end, "2023-09-01T09:30:00Z", "SCH-11.5 → end");
}

@test:Config {}
function rxSchReasonConditionAndVocabularyTest() {
    hl7v23:SCH typeInSch7 = {name: "SCH", sch7: {ce1: "Tentative", ce3: "HL70277"}};
    international401:Appointment appt = schToAppointment(typeInSch7);
    test:assertEquals(appt.reasonCode, (), "SCH-7 coded with HL70277 is not a reason");
    test:assertEquals(rxFirstCoding(appt.appointmentType).code, "Tentative", "SCH-7 HL70277 → appointmentType");

    hl7v23:SCH reason = {name: "SCH", sch7: {ce1: "CHECKUP", ce3: "HL70276"}};
    r4:CodeableConcept[] reasons = schToAppointment(reason).reasonCode ?: [];
    test:assertTrue(reasons.length() > 0 && rxHasCoding(reasons[0], "http://snomed.info/sct", "866149003"),
        "SCH-7 CHECKUP → SNOMED 866149003");
}

@test:Config {}
function rxSchAppointmentTypeVocabularyTest() {
    hl7v23:SCH sch = {name: "SCH", sch8: {ce1: "Normal", ce3: "HL70277"}};
    test:assertTrue(rxHasCoding(schToAppointment(sch).appointmentType,
            "http://terminology.hl7.org/CodeSystem/v2-0277", "Normal"));
}

@test:Config {}
function rxSchParticipantTypeTest() {
    hl7v23:SCH sch = {
        name: "SCH",
        sch12: {xcn1: "PL001"},
        sch16: {xcn1: "FI001"},
        sch20: {xcn1: "EN001"}
    };
    international401:AppointmentParticipant[] parts = schToAppointment(sch).participant;
    r4:CodeableConcept[] enterTypes = parts[2].'type ?: [];
    test:assertTrue(enterTypes.length() > 0 && rxHasCoding(enterTypes[0],
            "http://terminology.hl7.org/CodeSystem/provenance-participant-type", "enterer"));
    r4:CodeableConcept[] placerTypes = parts[0].'type ?: [];
    test:assertEquals(rxFirstCoding(placerTypes.length() > 0 ? placerTypes[0] : ()).system,
        "http://terminology.hl7.org/CodeSystem/participant-type");
}

@test:Config {}
function rxSchFillerOnlyParticipantTest() {
    hl7v23:SCH sch = {name: "SCH", sch16: {xcn2: "Filler", xcn3: "Fiona"}};
    international401:AppointmentParticipant[] parts = schToAppointment(sch).participant;
    test:assertEquals(parts.length(), 1);
    test:assertEquals(parts[0].actor?.display, "Fiona Filler", "Name-only XCN → display");
    test:assertEquals(parts[0].actor?.reference, (), "No XCN-1 → no reference");
}

// ==========================================================================================
// AIG → Appointment
// ==========================================================================================

@test:Config {}
function rxAigFullMappingTest() {
    hl7v23:AIG aig = {
        name: "AIG",
        aig1: "1",
        aig3: {ce1: "XRAY01", ce2: "X-Ray Machine 1"},
        aig4: {ce1: "EQUIP", ce2: "Equipment"},
        aig8: {ts1: "20230901090000"}
    };
    international401:Appointment appt = aigToAppointment(aig);
    test:assertEquals(appt.participant.length(), 1);
    international401:AppointmentParticipant p = appt.participant[0];
    test:assertEquals(p.actor?.display, "X-Ray Machine 1", "AIG-3 → participant.actor");
    r4:CodeableConcept[] types = p.'type ?: [];
    test:assertEquals(rxFirstCoding(types.length() > 0 ? types[0] : ()).code, "EQUIP", "AIG-4 → participant.type");
    test:assertEquals(p.period?.'start, "2023-09-01T09:00:00Z", "AIG-8 → participant.period.start");
}

@test:Config {}
function rxAigActorCodeFallbackAndMinimalTest() {
    hl7v23:AIG aig = {name: "AIG", aig3: {ce1: "XRAY01"}};
    test:assertEquals(aigToAppointment(aig).participant[0].actor?.display, "XRAY01");

    international401:Appointment empty = aigToAppointment({name: "AIG"});
    test:assertEquals(empty.participant.length(), 1);
    test:assertEquals(empty.participant[0].actor, ());
    test:assertEquals(empty.participant[0].'type, ());
    test:assertEquals(empty.participant[0].period, ());
    test:assertEquals(empty.participant[0].status, "needs-action");
}

@test:Config {}
function rxAigDurationEndTest() {
    hl7v23:AIG aig = {name: "AIG", aig3: {ce1: "R1"}, aig8: {ts1: "20230901090000"}, aig11: "30", aig12: {ce1: "min"}};
    test:assertEquals(aigToAppointment(aig).participant[0].period?.end, "2023-09-01T09:30:00Z");
}

// ==========================================================================================
// AIL → Appointment
// ==========================================================================================

@test:Config {}
function rxAilFullMappingTest() {
    hl7v23:AIL ail = {
        name: "AIL",
        ail1: "1",
        ail3: {pl1: "CLINIC-A", pl2: "Room 1", pl4: {hd1: "HOSP"}},
        ail6: {ts1: "20230901090000"}
    };
    international401:AppointmentParticipant p = ailToAppointment(ail).participant[0];
    test:assertEquals(p.actor?.display, "CLINIC-A", "AIL-3 → participant.actor");
    test:assertEquals(p.period?.'start, "2023-09-01T09:00:00Z", "AIL-6 → participant.period.start");
}

@test:Config {}
function rxAilMinimalTest() {
    international401:Appointment appt = ailToAppointment({name: "AIL"});
    test:assertEquals(appt.status, "proposed");
    test:assertEquals(appt.participant[0].actor, ());
    test:assertEquals(appt.participant[0].period, ());
}

@test:Config {}
function rxAilDurationEndTest() {
    hl7v23:AIL ail = {name: "AIL", ail3: {pl1: "CLINIC-A"}, ail6: {ts1: "20230901090000"}, ail9: "45", ail10: {ce1: "min"}};
    test:assertEquals(ailToAppointment(ail).participant[0].period?.end, "2023-09-01T09:45:00Z");
}

// ==========================================================================================
// AIP → Appointment
// ==========================================================================================

@test:Config {}
function rxAipFullMappingTest() {
    hl7v23:AIP aip = {
        name: "AIP",
        aip1: "1",
        aip3: {xcn1: "DOC123", xcn2: "House", xcn3: "Gregory"},
        aip4: {ce1: "ATND", ce2: "attender", ce3: "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"},
        aip6: {ts1: "20230901090000"},
        aip12: {ce1: "Accepted"}
    };
    international401:AppointmentParticipant p = aipToAppointment(aip).participant[0];
    test:assertEquals(p.actor?.reference, "Practitioner/DOC123", "AIP-3 → participant.actor");
    test:assertEquals(p.actor?.display, "Gregory House");
    r4:CodeableConcept[] types = p.'type ?: [];
    test:assertEquals(types.length(), 1);
    test:assertEquals(rxFirstCoding(types[0]).code, "ATND", "AIP-4 → participant.type");
    test:assertEquals(p.period?.'start, "2023-09-01T09:00:00Z", "AIP-6 → participant.period.start");
    test:assertEquals(p.status, "accepted", "AIP-12 → participant.status");
}

@test:Config {}
function rxAipStatusValuesTest() {
    map<string> expected = {"Accepted": "accepted", "Declined": "declined", "Tentative": "tentative", "Other": "needs-action"};
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        hl7v23:AIP aip = {name: "AIP", aip3: {xcn1: "D1"}, aip12: {ce1: v2Code}};
        test:assertEquals(aipToAppointment(aip).participant[0].status, fhirCode, string `AIP-12 ${v2Code}`);
    }
    international401:Appointment empty = aipToAppointment({name: "AIP"});
    test:assertEquals(empty.participant[0].status, "needs-action");
    test:assertEquals(empty.participant[0].actor, ());
    test:assertEquals(empty.participant[0].'type, ());
    test:assertEquals(empty.participant[0].period, ());
}

@test:Config {}
function rxAipDurationEndTest() {
    hl7v23:AIP aip = {name: "AIP", aip3: {xcn1: "D1"}, aip6: {ts1: "20230901090000"}, aip9: "15", aip10: {ce1: "min"}};
    test:assertEquals(aipToAppointment(aip).participant[0].period?.end, "2023-09-01T09:15:00Z");
}

// ==========================================================================================
// AIS → Appointment
// ==========================================================================================

@test:Config {}
function rxAisServiceTypeAndStatusTest() {
    hl7v23:AIS ais = {
        name: "AIS",
        ais1: "1",
        ais3: {ce1: "CONSULT", ce2: "Consultation", ce3: "LOCAL"},
        ais10: {ce1: "Complete", ce3: "HL70278"}
    };
    international401:Appointment appt = aisToAppointment(ais);
    r4:CodeableConcept[] serviceTypes = appt.serviceType ?: [];
    test:assertEquals(serviceTypes.length(), 1);
    test:assertEquals(rxFirstCoding(serviceTypes[0]).code, "CONSULT", "AIS-3 → serviceType");
    test:assertEquals(rxFirstCoding(serviceTypes[0]).display, "Consultation");
    test:assertEquals(appt.status, "fulfilled", "AIS-10 Complete → fulfilled");

    map<string> expected = {"Pending": "pending", "Cancelled": "cancelled"};
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        test:assertEquals(aisToAppointment(rxAisWithStatus(v2Code)).status, fhirCode, string `AIS-10 ${v2Code}`);
    }
}

@test:Config {}
function rxAisMinimalTest() {
    international401:Appointment appt = aisToAppointment({name: "AIS"});
    test:assertEquals(appt.status, "proposed");
    test:assertEquals(appt.serviceType, ());
    test:assertEquals(appt.participant.length(), 1);
}

@test:Config {}
function rxAisFillerStatusMissingCodesTest() {
    map<string> expected = {
        "Booked": "booked",
        "Waitlist": "waitlist",
        "Started": "checked-in",
        "Deleted": "entered-in-error",
        "Noshow": "noshow"
    };
    foreach [string, string] [v2Code, fhirCode] in expected.entries() {
        test:assertEquals(aisToAppointment(rxAisWithStatus(v2Code)).status, fhirCode, string `AIS-10 ${v2Code}`);
    }
}

@test:Config {}
function rxAisStartAndDurationTest() {
    hl7v23:AIS ais = {name: "AIS", ais3: {ce1: "CONSULT"}, ais4: {ts1: "20230901090000"}, ais7: "30", ais8: {ce1: "min"}};
    international401:AppointmentParticipant p = aisToAppointment(ais).participant[0];
    test:assertEquals(p.period?.'start, "2023-09-01T09:00:00Z", "AIS-4 → participant.period.start");
    test:assertEquals(p.period?.end, "2023-09-01T09:30:00Z", "AIS-7 → participant.period.end");
}
