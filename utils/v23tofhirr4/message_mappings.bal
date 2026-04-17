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

// --------------------------------------------------------------------------------------------#
// Source HL7 Version 2 to FHIR - Message Maps
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/message_maps.html
// --------------------------------------------------------------------------------------------#

import ballerinax/health.fhir.r4 as r4;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

// --------------------------------------------------------------------------------------------#
// Message-type dispatcher: maps a parsed HL7v23 message to a typed FHIR Bundle using the
// IG-specified message-level ConceptMap. Returns () for unsupported message types so the
// caller can fall back to the generic segment-by-segment approach (transformToFhir).
// ORU_R01 is excluded here because its PATIENT_RESULT segment groups are stored as dynamic
// record fields; the generic path handles them better via message.entries() iteration.
// --------------------------------------------------------------------------------------------#
isolated function mapMessageToBundle(hl7:Message message) returns r4:Bundle|error? {
    match message.name {
        "ADT_A01" => {
            return adtA01ToBundle(check message.ensureType(hl7v23:ADT_A01));
        }
        "ADT_A02" => {
            return adtA02ToBundle(check message.ensureType(hl7v23:ADT_A02));
        }
        "ADT_A05" => {
            return adtA05ToBundle(check message.ensureType(hl7v23:ADT_A05));
        }
        "ADT_A06" => {
            return adtA06ToBundle(check message.ensureType(hl7v23:ADT_A06));
        }
        "ADT_A09" => {
            return adtA09ToBundle(check message.ensureType(hl7v23:ADT_A09));
        }
        "ADT_A11" => {
            return adtA11ToBundle(check message.ensureType(hl7v23:ADT_A11));
        }
        "ADT_A17" => {
            return adtA17ToBundle(check message.ensureType(hl7v23:ADT_A17));
        }
        "MDM_T02" => {
            return mdmT02ToBundle(check message.ensureType(hl7v23:MDM_T02));
        }
        "ORM_O01" => {
            return ormO01ToBundle(check message.ensureType(hl7v23:ORM_O01));
        }
        "SIU_S12" => {
            return siuS12ToBundle(check message.ensureType(hl7v23:SIU_S12));
        }
        "VXU_V04" => {
            return vxuV04ToBundle(check message.ensureType(hl7v23:VXU_V04));
        }
    }
    // ORU_R01 and all other unsupported types → fall back to generic segment mapping
    return ();
}

// --------------------------------------------------------------------------------------------#
// ADT_A01 (Admit/Visit Notification) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a01-to-bundle.html
// Segments: MSH, EVN, PID, PD1, NK1, PV1, PV2, OBX, AL1, DG1, PROCEDURE(PR1,ROL), INSURANCE(IN1,IN3)
// --------------------------------------------------------------------------------------------#
public isolated function adtA01ToBundle(hl7v23:ADT_A01 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // NK1 → RelatedPerson + Patient
    foreach hl7v23:NK1 nk1 in message.nk1 {
        entries.push(...populateBundleEntries(nk1ToRelatedPerson(nk1)));
        entries.push(...populateBundleEntries(nk1ToPatient(nk1)));
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation (single or component based on OBX-2/OBX-5 count — handled in obxToObservation)
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }
    // AL1 → AllergyIntolerance
    foreach hl7v23:AL1 al1 in message.al1 {
        entries.push(...populateBundleEntries(al1ToAllerygyIntolerance(al1)));
    }
    // DG1 → Condition
    foreach hl7v23:DG1 dg1 in message.dg1 {
        entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
    }
    // PROCEDURE group → Procedure + RelatedPerson (ROL)
    // Guard: pr11 (set-ID) is "" for Ballerina default empty instances
    foreach hl7v23:ADT_A01_PROCEDURE proc in message.procedure {
        if proc.pr1.pr11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(pr1ToProcedure(proc.pr1)));
        foreach hl7v23:ROL rol in proc.rol {
            if rol.rol1.ei1 != "" {
                entries.push(...populateBundleEntries(rolToRelatedPerson(rol)));
            }
        }
    }
    // INSURANCE group → Coverage + CareTeam (IN3)
    foreach hl7v23:ADT_A01_INSURANCE ins in message.insurance {
        if ins.in1.in11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(in1ToCoverage(ins.in1)));
        hl7v23:IN3? in3 = ins.in3;
        if in3 != () {
            entries.push(...populateBundleEntries(in3ToCareTeam(in3)));
        }
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ADT_A02 (Transfer a Patient) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a02-to-bundle.html
// Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX
// --------------------------------------------------------------------------------------------#
public isolated function adtA02ToBundle(hl7v23:ADT_A02 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ADT_A05 (Pre-Admit a Patient) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a05-to-bundle.html
// Segments: MSH, EVN, PID, PD1, NK1, PV1, PV2, OBX, AL1, DG1, PROCEDURE(PR1,ROL), INSURANCE(IN1,IN3)
// --------------------------------------------------------------------------------------------#
public isolated function adtA05ToBundle(hl7v23:ADT_A05 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // NK1 → RelatedPerson + Patient
    foreach hl7v23:NK1 nk1 in message.nk1 {
        entries.push(...populateBundleEntries(nk1ToRelatedPerson(nk1)));
        entries.push(...populateBundleEntries(nk1ToPatient(nk1)));
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }
    // AL1 → AllergyIntolerance
    foreach hl7v23:AL1 al1 in message.al1 {
        entries.push(...populateBundleEntries(al1ToAllerygyIntolerance(al1)));
    }
    // DG1 → Condition
    foreach hl7v23:DG1 dg1 in message.dg1 {
        entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
    }
    // PROCEDURE group → Procedure + RelatedPerson (ROL)
    // Guard: pr11 (set-ID) is "" for Ballerina default empty instances
    foreach hl7v23:ADT_A05_PROCEDURE proc in message.procedure {
        if proc.pr1.pr11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(pr1ToProcedure(proc.pr1)));
        foreach hl7v23:ROL rol in proc.rol {
            if rol.rol1.ei1 != "" {
                entries.push(...populateBundleEntries(rolToRelatedPerson(rol)));
            }
        }
    }
    // INSURANCE group → Coverage + CareTeam (IN3)
    foreach hl7v23:ADT_A05_INSURANCE ins in message.insurance {
        if ins.in1.in11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(in1ToCoverage(ins.in1)));
        hl7v23:IN3? in3 = ins.in3;
        if in3 != () {
            entries.push(...populateBundleEntries(in3ToCareTeam(in3)));
        }
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ADT_A06 (Change an Outpatient to an Inpatient) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a06-to-bundle.html
// Segments: MSH, EVN, PID, PD1, MRG, NK1, PV1, PV2, OBX, AL1, DG1, PROCEDURE, INSURANCE
// --------------------------------------------------------------------------------------------#
public isolated function adtA06ToBundle(hl7v23:ADT_A06 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // MRG → Account (optional)
    hl7v23:MRG? mrg = message.mrg;
    if mrg != () {
        entries.push(...populateBundleEntries(mrgToAccount(mrg)));
    }
    // NK1 → RelatedPerson + Patient
    foreach hl7v23:NK1 nk1 in message.nk1 {
        entries.push(...populateBundleEntries(nk1ToRelatedPerson(nk1)));
        entries.push(...populateBundleEntries(nk1ToPatient(nk1)));
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }
    // AL1 → AllergyIntolerance
    foreach hl7v23:AL1 al1 in message.al1 {
        entries.push(...populateBundleEntries(al1ToAllerygyIntolerance(al1)));
    }
    // DG1 → Condition
    foreach hl7v23:DG1 dg1 in message.dg1 {
        entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
    }
    // PROCEDURE group → Procedure + RelatedPerson (ROL)
    // Guard: pr11 (set-ID) is "" for Ballerina default empty instances
    foreach hl7v23:ADT_A06_PROCEDURE proc in message.procedure {
        if proc.pr1.pr11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(pr1ToProcedure(proc.pr1)));
        foreach hl7v23:ROL rol in proc.rol {
            if rol.rol1.ei1 != "" {
                entries.push(...populateBundleEntries(rolToRelatedPerson(rol)));
            }
        }
    }
    // INSURANCE group → Coverage + CareTeam (IN3)
    foreach hl7v23:ADT_A06_INSURANCE ins in message.insurance {
        if ins.in1.in11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(in1ToCoverage(ins.in1)));
        hl7v23:IN3? in3 = ins.in3;
        if in3 != () {
            entries.push(...populateBundleEntries(in3ToCareTeam(in3)));
        }
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ADT_A09 (Patient Departing - Tracking) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a09-to-bundle.html
// Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX, DG1
// --------------------------------------------------------------------------------------------#
public isolated function adtA09ToBundle(hl7v23:ADT_A09 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }
    // DG1 → Condition
    foreach hl7v23:DG1 dg1 in message.dg1 {
        entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ADT_A11 (Cancel Admit/Visit Notification) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a11-to-bundle.html
// Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX, DG1
// --------------------------------------------------------------------------------------------#
public isolated function adtA11ToBundle(hl7v23:ADT_A11 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }
    // DG1 → Condition
    foreach hl7v23:DG1 dg1 in message.dg1 {
        entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ADT_A17 (Swap Patients) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a17-to-bundle.html
// Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX
// --------------------------------------------------------------------------------------------#
public isolated function adtA17ToBundle(hl7v23:ADT_A17 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // PV2 → Encounter (optional)
    hl7v23:PV2? pv2 = message.pv2;
    if pv2 != () {
        entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// MDM_T02 (Original Document Notification with Content) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-mdm-t02-to-bundle.html
// Segments: MSH, EVN, PID, PV1, TXA, OBX
// --------------------------------------------------------------------------------------------#
public isolated function mdmT02ToBundle(hl7v23:MDM_T02 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // EVN → Provenance
    entries.push(...populateBundleEntries(evnToProvenance(message.evn)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PV1 → Encounter + Patient
    entries.push(...populateBundleEntries(pv1ToEncounter(message.pv1)));
    entries.push(...populateBundleEntries(pv1ToPatient(message.pv1)));
    // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
    if message.pv1.pv120[0].fc1 != "" {
        entries.push(...populateBundleEntries(pv1ToCoverage(message.pv1)));
    }
    // TXA → DocumentReference
    entries.push(...populateBundleEntries(txaToDocumentReference(message.txa)));
    // TXA-8 → Provenance (edit history): IG dependsOn IF TXA-8 (Edit Date/Time) IS VALUED
    if message.txa.txa8.length() > 0 && message.txa.txa8[0].ts1 != "" {
        entries.push(...populateBundleEntries(txaToProvenance(message.txa)));
    }
    // OBX → Observation
    foreach hl7v23:OBX obx in message.obx {
        entries.push(...populateBundleEntries(obxToObservation(obx)));
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ORM_O01 (General Order Message) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-orm-o01-to-bundle.html
// Segments: MSH, NTE, PATIENT(PID,PD1,NTE,AL1,PATIENT_VISIT(PV1,PV2),INSURANCE(IN1,IN3)),
//           ORDER(ORC, ORDER_DETAIL(NTE,DG1,ORDER_DETAIL_SEGMENT(OBR,RXO),OBSERVATION(OBX,NTE)))
// --------------------------------------------------------------------------------------------#
public isolated function ormO01ToBundle(hl7v23:ORM_O01 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // NTE[] → Observation (message-level notes)
    foreach hl7v23:NTE nte in message.nte {
        entries.push(...populateBundleEntries(nteToObservation(nte)));
    }

    // PATIENT group (optional)
    hl7v23:ORM_O01_PATIENT? patient = message.patient;
    if patient != () {
        // PID → Patient
        entries.push(...populateBundleEntries(pidToPatient(patient.pid)));
        // PD1 → Patient (optional)
        // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
        hl7v23:PD1? pd1 = patient.pd1;
        if pd1 != () {
            entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
            if pd1.pd17 != "" {
                entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
            }
        }
        // NTE → Observation (patient-level notes)
        foreach hl7v23:NTE nte in patient.nte {
            entries.push(...populateBundleEntries(nteToObservation(nte)));
        }
        // AL1 → AllergyIntolerance
        foreach hl7v23:AL1 al1 in patient.al1 {
            entries.push(...populateBundleEntries(al1ToAllerygyIntolerance(al1)));
        }
        // PATIENT_VISIT sub-group (optional)
        hl7v23:ORM_O01_PATIENT_VISIT? visit = patient.orm_o01_patient_visit;
        if visit != () {
            // PV1 → Encounter + Patient
            entries.push(...populateBundleEntries(pv1ToEncounter(visit.pv1)));
            entries.push(...populateBundleEntries(pv1ToPatient(visit.pv1)));
            // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
            if visit.pv1.pv120[0].fc1 != "" {
                entries.push(...populateBundleEntries(pv1ToCoverage(visit.pv1)));
            }
            // PV2 → Encounter (optional)
            hl7v23:PV2? pv2 = visit.pv2;
            if pv2 != () {
                entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
            }
        }
        // INSURANCE sub-groups → Coverage + CareTeam
        foreach hl7v23:ORM_O01_INSURANCE ins in patient.orm_o01_insurance {
            if ins.in1.in11 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(in1ToCoverage(ins.in1)));
            hl7v23:IN3? in3 = ins.in3;
            if in3 != () {
                entries.push(...populateBundleEntries(in3ToCareTeam(in3)));
            }
        }
    }

    // ORDER groups
    // Guard: orc1 (order control) is "" for Ballerina default empty instances
    foreach hl7v23:ORM_O01_ORDER 'order in message.'order {
        if 'order.orc.orc1 == "" {
            continue;
        }
        // ORC → ServiceRequest
        entries.push(...populateBundleEntries(orcToServiceRequest('order.orc)));

        // ORDER_DETAIL sub-group (optional)
        hl7v23:ORM_O01_ORDER_DETAIL? detail = 'order.orm_o01_order_detail;
        if detail != () {
            // NTE → Observation (order-level notes)
            foreach hl7v23:NTE nte in detail.nte {
                entries.push(...populateBundleEntries(nteToObservation(nte)));
            }
            // DG1 → Condition
            foreach hl7v23:DG1 dg1 in detail.dg1 {
                entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
            }
            // ORDER_DETAIL_SEGMENT (choice: OBR or RXO)
            // OBR → ServiceRequest (if PATIENT valued) / SupplyRequest (if PATIENT absent)
            hl7v23:OBR? obr = detail.orm_o01_order_detail_segment.obr;
            if obr != () {
                if patient != () {
                    // IG dependsOn: IF PID IS VALUED → ServiceRequest
                    entries.push(...populateBundleEntries(obrToServiceRequest(obr)));
                }
                entries.push(...populateBundleEntries(obrToDiagnosticReport(obr)));
            }
            hl7v23:RXO? rxo = detail.orm_o01_order_detail_segment.rxo;
            if rxo != () {
                entries.push(...populateBundleEntries(rxoToMedicationRequest(rxo)));
            }
            // OBSERVATION sub-groups → Observation
            // Guard: obx1 (set-ID) is "" for default empty instances
            foreach hl7v23:ORM_O01_OBSERVATION obs in detail.orm_o01_observation {
                if obs.obx.obx1 == "" {
                    continue;
                }
                entries.push(...populateBundleEntries(obxToObservation(obs.obx)));
                foreach hl7v23:NTE nte in obs.nte {
                    entries.push(...populateBundleEntries(nteToObservation(nte)));
                }
            }
        }
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// ORU_R01 (Unsolicited Observation Message) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-oru-r01-to-bundle.html
// Note: ORU_R01 in HL7v23 exposes only MSH and DSC as typed fields; nested PATIENT_RESULT
// groups (PID, PV1, OBR, OBX, NTE, ORC) are resolved dynamically by the HL7 parser at
// runtime. This function handles the typed fields and delegates nested group processing to
// the generic segment dispatcher. For programmatic access use v2ToFhir() which leverages
// the full HL7 message entries() iteration including dynamic segment groups.
// --------------------------------------------------------------------------------------------#
public isolated function oruR01ToBundle(hl7v23:ORU_R01 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader (only statically-typed field in ORU_R01 besides DSC)
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));

    // Nested PATIENT_RESULT groups (PID, PV1, OBR, OBX etc.) are stored as dynamic fields
    // in the parsed ORU_R01 record and are not accessible via static field names.
    // Use v2ToFhir() for complete ORU_R01 transformation including all nested groups.

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// SIU_S12 (Notification of New Appointment Booking) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-siu-s12-to-bundle.html
// Segments: MSH, SCH, NTE, PATIENT(PID,PV1,PV2,OBX,DG1),
//           RESOURCES(SERVICE(AIS,NTE), GENERAL_RESOURCE(AIG,NTE),
//                     LOCATION_RESOURCE(AIL,NTE), PERSONNEL_RESOURCE(AIP,NTE))
// --------------------------------------------------------------------------------------------#
public isolated function siuS12ToBundle(hl7v23:SIU_S12 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // SCH → Appointment
    entries.push(...populateBundleEntries(schToAppointment(message.sch)));
    // NTE → Observation (message-level notes)
    foreach hl7v23:NTE nte in message.nte {
        entries.push(...populateBundleEntries(nteToObservation(nte)));
    }

    // PATIENT groups
    // Guard: pid1 (set-ID) is "" for Ballerina default empty instances
    foreach hl7v23:SIU_S12_PATIENT patient in message.patient {
        if patient.pid.pid1 == "" {
            continue;
        }
        // PID → Patient
        entries.push(...populateBundleEntries(pidToPatient(patient.pid)));
        // PV1 → Encounter + Patient (optional in SIU_S12)
        hl7v23:PV1? pv1 = patient.pv1;
        if pv1 != () {
            entries.push(...populateBundleEntries(pv1ToEncounter(pv1)));
            entries.push(...populateBundleEntries(pv1ToPatient(pv1)));
            // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
            if pv1.pv120[0].fc1 != "" {
                entries.push(...populateBundleEntries(pv1ToCoverage(pv1)));
            }
        }
        // PV2 → Encounter (optional)
        hl7v23:PV2? pv2 = patient.pv2;
        if pv2 != () {
            entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
        }
        // OBX → Observation
        foreach hl7v23:OBX obx in patient.obx {
            if obx.obx1 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(obxToObservation(obx)));
        }
        // DG1 → Condition
        foreach hl7v23:DG1 dg1 in patient.dg1 {
            if dg1.dg11 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(dg1ToCondition(dg1)));
        }
    }

    // RESOURCES groups
    foreach hl7v23:SIU_S12_RESOURCES resources in message.resources {
        // SERVICE sub-groups → Appointment (AIS)
        // Guard: ais1 (set-ID) is "" for Ballerina default empty instances
        foreach hl7v23:SIU_S12_SERVICE svc in resources.siu_s12_service {
            if svc.ais.ais1 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(aisToAppointment(svc.ais)));
            foreach hl7v23:NTE nte in svc.nte {
                entries.push(...populateBundleEntries(nteToObservation(nte)));
            }
        }
        // GENERAL_RESOURCE sub-groups → Appointment (AIG)
        foreach hl7v23:SIU_S12_GENERAL_RESOURCE gen in resources.siu_s12_general_resource {
            if gen.aig.aig1 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(aigToAppointment(gen.aig)));
            foreach hl7v23:NTE nte in gen.nte {
                entries.push(...populateBundleEntries(nteToObservation(nte)));
            }
        }
        // LOCATION_RESOURCE sub-groups → Appointment (AIL)
        foreach hl7v23:SIU_S12_LOCATION_RESOURCE loc in resources.siu_s12_location_resource {
            if loc.ail.ail1 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(ailToAppointment(loc.ail)));
            foreach hl7v23:NTE nte in loc.nte {
                entries.push(...populateBundleEntries(nteToObservation(nte)));
            }
        }
        // PERSONNEL_RESOURCE sub-groups → Appointment (AIP)
        foreach hl7v23:SIU_S12_PERSONNEL_RESOURCE per in resources.siu_s12_personnel_resource {
            if per.aip.aip1 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(aipToAppointment(per.aip)));
            foreach hl7v23:NTE nte in per.nte {
                entries.push(...populateBundleEntries(nteToObservation(nte)));
            }
        }
    }

    bundle.entry = entries;
    return bundle;
}

// --------------------------------------------------------------------------------------------#
// VXU_V04 (Unsolicited Vaccination Record Update) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-vxu-v04-to-bundle.html
// Segments: MSH, PID, PD1, NK1, PATIENT(PV1,PV2), INSURANCE(IN1,IN3),
//           ORDER(ORC,RXA,RXR,OBSERVATION(OBX,NTE))
// --------------------------------------------------------------------------------------------#
public isolated function vxuV04ToBundle(hl7v23:VXU_V04 message) returns r4:Bundle|error {
    r4:Bundle bundle = {'type: "transaction"};
    r4:BundleEntry[] entries = [];

    // MSH → MessageHeader
    entries.push(...populateBundleEntries(mshToMessageHeader(message.msh)));
    // PID → Patient
    entries.push(...populateBundleEntries(pidToPatient(message.pid)));
    // PD1 → Patient (optional)
    // PD1-7 → Observation (Living Will): IG dependsOn IF PD1-7 IS VALUED
    hl7v23:PD1? pd1 = message.pd1;
    if pd1 != () {
        entries.push(...populateBundleEntries(pd1ToPatient(pd1)));
        if pd1.pd17 != "" {
            entries.push(...populateBundleEntries(pd1ToLivingWillObservation(pd1)));
        }
    }
    // NK1 → RelatedPerson + Patient
    foreach hl7v23:NK1 nk1 in message.nk1 {
        entries.push(...populateBundleEntries(nk1ToRelatedPerson(nk1)));
        entries.push(...populateBundleEntries(nk1ToPatient(nk1)));
    }

    // PATIENT group (optional)
    hl7v23:VXU_V04_PATIENT? patient = message.patient;
    if patient != () {
        // PV1 → Encounter + Patient
        entries.push(...populateBundleEntries(pv1ToEncounter(patient.pv1)));
        entries.push(...populateBundleEntries(pv1ToPatient(patient.pv1)));
        // Coverage: IG dependsOn IF PV1-20 (Financial Class) IS VALUED
        if patient.pv1.pv120[0].fc1 != "" {
            entries.push(...populateBundleEntries(pv1ToCoverage(patient.pv1)));
        }
        // PV2 → Encounter (optional)
        hl7v23:PV2? pv2 = patient.pv2;
        if pv2 != () {
            entries.push(...populateBundleEntries(pv2ToEncounter(pv2)));
        }
    }

    // INSURANCE groups → Coverage + CareTeam
    // Guard: in11 (set-ID) is "" for Ballerina default empty instances
    foreach hl7v23:VXU_V04_INSURANCE ins in message.insurance {
        if ins.in1.in11 == "" {
            continue;
        }
        entries.push(...populateBundleEntries(in1ToCoverage(ins.in1)));
        hl7v23:IN3? in3 = ins.in3;
        if in3 != () {
            entries.push(...populateBundleEntries(in3ToCareTeam(in3)));
        }
    }

    // ORDER groups → Immunization + MedicationRequest + Observation
    // Guard: rxa1 (set-ID / give sub-ID counter) is "" for Ballerina default empty instances
    foreach hl7v23:VXU_V04_ORDER 'order in message.'order {
        if 'order.rxa.rxa1 == "" {
            continue;
        }
        // ORC → Immunization + ServiceRequest (optional)
        hl7v23:ORC? orc = 'order.orc;
        if orc != () {
            entries.push(...populateBundleEntries(orcToImmunization(orc)));
            entries.push(...populateBundleEntries(orcToServiceRequest(orc)));
        }
        // RXA → Immunization (required)
        entries.push(...populateBundleEntries(rxaToImmunization('order.rxa)));
        // RXR → Immunization + MedicationRequest (optional)
        hl7v23:RXR? rxr = 'order.rxr;
        if rxr != () {
            entries.push(...populateBundleEntries(rxrToImmunization(rxr)));
            entries.push(...populateBundleEntries(rxrToMedicationRequest(rxr)));
        }
        // OBSERVATION sub-groups → Observation
        // Guard: obx1 (set-ID) is "" for default empty instances
        foreach hl7v23:VXU_V04_OBSERVATION obs in 'order.vxu_v04_observation {
            if obs.obx.obx1 == "" {
                continue;
            }
            entries.push(...populateBundleEntries(obxToObservation(obs.obx)));
            foreach hl7v23:NTE nte in obs.nte {
                entries.push(...populateBundleEntries(nteToObservation(nte)));
            }
        }
    }

    bundle.entry = entries;
    return bundle;
}
