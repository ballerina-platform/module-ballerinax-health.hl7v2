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
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

// --------------------------------------------------------------------------------------------#
// Message-type dispatcher: maps a parsed HL7v23 message to a typed FHIR Bundle using the
// IG-specified message-level ConceptMap. Returns () for unsupported message types so the
// caller can fall back to the generic segment-by-segment approach (transformToFhir).
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
        "ORU_R01" => {
            return oruR01ToBundle(check message.ensureType(hl7v23:ORU_R01));
        }
        "SIU_S12" => {
            return siuS12ToBundle(check message.ensureType(hl7v23:SIU_S12));
        }
        "VXU_V04" => {
            return vxuV04ToBundle(check message.ensureType(hl7v23:VXU_V04));
        }
    }
    // All other unsupported types → fall back to generic segment mapping
    return ();
}

// --------------------------------------------------------------------------------------------#
// Message assembly context
//
// The IG message maps incorporate several segments into the same resource (e.g. PID, PD1, NK1 and PV1 all
// populate Patient[1]; PV1 and PV2 populate Encounter[1]) and link resources to each other (subject, patient,
// beneficiary, diagnosis, target ...). MessageContext keeps the shared resources so later segments can be
// merged into them and referenced (bundle-internal `urn:uuid:` references).
// --------------------------------------------------------------------------------------------#
type MessageContext record {|
    string bundleId = generateFhirResourceId();
    r4:BundleEntry[] entries = [];
    r4:Reference? messageHeader = ();
    international401:Patient? patient = ();
    r4:Reference? patientRef = ();
    international401:Encounter? encounter = ();
    r4:Reference? encounterRef = ();
|};

// Reference to Patient[1], or a data-absent-reason placeholder when the message has no patient
isolated function patientReference(MessageContext ctx) returns r4:Reference {
    r4:Reference? ref = ctx.patientRef;
    return ref is r4:Reference ? ref : {extension: DATA_ABSENT_UNKNOWN};
}

// MSH → MessageHeader[1]; EVN → Provenance (target MessageHeader[1]);
// MSH[Provenance-Operator] IF EVN-5 NOT VALUED AND MSH-4 VALUED (MSH-22 does not exist in v2.3)
isolated function addMessageHeader(MessageContext ctx, hl7v23:MSH msh, hl7v23:EVN? evn = (),
        boolean operatorProvenance = true) {
    ctx.messageHeader = addLinkedEntry(ctx.entries, mshToMessageHeader(msh));
    r4:Reference? header = ctx.messageHeader;
    r4:Reference bundleRef = {reference: "Bundle/" + ctx.bundleId};
    // MSH[Provenance-Source] (IF MSH-4 VALUED): target Bundle + MessageHeader[1]
    international401:Provenance? sourceProvenance = mshToProvenanceSource(msh);
    if sourceProvenance is international401:Provenance {
        sourceProvenance.target = (header is r4:Reference) ? [bundleRef, header] : [bundleRef];
        _ = addLinkedEntry(ctx.entries, sourceProvenance);
    }
    // MSH[Provenance-Transformation]: target Bundle
    international401:Provenance transformation = mshToProvenanceTransformation();
    transformation.target = [bundleRef];
    _ = addLinkedEntry(ctx.entries, transformation);
    if evn is () {
        return;
    }
    international401:Provenance evnProvenance = evnToProvenance(evn);
    if header is r4:Reference {
        evnProvenance.target = [header];
    }
    _ = addLinkedEntry(ctx.entries, evnProvenance);
    if operatorProvenance && evn.evn5.xcn1 == "" && msh.msh4.hd1 != "" {
        international401:Provenance operator = mshToProvenanceOperator(msh);
        if header is r4:Reference {
            operator.target = [header];
        }
        _ = addLinkedEntry(ctx.entries, operator);
    }
}

// PID (+ PD1, NK1[Patient]) → Patient[1]; PID-18 → Account; PD1-7 → living-will Observation;
// NK1 → RelatedPerson (ADT_A01 only: IF NK1-3.1 NOT IN ("EMR","E","F","I","S"); unconditional elsewhere)
isolated function addPatient(MessageContext ctx, hl7v23:PID pid, hl7v23:PD1? pd1 = (), hl7v23:NK1[] nk1s = [],
        boolean filterNk1ByRelationship = false) {
    international401:Patient patient = pidToPatient(pid);
    if pd1 is hl7v23:PD1 {
        _ = mergeResources(patient, pd1ToPatient(pd1));
    }
    foreach hl7v23:NK1 nk1 in nk1s {
        if hasSegmentContent(nk1) {
            _ = mergeResources(patient, nk1ToPatient(nk1));
        }
    }
    ctx.patient = patient;
    ctx.patientRef = addLinkedEntry(ctx.entries, patient);
    r4:Reference patientRef = patientReference(ctx);

    international401:Account? account = pidToAccount(pid);
    if account is international401:Account {
        account.subject = [patientRef];
        _ = addLinkedEntry(ctx.entries, account);
    }
    if pd1 is hl7v23:PD1 && pd1.pd17 != "" {
        international401:Observation livingWill = pd1ToLivingWillObservation(pd1);
        livingWill.subject = patientRef;
        _ = addLinkedEntry(ctx.entries, livingWill);
    }
    foreach hl7v23:NK1 nk1 in nk1s {
        string relationship = nk1.nk13.ce1;
        if !hasSegmentContent(nk1) {
            continue;
        }
        if filterNk1ByRelationship && (relationship == "EMR" || relationship == "E" || relationship == "F"
                || relationship == "I" || relationship == "S") {
            continue;
        }
        international401:RelatedPerson relatedPerson = nk1ToRelatedPerson(nk1);
        relatedPerson.patient = patientRef;
        _ = addLinkedEntry(ctx.entries, relatedPerson);
    }
}

// PV1 (+ PV2) → Encounter[1] (subject Patient[1]); PV1[Patient] merged into Patient[1];
// PV1[Coverage] IF PV1-20 VALUED (beneficiary Patient[1])
isolated function addEncounter(MessageContext ctx, hl7v23:PV1 pv1, hl7v23:PV2? pv2 = ()) {
    international401:Patient? patient = ctx.patient;
    if patient is international401:Patient {
        _ = mergeResources(patient, pv1ToPatient(pv1));
    }
    international401:Encounter encounter = pv1ToEncounter(pv1);
    if pv2 is hl7v23:PV2 && hasSegmentContent(pv2) {
        _ = mergeResources(encounter, pv2ToEncounter(pv2));
    }
    encounter.subject = ctx.patientRef;
    ctx.encounter = encounter;
    ctx.encounterRef = addLinkedEntry(ctx.entries, encounter);
    if pv1.pv120.length() > 0 && pv1.pv120[0].fc1 != "" {
        international401:Coverage coverage = pv1ToCoverage(pv1);
        coverage.beneficiary = patientReference(ctx);
        _ = addLinkedEntry(ctx.entries, coverage);
    }
}

// OBX → Observation (subject Patient[1], encounter Encounter[1]); NTE → Observation.note
isolated function addObservation(MessageContext ctx, hl7v23:OBX obx, hl7v23:NTE[] ntes = [],
        r4:Reference? partOf = ()) returns r4:Reference? {
    if !hasSegmentContent(obx) {
        return ();
    }
    international401:Observation observation = obxToObservation(obx);
    observation.subject = ctx.patientRef;
    observation.encounter = ctx.encounterRef;
    if partOf is r4:Reference {
        observation.partOf = [partOf];
    }
    r4:Annotation[] notes = ntesToAnnotations(ntes);
    if notes.length() > 0 {
        observation.note = notes;
    }
    return addLinkedEntry(ctx.entries, observation);
}

// AL1 → AllergyIntolerance (patient Patient[1])
isolated function addAllergies(MessageContext ctx, hl7v23:AL1[] al1s) {
    foreach hl7v23:AL1 al1 in al1s {
        if !hasSegmentContent(al1) {
            continue;
        }
        international401:AllergyIntolerance allergy = al1ToAllerygyIntolerance(al1);
        allergy.patient = patientReference(ctx);
        allergy.encounter = ctx.encounterRef;
        _ = addLinkedEntry(ctx.entries, allergy);
    }
}

// DG1 → Condition (subject Patient[1]); DG1[Encounter]: Encounter[1].diagnosis → Condition;
// DG1[EpisodeOfCare] (when requested): EpisodeOfCare (patient Patient[1], diagnosis → Condition)
isolated function addDiagnoses(MessageContext ctx, hl7v23:DG1[] dg1s, boolean episodeOfCare = false)
        returns r4:Reference[] {
    r4:Reference[] conditionRefs = [];
    foreach hl7v23:DG1 dg1 in dg1s {
        if !hasSegmentContent(dg1) {
            continue;
        }
        international401:Condition condition = dg1ToCondition(dg1);
        condition.subject = patientReference(ctx);
        condition.encounter = ctx.encounterRef;
        r4:Reference? conditionRef = addLinkedEntry(ctx.entries, condition);
        if conditionRef is () {
            continue;
        }
        conditionRefs.push(conditionRef);

        international401:Encounter? encounter = ctx.encounter;
        if encounter is international401:Encounter {
            international401:EncounterDiagnosis[] diagnosis = dg1ToEncounter(dg1, condition.id).diagnosis ?: [];
            foreach international401:EncounterDiagnosis d in diagnosis {
                d.condition = conditionRef;
                international401:EncounterDiagnosis[] existing = encounter.diagnosis ?: [];
                existing.push(d);
                encounter.diagnosis = existing;
            }
        }
        if episodeOfCare {
            international401:EpisodeOfCare episode = dg1ToEpisodeOfCare(dg1, condition.id, ());
            episode.patient = patientReference(ctx);
            international401:EpisodeOfCareDiagnosis[] diagnosis = episode.diagnosis ?: [];
            foreach international401:EpisodeOfCareDiagnosis d in diagnosis {
                d.condition = conditionRef;
            }
            _ = addLinkedEntry(ctx.entries, episode);
        }
    }
    return conditionRefs;
}

// PR1 → Procedure (subject Patient[1], encounter Encounter[1])
isolated function addProcedure(MessageContext ctx, hl7v23:PR1 pr1) {
    if !hasSegmentContent(pr1) {
        return;
    }
    international401:Procedure procedure = pr1ToProcedure(pr1);
    procedure.subject = patientReference(ctx);
    procedure.encounter = ctx.encounterRef;
    _ = addLinkedEntry(ctx.entries, procedure);
}

// IN1 → Coverage (beneficiary Patient[1]); IN3 → CareTeam (subject Patient[1]) when requested
isolated function addInsurance(MessageContext ctx, hl7v23:IN1 in1, hl7v23:IN3? in3 = ()) {
    if !hasSegmentContent(in1) {
        return;
    }
    international401:Coverage coverage = in1ToCoverage(in1);
    coverage.beneficiary = patientReference(ctx);
    if in1.in117 == "SEL" {
        coverage.subscriber = ctx.patientRef;
    }
    _ = addLinkedEntry(ctx.entries, coverage);
    if in3 is hl7v23:IN3 && hasSegmentContent(in3) {
        international401:CareTeam careTeam = in3ToCareTeam(in3);
        careTeam.subject = ctx.patientRef;
        _ = addLinkedEntry(ctx.entries, careTeam);
    }
}

// Removes identifiers that repeat the same type code and value (ORC and OBR both carry placer/filler numbers)
isolated function dedupeIdentifiers(r4:Identifier[] identifiers) returns r4:Identifier[] {
    r4:Identifier[] unique = [];
    string[] seen = [];
    foreach r4:Identifier identifier in identifiers {
        r4:Coding[] typeCodings = identifier.'type?.coding ?: [];
        string key = (typeCodings.length() > 0 ? typeCodings[0].code ?: "" : "") + "|" + (identifier.value ?: "");
        if seen.indexOf(key) is () {
            seen.push(key);
            unique.push(identifier);
        }
    }
    return unique;
}

// ORC + OBR of one order → ServiceRequest[1] (ORC[ServiceRequest] + OBR[ServiceRequest])
isolated function orderToServiceRequest(MessageContext ctx, hl7v23:ORC? orc, hl7v23:OBR? obr)
        returns international401:ServiceRequest? {
    boolean hasOrc = orc is hl7v23:ORC && hasSegmentContent(orc);
    boolean hasObr = obr is hl7v23:OBR && hasSegmentContent(obr);
    if !hasOrc && !hasObr {
        return ();
    }
    international401:ServiceRequest serviceRequest;
    if orc is hl7v23:ORC && hasOrc {
        serviceRequest = orcToServiceRequest(orc);
        if obr is hl7v23:OBR && hasObr {
            _ = mergeResources(serviceRequest, obrToServiceRequest(obr));
        }
    } else {
        serviceRequest = obrToServiceRequest(<hl7v23:OBR>obr);
    }
    r4:Identifier[]? identifiers = serviceRequest.identifier;
    if identifiers is r4:Identifier[] {
        serviceRequest.identifier = dedupeIdentifiers(identifiers);
    }
    serviceRequest.subject = patientReference(ctx);
    serviceRequest.encounter = ctx.encounterRef;
    return serviceRequest;
}

// --------------------------------------------------------------------------------------------#
// ADT messages
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-adt-a01-to-bundle.html (etc.)
// Note: ROL segments (follow:PID.ROL / follow:PV1.ROL) are not exposed as typed fields in the hl7v23 ADT
// records and are therefore not mapped by these typed mappers.
// --------------------------------------------------------------------------------------------#

// ADT_A01 (Admit/Visit Notification)
// Segments: MSH, EVN, PID, PD1, NK1, PV1, PV2, OBX, AL1, DG1, PROCEDURE(PR1,ROL), INSURANCE(IN1,IN3)
public isolated function adtA01ToBundle(hl7v23:ADT_A01 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1, message.nk1, filterNk1ByRelationship = true);
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    addAllergies(ctx, message.al1);
    _ = addDiagnoses(ctx, message.dg1, true);
    foreach hl7v23:ADT_A01_PROCEDURE proc in message.procedure {
        addProcedure(ctx, proc.pr1);
    }
    foreach hl7v23:ADT_A01_INSURANCE ins in message.insurance {
        addInsurance(ctx, ins.in1, ins.in3);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// ADT_A02 (Transfer a Patient) — Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX
public isolated function adtA02ToBundle(hl7v23:ADT_A02 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1);
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// ADT_A05 (Pre-Admit a Patient)
// Segments: MSH, EVN, PID, PD1, NK1, PV1, PV2, OBX, AL1, DG1, PROCEDURE(PR1,ROL), INSURANCE(IN1,IN3)
public isolated function adtA05ToBundle(hl7v23:ADT_A05 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1, message.nk1);
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    addAllergies(ctx, message.al1);
    _ = addDiagnoses(ctx, message.dg1, true);
    foreach hl7v23:ADT_A05_PROCEDURE proc in message.procedure {
        addProcedure(ctx, proc.pr1);
    }
    foreach hl7v23:ADT_A05_INSURANCE ins in message.insurance {
        addInsurance(ctx, ins.in1, ins.in3);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// ADT_A06 (Change an Outpatient to an Inpatient)
// Segments: MSH, EVN, PID, PD1, MRG, NK1, PV1, PV2, OBX, AL1, DG1, PROCEDURE, INSURANCE
public isolated function adtA06ToBundle(hl7v23:ADT_A06 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1, message.nk1);
    // MRG → Account (subject Patient[1])
    hl7v23:MRG? mrg = message.mrg;
    if mrg is hl7v23:MRG && hasSegmentContent(mrg) {
        international401:Account account = mrgToAccount(mrg);
        account.subject = [patientReference(ctx)];
        _ = addLinkedEntry(ctx.entries, account);
    }
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    addAllergies(ctx, message.al1);
    _ = addDiagnoses(ctx, message.dg1, true);
    foreach hl7v23:ADT_A06_PROCEDURE proc in message.procedure {
        addProcedure(ctx, proc.pr1);
    }
    foreach hl7v23:ADT_A06_INSURANCE ins in message.insurance {
        addInsurance(ctx, ins.in1, ins.in3);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// ADT_A09 (Patient Departing - Tracking) — Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX
// (the ADT_A09 message map has no DG1 row, so DG1 is not mapped)
public isolated function adtA09ToBundle(hl7v23:ADT_A09 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1);
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// ADT_A11 (Cancel Admit/Visit Notification) — Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX, DG1
public isolated function adtA11ToBundle(hl7v23:ADT_A11 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1);
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    _ = addDiagnoses(ctx, message.dg1);
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// ADT_A17 (Swap Patients) — Segments: MSH, EVN, PID, PD1, PV1, PV2, OBX
// Note: the spec maps two PID/PV1 sets (Patient[1..2], Encounter[1..2]), but hl7v23:ADT_A17 declares a single
// pid/pv1 field, so only the set retained by the parser can be mapped.
public isolated function adtA17ToBundle(hl7v23:ADT_A17 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh, message.evn);
    addPatient(ctx, message.pid, message.pd1);
    addEncounter(ctx, message.pv1, message.pv2);
    foreach hl7v23:OBX obx in message.obx {
        _ = addObservation(ctx, obx);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// --------------------------------------------------------------------------------------------#
// MDM_T02 (Original Document Notification with Content) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-mdm-t02-to-bundle.html
// Segments: MSH, EVN, PID, PV1, TXA, OBX
// --------------------------------------------------------------------------------------------#
public isolated function mdmT02ToBundle(hl7v23:MDM_T02 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    // MDM_T02 maps EVN[Provenance] only (no MSH[Provenance-Operator] row)
    addMessageHeader(ctx, message.msh, message.evn, operatorProvenance = false);
    addPatient(ctx, message.pid);
    addEncounter(ctx, message.pv1);

    // TXA → DocumentReference[1] (subject Patient[1]); OBX → DocumentReference[1].content (OBX[DocumentReference])
    international401:DocumentReference document = txaToDocumentReference(message.txa);
    document.subject = ctx.patientRef;
    r4:Reference? encounterRef = ctx.encounterRef;
    if encounterRef is r4:Reference {
        document.context = {encounter: [encounterRef]};
    }
    international401:DocumentReferenceContent[] content = [];
    foreach hl7v23:OBX obx in message.obx {
        international401:DocumentReferenceContent? obxContent = obxToDocumentContent(obx);
        if obxContent is international401:DocumentReferenceContent {
            content.push(obxContent);
        }
    }
    if content.length() > 0 {
        document.content = content;
    }
    r4:Reference? documentRef = addLinkedEntry(ctx.entries, document);

    // TXA[Provenance] IF TXA-8 VALUED (target DocumentReference[1])
    international401:Provenance? provenance = txaToProvenance(message.txa);
    if provenance is international401:Provenance {
        if documentRef is r4:Reference {
            provenance.target = [documentRef];
        }
        _ = addLinkedEntry(ctx.entries, provenance);
    }
    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// OBX[DocumentReference]: OBX-5 by OBX-2 → content.attachment (TX → application/text, FT → text/hl7v2)
isolated function obxToDocumentContent(hl7v23:OBX obx) returns international401:DocumentReferenceContent? {
    string[] lines = from hl7v23:varies v in obx.obx5
        let string text = obxVariesToString(v)
        where text != ""
        select text;
    if lines.length() == 0 {
        return ();
    }
    string data = string:'join("\n", ...lines);
    if obx.obx2 == "RP" {
        return {attachment: {url: lines[0]}};
    }
    return {
        attachment: {
            contentType: obx.obx2 == "FT" ? "text/hl7v2" : "application/text",
            data: data.toBytes().toBase64()
        }
    };
}

// --------------------------------------------------------------------------------------------#
// ORM_O01 (General Order Message) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-orm-o01-to-bundle.html
// Segments: MSH, NTE, PATIENT(PID,PD1,NTE,AL1,PATIENT_VISIT(PV1,PV2),INSURANCE(IN1,IN3)),
//           ORDER(ORC, ORDER_DETAIL(NTE,DG1,ORDER_DETAIL_SEGMENT(OBR,RXO),OBSERVATION(OBX,NTE)))
// Note: the message-level and PATIENT NTE segments have no target in the ORM_O01 message map.
// --------------------------------------------------------------------------------------------#
public isolated function ormO01ToBundle(hl7v23:ORM_O01 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh);

    hl7v23:ORM_O01_PATIENT? patient = message.patient;
    if patient is hl7v23:ORM_O01_PATIENT {
        addPatient(ctx, patient.pid, patient.pd1);
        hl7v23:ORM_O01_PATIENT_VISIT? visit = patient.orm_o01_patient_visit;
        if visit is hl7v23:ORM_O01_PATIENT_VISIT {
            addEncounter(ctx, visit.pv1, visit.pv2);
        }
        addAllergies(ctx, patient.al1);
        foreach hl7v23:ORM_O01_INSURANCE ins in patient.orm_o01_insurance {
            addInsurance(ctx, ins.in1);
        }
    }

    foreach hl7v23:ORM_O01_ORDER 'order in message.'order {
        hl7v23:ORM_O01_ORDER_DETAIL? detail = 'order.orm_o01_order_detail;
        hl7v23:OBR? obr = detail is hl7v23:ORM_O01_ORDER_DETAIL ? detail.orm_o01_order_detail_segment.obr : ();
        // OBR → ServiceRequest IF PID IS VALUED (OBR → SupplyRequest otherwise is not implemented)
        international401:ServiceRequest? serviceRequest = orderToServiceRequest(ctx, 'order.orc,
                patient is () ? () : obr);
        if detail is hl7v23:ORM_O01_ORDER_DETAIL && serviceRequest is international401:ServiceRequest {
            // ORDER_DETAIL.NTE → ServiceRequest[1].note
            r4:Annotation[] notes = ntesToAnnotations(detail.nte);
            if notes.length() > 0 {
                serviceRequest.note = notes;
            }
            // ORDER_DETAIL.DG1 → Condition; ServiceRequest[1].reasonReference → Condition
            r4:Reference[] conditions = addDiagnoses(ctx, detail.dg1);
            if conditions.length() > 0 {
                serviceRequest.reasonReference = conditions;
            }
        }
        if serviceRequest is international401:ServiceRequest {
            _ = addLinkedEntry(ctx.entries, serviceRequest);
        }
        if detail is hl7v23:ORM_O01_ORDER_DETAIL {
            hl7v23:RXO? rxo = detail.orm_o01_order_detail_segment.rxo;
            if rxo is hl7v23:RXO && hasSegmentContent(rxo) {
                international401:MedicationRequest medicationRequest = rxoToMedicationRequest(rxo);
                medicationRequest.subject = patientReference(ctx);
                medicationRequest.encounter = ctx.encounterRef;
                _ = addLinkedEntry(ctx.entries, medicationRequest);
            }
            foreach hl7v23:ORM_O01_OBSERVATION obs in detail.orm_o01_observation {
                _ = addObservation(ctx, obs.obx, obs.nte);
            }
        }
    }

    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// --------------------------------------------------------------------------------------------#
// ORU_R01 (Unsolicited Observation Message) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-oru-r01-to-bundle.html
// Segments: MSH, PATIENT_RESULT(PATIENT(PID,PD1,NTE,VISIT(PV1,PV2)),
//           ORDER_OBSERVATION(ORC,OBR,NTE,OBSERVATION(OBX,NTE),CTI)), DSC
// --------------------------------------------------------------------------------------------#
public isolated function oruR01ToBundle(hl7v23:ORU_R01 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh);

    foreach hl7v23:ORU_R01_PATIENT_RESULT result in message.patient_result {
        ctx.patient = ();
        ctx.patientRef = ();
        ctx.encounter = ();
        ctx.encounterRef = ();
        hl7v23:ORU_R01_PATIENT? patient = result.oru_r01_patient;
        if patient is hl7v23:ORU_R01_PATIENT {
            addPatient(ctx, patient.pid, patient.pd1);
            hl7v23:ORU_R01_VISIT? visit = patient.oru_r01_visit;
            if visit is hl7v23:ORU_R01_VISIT {
                addEncounter(ctx, visit.pv1, visit.pv2);
            }
        }

        foreach hl7v23:ORU_R01_ORDER_OBSERVATION orderObs in result.oru_r01_order_observation {
            hl7v23:OBR obr = orderObs.obr;
            // ORC/OBR → ServiceRequest[1] (IG: "if a ServiceRequest needs to be created for the receiver")
            international401:ServiceRequest? serviceRequest = orderToServiceRequest(ctx, orderObs.orc, obr);
            if serviceRequest is () {
                continue;
            }
            r4:Reference? serviceRequestRef = addLinkedEntry(ctx.entries, serviceRequest);

            // OBX → Observation[2]; DiagnosticReport.result → Observation
            r4:Reference[] results = [];
            foreach hl7v23:ORU_R01_OBSERVATION observationGroup in orderObs.oru_r01_observation {
                hl7v23:OBX? obx = observationGroup.obx;
                if obx is hl7v23:OBX {
                    r4:Reference? obsRef = addObservation(ctx, obx, observationGroup.nte);
                    if obsRef is r4:Reference {
                        results.push(obsRef);
                    }
                }
            }

            // OBR (+ ORC) → DiagnosticReport[1]
            international401:DiagnosticReport report = obrToDiagnosticReport(obr);
            report.subject = ctx.patientRef;
            report.encounter = ctx.encounterRef;
            if serviceRequestRef is r4:Reference {
                report.basedOn = [serviceRequestRef];
            }
            if results.length() > 0 {
                report.result = results;
            }
            _ = addLinkedEntry(ctx.entries, report);
        }
    }

    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// --------------------------------------------------------------------------------------------#
// SIU_S12 (Notification of New Appointment Booking) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-siu-s12-to-bundle.html
// Segments: MSH, SCH, NTE, PATIENT(PID,PV1,PV2,OBX,DG1),
//           RESOURCES(SERVICE(AIS,NTE), GENERAL_RESOURCE(AIG,NTE),
//                     LOCATION_RESOURCE(AIL,NTE), PERSONNEL_RESOURCE(AIP,NTE))
// SCH, AIS, AIG, AIL, AIP and NTE all populate Appointment[1].
// Note: SCH-26/SCH-27 (→ SCH[ServiceRequest]) do not exist in v2.3.
// --------------------------------------------------------------------------------------------#
public isolated function siuS12ToBundle(hl7v23:SIU_S12 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh);

    // SCH → Appointment[1]
    international401:Appointment appointment = schToAppointment(message.sch);
    international401:AppointmentParticipant[] participants = [];
    string[] comments = from r4:Annotation note in ntesToAnnotations(message.nte) select note.text;
    foreach international401:AppointmentParticipant participant in appointment.participant {
        if participant.actor !is () || participant.'type !is () || participant.period !is () {
            participants.push(participant);
        }
    }

    // PATIENT groups
    foreach hl7v23:SIU_S12_PATIENT patient in message.patient {
        if !hasSegmentContent(patient.pid) {
            continue;
        }
        addPatient(ctx, patient.pid);
        hl7v23:PV1? pv1 = patient.pv1;
        if pv1 is hl7v23:PV1 && hasSegmentContent(pv1) {
            addEncounter(ctx, pv1, patient.pv2);
        }
        foreach hl7v23:OBX obx in patient.obx {
            _ = addObservation(ctx, obx);
        }
        _ = addDiagnoses(ctx, patient.dg1);
        // PID[Appointment]: Appointment.participant.actor → Patient[1]
        r4:Reference? patientRef = ctx.patientRef;
        if patientRef is r4:Reference {
            participants.push({actor: patientRef, status: "accepted"});
        }
    }

    // RESOURCES groups → Appointment[1] (AIS / AIG / AIL / AIP); their NTEs → Appointment.comment
    foreach hl7v23:SIU_S12_RESOURCES resources in message.resources {
        foreach hl7v23:SIU_S12_SERVICE svc in resources.siu_s12_service {
            if !hasSegmentContent(svc.ais) {
                continue;
            }
            international401:Appointment serviceAppt = aisToAppointment(svc.ais);
            appointment.serviceType = [...(appointment.serviceType ?: []), ...(serviceAppt.serviceType ?: [])];
            if message.sch.sch25.ce1 == "" && svc.ais.ais10.ce1 != "" {
                appointment.status = serviceAppt.status;
            }
            foreach international401:AppointmentParticipant p in serviceAppt.participant {
                if p.period !is () {
                    participants.push(p);
                }
            }
            comments.push(...from r4:Annotation note in ntesToAnnotations(svc.nte) select note.text);
        }
        foreach hl7v23:SIU_S12_GENERAL_RESOURCE gen in resources.siu_s12_general_resource {
            if hasSegmentContent(gen.aig) {
                participants.push(...aigToAppointment(gen.aig).participant);
                comments.push(...from r4:Annotation note in ntesToAnnotations(gen.nte) select note.text);
            }
        }
        foreach hl7v23:SIU_S12_LOCATION_RESOURCE loc in resources.siu_s12_location_resource {
            if hasSegmentContent(loc.ail) {
                participants.push(...ailToAppointment(loc.ail).participant);
                comments.push(...from r4:Annotation note in ntesToAnnotations(loc.nte) select note.text);
            }
        }
        foreach hl7v23:SIU_S12_PERSONNEL_RESOURCE per in resources.siu_s12_personnel_resource {
            if hasSegmentContent(per.aip) {
                participants.push(...aipToAppointment(per.aip).participant);
                comments.push(...from r4:Annotation note in ntesToAnnotations(per.nte) select note.text);
            }
        }
    }

    if participants.length() > 0 {
        appointment.participant = participants;
    }
    if appointment.serviceType is r4:CodeableConcept[] && (<r4:CodeableConcept[]>appointment.serviceType).length() == 0 {
        appointment.serviceType = ();
    }
    if comments.length() > 0 {
        appointment.comment = string:'join("\n", ...comments);
    }
    _ = addLinkedEntry(ctx.entries, appointment);

    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// --------------------------------------------------------------------------------------------#
// VXU_V04 (Unsolicited Vaccination Record Update) → Bundle
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-message-vxu-v04-to-bundle.html
// Segments: MSH, PID, PD1, NK1, PATIENT(PV1,PV2), INSURANCE(IN1,IN3),
//           ORDER(ORC,RXA,RXR,OBSERVATION(OBX,NTE))
// ORC, RXA and RXR of an ORDER all populate Immunization[1].
// --------------------------------------------------------------------------------------------#
public isolated function vxuV04ToBundle(hl7v23:VXU_V04 message) returns r4:Bundle|error {
    MessageContext ctx = {};
    addMessageHeader(ctx, message.msh);
    addPatient(ctx, message.pid, message.pd1, message.nk1);

    hl7v23:VXU_V04_PATIENT? patient = message.patient;
    if patient is hl7v23:VXU_V04_PATIENT && hasSegmentContent(patient.pv1) {
        addEncounter(ctx, patient.pv1, patient.pv2);
    }
    foreach hl7v23:VXU_V04_INSURANCE ins in message.insurance {
        addInsurance(ctx, ins.in1);
    }

    foreach hl7v23:VXU_V04_ORDER 'order in message.'order {
        if !hasSegmentContent('order.rxa) {
            continue;
        }
        // RXA (+ ORC, RXR) → Immunization[1]
        international401:Immunization immunization = rxaToImmunization('order.rxa);
        hl7v23:ORC? orc = 'order.orc;
        if orc is hl7v23:ORC && hasSegmentContent(orc) {
            _ = mergeResources(immunization, orcToImmunization(orc));
        }
        hl7v23:RXR? rxr = 'order.rxr;
        if rxr is hl7v23:RXR && hasSegmentContent(rxr) {
            _ = mergeResources(immunization, rxrToImmunization(rxr));
        }
        immunization.patient = patientReference(ctx);
        immunization.encounter = ctx.encounterRef;
        r4:Reference? immunizationRef = addLinkedEntry(ctx.entries, immunization);

        // ORC → ServiceRequest ("only if the system wants to know about the order")
        if orc is hl7v23:ORC && hasSegmentContent(orc) {
            international401:ServiceRequest? serviceRequest = orderToServiceRequest(ctx, orc, ());
            if serviceRequest is international401:ServiceRequest {
                _ = addLinkedEntry(ctx.entries, serviceRequest);
            }
        }

        // OBSERVATION: OBX → Observation (subject Patient[1], partOf Immunization[1]); NTE → note
        foreach hl7v23:VXU_V04_OBSERVATION obs in 'order.vxu_v04_observation {
            _ = addObservation(ctx, obs.obx, obs.nte, immunizationRef);
        }
    }

    return finalizeBundle(message.msh, ctx.entries, ctx.bundleId);
}

// --------------------------------------------------------------------------------------------#
// Bundle assembly helpers
// --------------------------------------------------------------------------------------------#

# Adds a resource to the bundle entries (if it carries any content), assigning it an id and a `urn:uuid` fullUrl.
#
# + entries - bundle entries to append to
# + 'resource - FHIR resource
# + return - a reference to the added entry, or nil when the resource is empty and was not added
isolated function addLinkedEntry(r4:BundleEntry[] entries, map<anydata> 'resource) returns r4:Reference? {
    if populateBundleEntries('resource).length() == 0 {
        return ();
    }
    anydata existingId = 'resource["id"];
    string id = existingId is string && existingId != "" ? existingId : generateFhirResourceId();
    'resource["id"] = id;
    string fullUrl = "urn:uuid:" + id;
    entries.push({fullUrl: fullUrl, 'resource: 'resource});
    return {reference: fullUrl};
}

# Builds the final message Bundle: Bundle.type = "message" (MSH[Bundle]), MSH-7 → timestamp, MSH-10 → identifier,
# and every entry gets a resource id and a `urn:uuid` fullUrl.
#
# + msh - MSH segment of the message
# + entries - bundle entries
# + return - the message bundle
isolated function finalizeBundle(hl7v23:MSH msh, r4:BundleEntry[] entries, string? bundleId = ()) returns r4:Bundle {
    r4:Bundle bundle = {'type: "message", entry: assignEntryFullUrls(entries)};
    bundle.id = bundleId;
    bundle.timestamp = tsToInstant(msh.msh7);
    if msh.msh10 != "" {
        bundle.identifier = {value: msh.msh10};
    }
    return bundle;
}

isolated function assignEntryFullUrls(r4:BundleEntry[] entries) returns r4:BundleEntry[] {
    foreach r4:BundleEntry entry in entries {
        anydata res = entry?.'resource;
        if entry.fullUrl is () && res is map<anydata> {
            anydata existingId = res["id"];
            string id = existingId is string && existingId != "" ? existingId : generateFhirResourceId();
            res["id"] = id;
            entry.fullUrl = "urn:uuid:" + id;
        }
    }
    return entries;
}

# Merges the populated top-level elements of `additional` into `base` (elements already present in `base` win,
# except arrays, which are concatenated). Used where the IG maps several segments onto the same resource.
#
# + base - resource being built
# + additional - resource produced by a later segment
# + return - merged resource
isolated function mergeResources(map<anydata> base, map<anydata> additional) returns map<anydata> {
    foreach [string, anydata] [key, value] in additional.entries() {
        if key == "resourceType" || key == "id" || value is () {
            continue;
        }
        anydata current = base[key];
        if current is () {
            base[key] = value;
        } else if current is anydata[] && value is anydata[] {
            // push into the existing (typed) array so the record field keeps its inherent type
            current.push(...value);
        }
    }
    return base;
}

# Maps NTE segments to Annotations (NTE-3 → text), skipping NTEs without a comment.
#
# + ntes - NTE segments
# + return - annotations
isolated function ntesToAnnotations(hl7v23:NTE[] ntes) returns r4:Annotation[] {
    r4:Annotation[] notes = [];
    foreach hl7v23:NTE nte in ntes {
        string text = string:'join("\n", ...(from string line in nte.nte3 where line != "" select line));
        if text != "" {
            notes.push({text: text});
        }
    }
    return notes;
}
