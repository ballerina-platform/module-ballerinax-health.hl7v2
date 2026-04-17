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
import ballerina/log;
import ballerinax/health.fhir.r4 as r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

# Parse a string to an HL7 message.
#
# + msg - HL7 message as a string
# + return - hl7v2:Message
public isolated function stringToHl7(string msg) returns hl7:Message|error => check hl7:parse(msg);

# Transform an HL7 message to FHIR.
#
# + hl7 - HL7 message as a string or an hl7v2:Message  
# + customMapper - Custom mapper implementation  
# + mapperServiceConf - Custom mapping service configuration
# + return - FHIR Bundle as a json
public isolated function v2ToFhir(string|hl7:Message hl7, V2SegmentToFhirMapper? customMapper = (), V2ToFhirCustomMapperServiceConfig? mapperServiceConf = ()) returns json|error {
    hl7:Message hl7msg;
    if (hl7 is string) {
        hl7msg = check stringToHl7(hl7);
    } else {
        hl7msg = hl7;
    }
    // When no custom overrides are specified, dispatch to the typed message-level mapping
    // functions that follow the IG ConceptMap exactly (including segment group handling).
    // Falls back to the generic segment-by-segment approach for unsupported message types
    // or when custom mapper / service config is provided.
    if customMapper == () && mapperServiceConf == () {
        r4:Bundle|error? typedBundle = mapMessageToBundle(hl7msg);
        if typedBundle is r4:Bundle {
            return typedBundle.toJson();
        }
        if typedBundle is error {
            return typedBundle;
        }
        // typedBundle is () → unsupported message type, fall through to generic
    }
    if customMapper == () {
        return transformToFhir(hl7msg, defaultMapper, mapperServiceConf);
    }
    V2SegmentToFhirMapper mapper = {...defaultMapper};
    foreach string key in customMapper.keys() {
        mapper[key] = customMapper.get(key);
    }
    return transformToFhir(hl7msg, mapper, mapperServiceConf);
}

// --------------------------------------------------------------------------------------------#
// Source HL7 Version 2 to FHIR - Segment Maps
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/segment_maps.html
// --------------------------------------------------------------------------------------------#
# Transform an HL7 segment to FHIR Bundle.
#
# + segmentName - Name of the HL7 segment  
# + segment - HL7 segment  
# + customMapper - Custom mapper implementation  
# + serviceconf - Custom mapping service configuration
# + return - FHIR Bundle
public isolated function segmentToFhir(string segmentName, hl7:Segment segment, V2SegmentToFhirMapper? customMapper, V2ToFhirCustomMapperServiceConfig? serviceconf) returns r4:BundleEntry[]|error {
    r4:BundleEntry[] entries = [];
    V2SegmentToFhirMapper impl;
    lock {
        impl = customMapper != () ? customMapper.clone() : defaultMapper.clone();
    }
    match segmentName {
        "NK1" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                Nk1ToPatient? nk1ToPatient = impl.nk1ToPatient;
                if nk1ToPatient is Nk1ToPatient {
                    map<anydata> constructedResource = nk1ToPatient(check segment.ensureType(Nk1));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
                Nk1ToRelatedPerson? nk1ToRelatedPerson = impl.nk1ToRelatedPerson;
                if nk1ToRelatedPerson is Nk1ToRelatedPerson {
                    map<anydata> constructedResource = nk1ToRelatedPerson(check segment.ensureType(Nk1));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
            } else {
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                return populateBundleEntries(constructedResource);
            }
        }
        "PD1" => {
            Pd1ToPatient? pd1ToPatient = impl.pd1ToPatient;
            if pd1ToPatient is Pd1ToPatient {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = pd1ToPatient(check segment.ensureType(Pd1));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "PID" => {
            PidToPatient? pidToPatient = impl.pidToPatient;
            if pidToPatient is PidToPatient {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = pidToPatient(check segment.ensureType(Pid));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "PV1" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                Pv1ToPatient? pv1ToPatientResult = impl.pv1ToPatient;
                if pv1ToPatientResult is Pv1ToPatient {
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(pv1ToPatientResult(check segment.ensureType(Pv1)));
                    entries.push(...bundleEntriesResult);
                }
                Pv1ToEncounter? pv1ToEncounterResult = impl.pv1ToEncounter;
                if pv1ToEncounterResult is Pv1ToEncounter {
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(pv1ToEncounterResult(check segment.ensureType(Pv1)));
                    entries.push(...bundleEntriesResult);
                }
                Pv1ToCoverage? pv1ToCoverageResult = impl.pv1ToCoverage;
                if pv1ToCoverageResult is Pv1ToCoverage {
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(pv1ToCoverageResult(check segment.ensureType(Pv1)));
                    entries.push(...bundleEntriesResult);
                }
            }
        }
        "DG1" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                Dg1ToCondition? dg1ToCondition = impl.dg1ToCondition;
                string? conditionId = ();
                string? patientId = ();
                if dg1ToCondition is Dg1ToCondition {
                    map<anydata> constructedResource = dg1ToCondition(check segment.ensureType(Dg1));
                    if constructedResource["id"] != () {
                        conditionId = <string?>constructedResource["id"];
                        entries.push({'resource: constructedResource});
                    }
                }
                Dg1ToEncounter? dg1ToEncounter = impl.dg1ToEncounter;
                if dg1ToEncounter is Dg1ToEncounter {
                    r4:BundleEntry bundleEntry = entries[entries.length() - 1];
                    if bundleEntry?.'resource is international401:Condition {
                        map<anydata> constructedResource = dg1ToEncounter(check segment.ensureType(Dg1), conditionId);
                        if constructedResource["id"] != () {
                            entries.push({'resource: constructedResource});
                        }
                    }
                }
                Dg1ToEpisodeOfCare? dg1ToEpisodeOfCare = impl.dg1ToEpisodeOfCare;
                if dg1ToEpisodeOfCare is Dg1ToEpisodeOfCare {
                    map<anydata> constructedResource = dg1ToEpisodeOfCare(check segment.ensureType(Dg1), conditionId, patientId);
                    if constructedResource["id"] != () {
                        entries.push({'resource: constructedResource});
                    }
                }
            } else {
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                return populateBundleEntries(constructedResource);
            }
        }
        "AL1" => {
            Al1ToAllerygyIntolerance? al1ToAllerygyIntolerance = impl.al1ToAllerygyIntolerance;
            if al1ToAllerygyIntolerance is Al1ToAllerygyIntolerance {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = al1ToAllerygyIntolerance(check segment.ensureType(Al1));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "EVN" => {
            EvnToProvenance? evnToProvenance = impl.evnToProvenance;
            if evnToProvenance is EvnToProvenance {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = evnToProvenance(check segment.ensureType(Evn));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "MSH" => {
            MshToMessageHeader? mshToMessageHeader = impl.mshToMessageHeader;
            if mshToMessageHeader is MshToMessageHeader {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = mshToMessageHeader(check segment.ensureType(Msh));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "PV2" => {
            Pv2ToEncounter? pv2ToEncounter = impl.pv2ToEncounter;
            if pv2ToEncounter is Pv2ToEncounter {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = pv2ToEncounter(check segment.ensureType(Pv2));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "OBX" => {
            ObxToObservation? obxToObservation = impl.obxToObservation;
            if obxToObservation is ObxToObservation {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = obxToObservation(check segment.ensureType(Obx));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "ORC" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                OrcToImmunization? orcToImmunization = impl.orcToImmunization;
                if orcToImmunization is OrcToImmunization {
                    map<anydata> constructedResource = orcToImmunization(check segment.ensureType(Orc));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
                OrcToServiceRequest? orcToServiceRequest = impl.orcToServiceRequest;
                if orcToServiceRequest is OrcToServiceRequest {
                    map<anydata> constructedResource = orcToServiceRequest(check segment.ensureType(Orc));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
            } else {
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                return populateBundleEntries(constructedResource);
            }
        }
        "OBR" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                ObrToDiagnosticReport? obrToDiagnosticReport = impl.obrToDiagnosticReport;
                if obrToDiagnosticReport is ObrToDiagnosticReport {
                    map<anydata> constructedResource = obrToDiagnosticReport(check segment.ensureType(Obr));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
                ObrToServiceRequest? obrToServiceRequest = impl.obrToServiceRequest;
                if obrToServiceRequest is ObrToServiceRequest {
                    map<anydata> constructedResource = obrToServiceRequest(check segment.ensureType(Obr));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
            } else {
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                return populateBundleEntries(constructedResource);
            }
        }
        "NTE" => {
            NteToObservation? nteToObservation = impl.nteToObservation;
            if nteToObservation is NteToObservation {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = nteToObservation(check segment.ensureType(Nte));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "PR1" => {
            Pr1ToProcedure? pr1ToProcedure = impl.pr1ToProcedure;
            if pr1ToProcedure is Pr1ToProcedure {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = pr1ToProcedure(check segment.ensureType(Pr1));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "RXA" => {
            RxaToImmunization? rxaToImmunization = impl.rxaToImmunization;
            if rxaToImmunization is RxaToImmunization {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = rxaToImmunization(check segment.ensureType(Rxa));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "RXO" => {
            RxoToMedicationRequest? rxoToMedicationRequest = impl.rxoToMedicationRequest;
            if rxoToMedicationRequest is RxoToMedicationRequest {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = rxoToMedicationRequest(check segment.ensureType(Rxo));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "RXR" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                RxrToImmunization? rxrToImmunization = impl.rxrToImmunization;
                if rxrToImmunization is RxrToImmunization {
                    map<anydata> constructedResource = rxrToImmunization(check segment.ensureType(Rxr));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
                RxrToMedicationRequest? rxrToMedicationRequest = impl.rxrToMedicationRequest;
                if rxrToMedicationRequest is RxrToMedicationRequest {
                    map<anydata> constructedResource = rxrToMedicationRequest(check segment.ensureType(Rxr));
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                    entries.push(...bundleEntriesResult);
                }
            } else {
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                return populateBundleEntries(constructedResource);
            }
        }
        "SCH" => {
            SchToAppointment? schToAppointment = impl.schToAppointment;
            if schToAppointment is SchToAppointment {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = schToAppointment(check segment.ensureType(Sch));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "TXA" => {
            TxaToDocumentReference? txaToDocumentReference = impl.txaToDocumentReference;
            if txaToDocumentReference is TxaToDocumentReference {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = txaToDocumentReference(check segment.ensureType(Txa));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "ROL" => {
            RolToRelatedPerson? rolToRelatedPerson = impl.rolToRelatedPerson;
            if rolToRelatedPerson is RolToRelatedPerson {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = rolToRelatedPerson(check segment.ensureType(Rol));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "MSA" => {
            MsaToMessageHeader? msaToMessageHeader = impl.msaToMessageHeader;
            if msaToMessageHeader is MsaToMessageHeader {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = msaToMessageHeader(check segment.ensureType(Msa));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "MRG" => {
            MrgToAccount? mrgToAccount = impl.mrgToAccount;
            if mrgToAccount is MrgToAccount {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = mrgToAccount(check segment.ensureType(Mrg));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "IN1" => {
            In1ToCoverage? in1ToCoverage = impl.in1ToCoverage;
            if in1ToCoverage is In1ToCoverage {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = in1ToCoverage(check segment.ensureType(In1));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "IN3" => {
            In3ToCareTeam? in3ToCareTeam = impl.in3ToCareTeam;
            if in3ToCareTeam is In3ToCareTeam {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = in3ToCareTeam(check segment.ensureType(In3));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "AIG" => {
            AigToAppointment? aigToAppointment = impl.aigToAppointment;
            if aigToAppointment is AigToAppointment {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = aigToAppointment(check segment.ensureType(Aig));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "AIL" => {
            AilToAppointment? ailToAppointment = impl.ailToAppointment;
            if ailToAppointment is AilToAppointment {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = ailToAppointment(check segment.ensureType(Ail));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "AIP" => {
            AipToAppointment? aipToAppointment = impl.aipToAppointment;
            if aipToAppointment is AipToAppointment {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = aipToAppointment(check segment.ensureType(Aip));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "AIS" => {
            AisToAppointment? aisToAppointment = impl.aisToAppointment;
            if aisToAppointment is AisToAppointment {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                if customMappingResponse[0] {
                    constructedResource = aisToAppointment(check segment.ensureType(Ais));
                }
                return populateBundleEntries(constructedResource);
            }
        }
        _ => {
            if segmentName.length() == 3 {
                [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
                if customMappingResponse[0] {
                    return error(string `Default mappings are not supported for segment: ${segmentName}`);
                }
                map<anydata> constructedResource = <map<anydata>>customMappingResponse[1];
                return populateBundleEntries(constructedResource);
            }
        }
    }
    return entries;
}

public isolated function mshToMessageHeader(Msh msh) returns international401:MessageHeader {
    international401:MessageHeader messageHeader = {
        'source: hdToMessageHeaderSource(msh.msh3),
        destination: [hdToMessageHeaderDestination(msh.msh5)],
        eventCoding: msgToCoding(msh.msh9),
        language: ceToCode(<hl7v23:CE>msh.msh19),
        eventUri: ""
    };
    return messageHeader;
};

// --- Patient Administation
public isolated function al1ToAllerygyIntolerance(Al1 al1) returns international401:AllergyIntolerance {

    international401:AllergyIntoleranceReaction[] allergyIntoleranceReactions = [];
    allergyIntoleranceReactions = [
        {
            manifestation: (al1.al15 != "") ? [
                    {
                        text: al1.al15
                    }
                ] : [],
            onset: (al1.al16 != "") ? al1.al16 : ()
        }
    ];
    r4:CodeableConcept allergyCode = ceToCodeableConcept(<hl7v23:CE>al1.al13);
    international401:AllergyIntolerance allergyIntolerance = {
        clinicalStatus: {
            coding: [
                {
                    code: "active",
                    system: "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
                }
            ]
        },
        code: (allergyCode != {}) ? allergyCode : (),
        reaction: (allergyIntoleranceReactions.length() > 0) ? allergyIntoleranceReactions : (),
        patient: {}
    };

    if al1.al14 == "SV" {
        allergyIntolerance.criticality = international401:CODE_CRITICALITY_HIGH;
    }

    allergyIntolerance.'type = isToAllergyIntoleranceType(al1.al12);

    return allergyIntolerance;
}

// TODO: Ballerina FHIR EVN and HL7 EVN is different for some fields
public isolated function evnToProvenance(Evn evn) returns international401:Provenance {
    r4:Coding[] coding = [
        {
            display: evn.name
        }
    ];

    international401:ProvenanceAgent[] agent = [];
    r4:Reference xcnToReferenceResult = xcnToReferenceWithType(evn.evn5, "Practitioner");
    if xcnToReferenceResult != {} {
        agent.push({
            who: xcnToReferenceResult
        });
    }
    r4:instant recorded = "";
    r4:dateTime occurredDateTime = "";

    international401:Provenance provenance = {
        activity: {
            coding: coding
        },
        recorded: recorded,
        agent: agent,
        occurredDateTime: (occurredDateTime != "") ? occurredDateTime : (),
        target: []
    };

    if evn.evn4 != "" && evn.evn4 != "U" {
        provenance.reason = [
            {
                coding: [
                    {
                        code: evn.evn4
                    }
                ]
            }
        ];
    }

    if evn.evn2.ts1 != "" {
        provenance.recorded = evn.evn2.ts1;
    }
    provenance.occurredDateTime = (evn.evn6.ts1 != "") ? hl7DateToFhir(evn.evn6.ts1) : ();

    return provenance;
};

public isolated function nk1ToPatient(Nk1 nk1) returns international401:Patient => {
    contact: nk1ToContact(nk1.nk12, nk1.nk14, nk1.nk15, nk1.nk16, nk1.nk17, nk1.nk18, nk1.nk19, nk1.nk113, nk1.nk115, nk1.nk130, nk1.nk131, nk1.nk132)
};

public isolated function pd1ToPatient(Pd1 pd1) returns international401:Patient {
    r4:Extension[]? extension = [];
    extension = pd1ToExtension(pd1.pd16);
    return {
        generalPractitioner: pd1ToGeneralPractitioner(pd1.pd13, pd1.pd14),
        extension: extension
    };
};

// --------------------------------------------------------------------------------------------#
// PD1-7 → Observation (Living Will)
// IG dependsOn: IF PD1-7 IS VALUED
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-pd1-to-observation.html
// --------------------------------------------------------------------------------------------#
public isolated function pd1ToLivingWillObservation(Pd1 pd1) returns international401:Observation {
    return {
        status: "final",
        code: {
            coding: [{
                system: "http://loinc.org",
                code: "45473-6",
                display: "Advance directive - living will"
            }]
        },
        valueCodeableConcept: {coding: [{code: pd1.pd17}]}
    };
};

public isolated function pidToPatient(Pid pid) returns international401:Patient {

    international401:Patient patient = {
        address: pidToAddress(pid.pid12, pid.pid11),
        telecom: pidToPhoneNumber(pid.pid13, pid.pid14),
        communication: pidToPrimaryLanguage(pid.pid15),
        maritalStatus: pidToMaritalStatus(pid.pid16),
        identifier: pidToSsnNumberIdentifier(pid.pid19),
        extension: (pid.pid23 != "") ? pidToBirthPlace(pid.pid23) : (),
        multipleBirthBoolean: (pid.pid24 != "") ? pidToMultipleBirthIndicator(pid.pid24) : (),
        multipleBirthInteger: (pid.pid25 != "-1.0") ? pidToBirthOrder(pid.pid25) : (),
        deceasedBoolean: (pid.pid30 != "") ? pidToPatientDeathIndicator(pid.pid30) : ()
    };

    patient.name = pidToPatientName(pid.pid5, pid.pid9);
    patient.birthDate = (pid.pid7.ts1 != "") ? hl7DateToFhir(pid.pid7.ts1) : ();
    patient.deceasedDateTime = (pid.pid29.ts1 != "") ? hl7DateToFhir(pid.pid29.ts1) : ();
    patient.gender = pidToAdministrativeSex(pid.pid8);
    return patient;
};

public isolated function pv1ToPatient(Pv1 pv1) returns international401:Patient {
    string extension = pv1.pv116;
    return {
        extension: (extension != "") ? pv1ToExtension(extension) : ()
    };
};

public isolated function pv1ToEncounter(Pv1 pv1) returns international401:Encounter {
    international401:Encounter encounter = {
        'class: {},
        status: "in-progress"
    };
    international401:EncounterLocation[] encounterLocations = [];
    international401:EncounterLocation encounterLoc1 = {
        location: {
            display: pv1.pv13.pl1 != "" ? pv1.pv13.pl1 : ()
        },
        status: getEncounterLocationStatus(pv1.pv13.pl5)
    };
    encounterLocations.push(encounterLoc1);

    international401:EncounterLocation encounterLoc2 = {
        location: {
            display: pv1.pv16.pl1 != "" ? pv1.pv16.pl1 : ()
        },
        status: getEncounterLocationStatus(pv1.pv16.pl5)
    };
    encounterLocations.push(encounterLoc2);

    international401:EncounterLocation encounterLoc3 = {
        location: {
            display: pv1.pv111.pl1 != "" ? pv1.pv111.pl1 : ()
        },
        status: getEncounterLocationStatus(pv1.pv111.pl5)
    };
    encounterLocations.push(encounterLoc3);

    international401:EncounterLocation encounterLoc4 = {
        location: {
            display: pv1.pv142.pl1 != "" ? pv1.pv142.pl1 : ()
        },
        status: getEncounterLocationStatus(pv1.pv142.pl5)
    };
    encounterLocations.push(encounterLoc4);

    international401:EncounterLocation encounterLoc5 = {
        location: {
            display: pv1.pv142.pl1 != "" ? pv1.pv142.pl1 : ()
        },
        status: getEncounterLocationStatus(pv1.pv142.pl5)
    };
    encounterLocations.push(encounterLoc5);

    international401:EncounterLocation encounterLoc6 = {
        location: {
            display: pv1.pv143.pl1 != "" ? pv1.pv143.pl1 : ()
        },
        status: getEncounterLocationStatus(pv1.pv143.pl5)
    };
    encounterLocations.push(encounterLoc6);

    international401:EncounterParticipant[] participants = [];

    int i = 0;
    int len = 1; // in hl7v23 case
    while i < len {
        string system = pv1.pv17[i].xcn8;
        string xcn1 = pv1.pv17[i].xcn1;
        string xcn10 = pv1.pv17[i].xcn10;

        international401:EncounterParticipant encounterParticipant =
            {
            individual: (xcn1 != "") ? {
                    display: xcn1
                } : (),
            'type: (xcn10 != "") ? [
                    {
                        coding: [
                            {
                                code: xcn10,
                                system: system != "" ? system : (),
                                display: xcn10 != "" ? xcn10 : ()
                            }
                        ]
                    }
                ] : ()
        };
        if encounterParticipant != {} {
            participants.push(encounterParticipant);
        }
        i = +1;
    }
    i = 0;
    int lenPv18 = 1; // in hl7v23 case
    while i < lenPv18 {
        string system = pv1.pv18[i].xcn8;
        string xcn1 = pv1.pv18[i].xcn1;
        string xcn10 = pv1.pv18[i].xcn10;
        international401:EncounterParticipant encounterParticipant = {
            individual: (xcn1 != "") ? {
                    display: xcn1
                } : (),
            'type: (xcn10 != "") ? [
                    {
                        coding: [
                            {
                                code: xcn10,
                                system: system != "" ? system : (),
                                display: xcn10 != "" ? xcn10 : ()
                            }
                        ]
                    }
                ] : ()
        };
        if encounterParticipant != {} {
            participants.push(encounterParticipant);
        }
        i = +1;
    }

    i = 0;
    while i < pv1.pv19.length() {
        string system = pv1.pv19[i].xcn8;
        international401:EncounterParticipant encounterParticipant = {
            individual: (pv1.pv19[i].xcn1 != "") ? {
                    display: pv1.pv19[i].xcn1
                } : (),
            'type: (pv1.pv19[i].xcn10 != "") ? [
                    {
                        coding: [
                            {
                                code: pv1.pv19[i].xcn10 != "" ? pv1.pv19[i].xcn10 : (),
                                system: system != "" ? system : (),
                                display: pv1.pv19[i].xcn10 != "" ? pv1.pv19[i].xcn10 : ()
                            }
                        ]
                    }
                ] : ()
        };
        if encounterParticipant != {} {
            participants.push(encounterParticipant);
        }
        i = +1;
    }

    i = 0;
    int lenPv17 = 1; // in hl7v23 case
    while i < lenPv17 {
        string system = pv1.pv17[i].xcn8;
        string code = pv1.pv17[i].xcn10;
        string xcn1 = pv1.pv17[i].xcn1;
        string xcn10 = pv1.pv17[i].xcn10;
        international401:EncounterParticipant encounterParticipant = {
            individual: (xcn1 != "") ? {
                    display: xcn1
                } : (),
            'type: (xcn10 != "") ? [
                    {
                        coding: [
                            {
                                code: code != "" ? code : (),
                                system: system != "" ? system : (),
                                display: xcn10 != "" ? xcn10 : ()
                            }
                        ]
                    }
                ] : ()
        };
        if encounterParticipant != {} {
            participants.push(encounterParticipant);
        }
        i = +1;
    }

    // Define pv1.pv152 hl7v27:PV1, hl7v28:PV1
    i = 0;
    while i < pv1.pv152.length() {
        international401:EncounterParticipant encounterParticipant = {
            individual: (pv1.pv152[i].xcn1 != "") ? {
                    display: pv1.pv152[i].xcn1
                } : (),
            'type: (pv1.pv152[i].xcn8 != "") ? [
                    {
                        coding: [
                            {
                                code: "PART",
                                system: pv1.pv152[i].xcn8,
                                display: "Participation"
                            }
                        ]
                    }
                ] : ()
        };
        if encounterParticipant != {} {
            participants.push(encounterParticipant);
        }
        i = +1;
    }

    if pv1.pv12 != "" {
        encounter.'class = {
            display: pv1.pv12
        };
    }

    if pv1.pv14 != "" {
        encounter.'type = [
            {
                text: pv1.pv14
            }
        ];
    }

    if pv1.pv113 != "" {
        encounter.hospitalization.reAdmission = {
            text: pv1.pv113
        };
    }

    if pv1.pv114 != "" {
        encounter.hospitalization.admitSource = {
            text: pv1.pv114
        };
    }

    if pv1.pv136 != "" {
        encounter.hospitalization.dischargeDisposition = {
            text: pv1.pv136
        };
    }

    if pv1.pv137.cm_dld1 != "" {
        encounter.hospitalization.destination = {
            reference: pv1.pv137.cm_dld1
        };
    }

    if pv1.pv138 != "" {
        encounter.hospitalization.dietPreference = [
            {
                text: pv1.pv138
            }
        ];
    }

    if pv1.pv139 != "" {
        encounter.hospitalization.specialCourtesy = [
            {
                text: pv1.pv139
            }
        ];
    }

    if pv1.pv15.cx1 != "" {
        encounter.hospitalization.preAdmissionIdentifier = {
            value: pv1.pv15.cx1,
            assigner: (pv1.pv15.cx4.hd1 != "") ? {
                    display: pv1.pv15.cx4.hd1
                } : ()
        };
    }

    if pv1.pv110 != "" {
        encounter.serviceType = {
            text: pv1.pv110
        };
    }

    r4:Identifier[] identifier = [];
    if pv1.pv119.cx1 != "" {
        identifier.push({
            value: pv1.pv119.cx1,
            'type: {
                coding: (pv1.pv119.cx4.hd1 != "") ? [
                        {
                            system: pv1.pv119.cx4.hd1,
                            code: pv1.pv119.cx5
                        }
                    ] : (),
                text: (pv1.pv119.cx1 != "") ? pv1.pv119.cx1 : ()
            }
        });
    }
    if pv1.pv150.cx1 != "" {
        identifier.push({
            value: pv1.pv150.cx1,
            'type: {
                coding: (pv1.pv150.cx5 != "") ? [
                        {
                            system: pv1.pv150.cx4.hd1,
                            code: pv1.pv150.cx5
                        }
                    ] : (),
                text: (pv1.pv150.cx1 != "") ? pv1.pv150.cx1 : ()
            }
        });
    }
    encounter.identifier = (identifier.length() > 0) ? identifier : ();

    encounter.period.'start = (pv1.pv144.ts1 != "") ? pv1.pv144.ts1 : ();
    encounter.period.end = (pv1.pv145.ts1 != "") ? pv1.pv145.ts1 : ();

    if encounter.period == {} {
        encounter.period = ();
    }

    if pv1.pv145.ts1 != "" {
        encounter.status = "finished";
    }

    encounter.location = (encounterLocations.length() > 0) ? encounterLocations : ();
    encounter.participant = (participants.length() > 0) ? participants : ();

    return encounter;
};

public isolated function pv2ToEncounter(Pv2 pv2) returns international401:Encounter {
    string display = pv2.pv21.pl1;
    international401:EncounterLocation[] location = [
        {
            location: {
                display: display // TODO: location need to mapped correctly
            }
        }
    ];

    r4:Coding[] coding = [idToCoding(pv2.pv222)];

    international401:EncounterParticipant[] participant = []; // TODO: participant need to mapped correctly
    participant = [
        {
            id: pv2.pv213.xcn1
        }
    ];

    string priority = pv2.pv225;

    international401:Encounter encounter = {
        location: location,
        reasonCode: ceToCodeableConcepts(pv2.pv23),
        text: {
            div: pv2.pv212,
            status: "empty"
        },
        priority: {
            text: priority
        },
        meta: {
            security: coding
        },
        participant: participant,
        'class: {},
        status: "in-progress"
    };

    string pv211 = pv2.pv211.toString();
    if pv211 != "" {
        decimal|error pv211Val = decimal:fromString(pv211);
        if pv211Val is error {
            log:printWarn("Error while converting pv2-11 field to decimal", pv211Val);
        } else {
            encounter.length.value = pv211Val;
        }
    } else {
        log:printDebug("pv2-11 field is empty");
    }

    return encounter;
};

// --- Financial Management ---
public isolated function dg1ToCondition(Dg1 dg1) returns international401:Condition {
    international401:Condition condition = {
        subject: {}
    };
    r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(dg1.dg13);
    if ceToCodeableConceptResult != {} {
        ceToCodeableConceptResult.text = (dg1.dg14 != "") ? dg1.dg14 : ();
        condition.code = ceToCodeableConceptResult;
    }
    condition.onsetDateTime = dg1.dg15.ts1 != "" ? hl7DateToFhir(dg1.dg15.ts1) : ();
    condition.recordedDate = dg1.dg119.ts1 != "" ? hl7DateToFhir(dg1.dg119.ts1) : ();
    Xcn[] dg116 = dg1.dg116;
    foreach var item in dg116 {
        if item.xcn1 != "" {
            condition.asserter.reference = item.xcn1;
        }
    }
    if condition.keys().length() > 1 {
        condition.id = generateFhirResourceId();
    }

    return condition;
}

public isolated function dg1ToEncounter(Dg1 dg1, string? conditionId) returns international401:Encounter {
    international401:Encounter encounter = {
        'class: {},
        status: "finished"
    };
    Is dg16 = dg1.dg16;
    if conditionId is string {
        international401:EncounterDiagnosis encounterDiagnosis = {
            condition: {
                reference: string `Condition/${conditionId}`
            }
        };
        if dg16 != "" {
            encounterDiagnosis.use = {
                text: dg16
            };
        }
        encounter.diagnosis = [encounterDiagnosis];
        encounter.id = generateFhirResourceId();
    }
    return encounter;
}

public isolated function dg1ToEpisodeOfCare(Dg1 dg1, string? conditionId, string? patientId) returns international401:EpisodeOfCare {
    international401:EpisodeOfCare episodeOfCare = {
        patient: {},
        status: "active"
    };
    if conditionId is string {
        international401:EpisodeOfCareDiagnosis episodeOfCareDiagnosis = {
            condition: {
                reference: string `Condition/${conditionId}`
            }
        };
        episodeOfCare.diagnosis = [episodeOfCareDiagnosis];
        Is dg16 = dg1.dg16;
        if dg16 != "" {
            episodeOfCareDiagnosis.role = {
                text: dg16
            };
        }
    }
    if patientId is string {
        episodeOfCare.patient.reference = string `Patient/${patientId}`;
        episodeOfCare.id = generateFhirResourceId();
    }

    return episodeOfCare;
}

public isolated function obxToObservation(Obx obx) returns international401:Observation {
    // IG dependsOn: IF OBX-5.count > 1 AND OBX-2 != "NA" → component observation
    //               IF OBX-5.count <= 1 OR OBX-2 == "NA"  → single-value observation
    boolean isComponent = obx.obx5.length() > 1 && obx.obx2 != "NA";

    r4:CodeableConcept code = ceToCodeableConcept(obx.obx3);
    international401:Observation observation = {
        code: code != {} ? code : {},
        dataAbsentReason: idToCodeableConcept(obx.obx11),
        status: "preliminary"
    };
    observation.effectiveDateTime = (obx.obx14.ts1 != "") ? tsToDateTime(obx.obx14) : ();
    r4:CodeableConcept method = ceToCodeableConcept(obx.obx17[0]);
    if method != {} {
        observation.method = method;
    }

    if isComponent {
        // Multi-value OBX: each OBX-5 repetition becomes a component
        international401:ObservationComponent[] components = [];
        foreach var val in obx.obx5 {
            string valStr = val.toString();
            if valStr != "" {
                components.push({
                    code: observation.code,
                    valueString: valStr
                });
            }
        }
        if components.length() > 0 {
            observation.component = components;
        }
    } else {
        // Single-value OBX
        string singleVal = obx.obx5[0].toString();
        observation.valueString = singleVal != "" ? singleVal : ();
    }

    return observation;
};

public isolated function obrToDiagnosticReport(Obr obr) returns international401:DiagnosticReport {
    r4:CodeableConcept code = {};
    international401:DiagnosticReport diagnosticReport = {
        code: code,
        category: idToCodeableConceptArray(obr.obr24),
        status: idToDiagnosticReportStatus(obr.obr25)
    };
    r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(obr.obr4);
    if ceToCodeableConceptResult != {} {
        diagnosticReport.code = ceToCodeableConceptResult;
    }
    diagnosticReport.effectiveDateTime = tsToDateTime(obr.obr7);
    diagnosticReport.effectivePeriod.'start = tsToDateTime(obr.obr7);
    diagnosticReport.effectivePeriod.end = tsToDateTime(obr.obr8);
    diagnosticReport.issued = tsToInstant(obr.obr22);
    r4:Identifier eiToIdentifierResult = eiToIdentifier(obr.obr2);
    if eiToIdentifierResult != {} {
        diagnosticReport.subject.identifier = eiToIdentifierResult;
    }
    return diagnosticReport;
};

public isolated function obrToServiceRequest(Obr obr) returns international401:ServiceRequest {
    international401:ServiceRequest serviceRequest = {
        intent: nameToServiceRequestIntent(obr.name),
        priority: idToServiceRequestPriority(obr.obr5),
        status: "unknown",
        subject: {}
    };
    r4:Identifier eiToIdentifierResult = eiToIdentifier(obr.obr3);
    if eiToIdentifierResult != {} {
        serviceRequest.identifier = [eiToIdentifierResult];
    }
    r4:Reference xcnToReferenceResult = xcnToReference(obr.obr16[0]);
    if xcnToReferenceResult != {} {
        serviceRequest.requester = xcnToReferenceResult;
    }
    r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(obr.obr4);
    if ceToCodeableConceptResult != {} {
        serviceRequest.code = ceToCodeableConceptResult;
    }
    serviceRequest.occurrenceDateTime = tsToDateTime(obr.obr6);
    serviceRequest.reasonCode = [ceToCodeableConcept(obr.obr31[0])];
    return serviceRequest;
};

public function orcToDiagnosticReport(Orc orc) returns international401:DiagnosticReport {
    // Identifier
    r4:Identifier[] identifierList = [];

    r4:Identifier id1 = {};
    r4:CodeableConcept tempCC = {coding: [eiToCoding(<hl7v23:EI>orc.orc2)]};
    identifierList.push({
        'type: tempCC
    });
    r4:CodeableConcept cc1 = {coding: [eiToCoding(<hl7v23:EI>orc.orc2)]};
    id1 = {
        'type: cc1
    };

    r4:CodeableConcept cc2 = {coding: [eiToCoding(orc.orc3)]};

    r4:Identifier id2 = {
        'type: cc2
    };

    r4:CodeableConcept cc3 = {coding: [eiToCoding(orc.orc4)]};

    r4:Identifier id3 = {
        'type: cc3
    };

    r4:uri url = "";
    r4:CodeableConcept valueCodeableConcept = {};

    r4:uri? ceToUriResult = ceToUri(orc.orc16);
    if ceToUriResult is r4:uri {
        url = ceToUriResult;
    }
    valueCodeableConcept = ceToCodeableConcept(orc.orc16);

    // Extensions
    r4:Extension[] ext = [
        {
            url: url,
            valueCodeableConcept: valueCodeableConcept
        }
    ];

    international401:DiagnosticReport diagnosticReport = {
        identifier: [...identifierList, id1, eiToIdentifier(orc.orc3), id2, eiToIdentifier(orc.orc3), id3],
        extension: ext,
        code: {},
        status: "partial"
    };

    return diagnosticReport;
};

public isolated function orcToImmunization(Orc orc) returns international401:Immunization {
    // Identifier
    r4:Identifier[] identifierList = [];
    r4:Identifier id1 = {};

    r4:CodeableConcept tempCC = {coding: [eiToCoding(<hl7v23:EI>orc.orc2)]};
    identifierList.push({
        'type: tempCC
    });

    r4:CodeableConcept cc1 = {coding: [eiToCoding(<hl7v23:EI>orc.orc2)]};
    id1 = {
        'type: cc1
    };

    r4:CodeableConcept cc2 = {coding: [eiToCoding(orc.orc3)]};

    r4:Identifier id2 = {
        'type: cc2
    };

    // performer
    international401:ImmunizationPerformer[] immunizationPerformer = [
        {
            actor: xcnToReference(orc.orc12[0]),
            'function: xcnToCodeableConcept(orc.orc12[0])
        }
    ];

    international401:Immunization immunization = {
        identifier: [...identifierList, id1, eiToIdentifier(orc.orc3), id2],
        performer: immunizationPerformer,
        occurrenceDateTime: "",
        occurrenceString: "",
        patient: {},
        status: "not-done",
        vaccineCode: {}
    };
    immunization.recorded = tsToDateTime(orc.orc9);

    return immunization;
};

// --------------------------------------------------------------------------------------------#
// NK1 → RelatedPerson
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-nk1-to-relatedperson.html
// --------------------------------------------------------------------------------------------#
public isolated function nk1ToRelatedPerson(Nk1 nk1) returns international401:RelatedPerson {
    international401:RelatedPerson relatedPerson = {
        patient: {}
    };

    r4:HumanName[] names = [];
    foreach hl7v23:XPN item in nk1.nk12 {
        r4:HumanName name = xpnToHumanName(item);
        if name != {} {
            names.push(name);
        }
    }
    foreach hl7v23:XPN item in nk1.nk130 {
        r4:HumanName name = xpnToHumanName(item);
        if name != {} {
            names.push(name);
        }
    }
    relatedPerson.name = (names.length() > 0) ? names : ();

    r4:CodeableConcept[] relationship = [];
    r4:CodeableConcept rel = ceToCodeableConcept(nk1.nk13);
    if rel != {} {
        relationship.push(rel);
    }
    r4:CodeableConcept contactRole = ceToCodeableConcept(nk1.nk17);
    if contactRole != {} {
        relationship.push(contactRole);
    }
    relatedPerson.relationship = (relationship.length() > 0) ? relationship : ();

    r4:Address[] addresses = [];
    foreach hl7v23:XAD item in nk1.nk14 {
        r4:Address? addr = xadToAddress(item);
        if addr is r4:Address {
            addresses.push(addr);
        }
    }
    foreach hl7v23:XAD item in nk1.nk132 {
        r4:Address? addr = xadToAddress(item);
        if addr is r4:Address {
            addresses.push(addr);
        }
    }
    relatedPerson.address = (addresses.length() > 0) ? addresses : ();

    r4:ContactPoint[] telecoms = [];
    foreach hl7v23:XTN item in nk1.nk15 {
        r4:ContactPoint? cp = xtnToContactPoint(item);
        if cp is r4:ContactPoint {
            telecoms.push(cp);
        }
    }
    foreach hl7v23:XTN item in nk1.nk16 {
        r4:ContactPoint? cp = xtnToContactPoint(item);
        if cp is r4:ContactPoint {
            telecoms.push(cp);
        }
    }
    foreach hl7v23:XTN item in nk1.nk131 {
        r4:ContactPoint? cp = xtnToContactPoint(item);
        if cp is r4:ContactPoint {
            telecoms.push(cp);
        }
    }
    relatedPerson.telecom = (telecoms.length() > 0) ? telecoms : ();

    r4:Period period = {'start: nk1.nk18 != "" ? nk1.nk18 : (), end: nk1.nk19 != "" ? nk1.nk19 : ()};
    if period != {} {
        relatedPerson.period = period;
    }

    relatedPerson.gender = pidToAdministrativeSex(nk1.nk115);
    relatedPerson.birthDate = (nk1.nk116.ts1 != "") ? hl7DateToFhir(nk1.nk116.ts1) : ();

    r4:Identifier[] identifiers = [];
    r4:Identifier empId = cxToIdentifier(nk1.nk112);
    if empId != {} {
        identifiers.push(empId);
    }
    foreach hl7v23:CX item in nk1.nk133 {
        r4:Identifier id = cxToIdentifier(item);
        if id != {} {
            identifiers.push(id);
        }
    }
    if nk1.nk137 != "" {
        identifiers.push({
            value: nk1.nk137,
            system: "http://hl7.org/fhir/sid/us-ssn",
            'type: {coding: [{code: "SS", system: "http://terminology.hl7.org/CodeSystem/v2-0203"}]}
        });
    }
    relatedPerson.identifier = (identifiers.length() > 0) ? identifiers : ();

    r4:CodeableConcept? lang = ceToCodeableConcept(nk1.nk120);
    if lang is r4:CodeableConcept && lang != {} {
        relatedPerson.communication = [{language: lang}];
    }

    return relatedPerson;
};

// --------------------------------------------------------------------------------------------#
// NTE → Observation
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-nte-to-observation.html
// Note: HL7v2.3 NTE segment only has nte3 (comment text); nte5/nte6 fields are v2.6+
// --------------------------------------------------------------------------------------------#
public isolated function nteToObservation(Nte nte) returns international401:Observation {
    r4:Annotation[] notes = [];
    foreach hl7v23:FT commentLine in nte.nte3 {
        if commentLine != "" {
            notes.push({text: commentLine});
        }
    }
    international401:Observation observation = {
        code: {},
        status: "preliminary",
        note: (notes.length() > 0) ? notes : ()
    };
    return observation;
};

// --------------------------------------------------------------------------------------------#
// ORC → ServiceRequest
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-orc-to-servicerequest.html
// --------------------------------------------------------------------------------------------#
public isolated function orcToServiceRequest(Orc orc) returns international401:ServiceRequest {
    international401:ServiceRequest serviceRequest = {
        intent: "order",
        status: "unknown",
        subject: {}
    };

    r4:Identifier[] identifiers = [];
    r4:Identifier id1 = eiToIdentifier(<hl7v23:EI>orc.orc2);
    if id1 != {} {
        id1.'type = {coding: [{code: "PLAC", system: "http://terminology.hl7.org/CodeSystem/v2-0203"}]};
        identifiers.push(id1);
    }
    r4:Identifier id2 = eiToIdentifier(orc.orc3);
    if id2 != {} {
        id2.'type = {coding: [{code: "FILL", system: "http://terminology.hl7.org/CodeSystem/v2-0203"}]};
        identifiers.push(id2);
    }
    serviceRequest.identifier = (identifiers.length() > 0) ? identifiers : ();

    r4:Reference requester = xcnToReference(orc.orc12[0]);
    if requester != {} {
        serviceRequest.requester = requester;
    }

    r4:CodeableConcept? reasonCode = ceToCodeableConcept(orc.orc16);
    if reasonCode is r4:CodeableConcept && reasonCode != {} {
        serviceRequest.reasonCode = [reasonCode];
    }

    serviceRequest.authoredOn = tsToDateTime(orc.orc9);
    serviceRequest.occurrenceDateTime = tsToDateTime(orc.orc15);

    return serviceRequest;
};

// --------------------------------------------------------------------------------------------#
// PR1 → Procedure
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-pr1-to-procedure.html
// --------------------------------------------------------------------------------------------#
public isolated function pr1ToProcedure(Pr1 pr1) returns international401:Procedure {
    international401:Procedure procedure = {
        subject: {},
        status: "unknown"
    };

    r4:CodeableConcept code = ceToCodeableConcept(pr1.pr13);
    if code != {} {
        if pr1.pr14 != "" {
            code.text = pr1.pr14;
        }
        procedure.code = code;
    }

    procedure.performedDateTime = (pr1.pr15.ts1 != "") ? hl7DateToFhir(pr1.pr15.ts1) : ();

    if pr1.pr16 != "" {
        procedure.category = {
            coding: [{code: pr1.pr16}]
        };
    }

    international401:ProcedurePerformer[] performers = [];
    foreach hl7v23:XCN item in pr1.pr18 {
        r4:Reference ref = xcnToReferenceWithName(item, "Practitioner");
        if ref != {} {
            performers.push({
                actor: ref,
                'function: {coding: [{code: "88189002", system: "http://snomed.info/sct", display: "Anesthesiologist"}]}
            });
        }
    }
    foreach hl7v23:XCN item in pr1.pr111 {
        r4:Reference ref = xcnToReferenceWithName(item, "Practitioner");
        if ref != {} {
            performers.push({
                actor: ref,
                'function: {coding: [{code: "304292004", system: "http://snomed.info/sct", display: "Surgeon"}]}
            });
        }
    }
    foreach hl7v23:XCN item in pr1.pr112 {
        r4:Reference ref = xcnToReferenceWithName(item, "Practitioner");
        if ref != {} {
            performers.push({actor: ref});
        }
    }
    procedure.performer = (performers.length() > 0) ? performers : ();

    r4:CodeableConcept reasonCode = ceToCodeableConcept(pr1.pr115);
    if reasonCode != {} {
        procedure.reasonCode = [reasonCode];
    }

    return procedure;
};

// --------------------------------------------------------------------------------------------#
// RXA → Immunization
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rxa-to-immunization.html
// --------------------------------------------------------------------------------------------#
public isolated function rxaToImmunization(Rxa rxa) returns international401:Immunization {
    international401:Immunization immunization = {
        occurrenceDateTime: "",
        occurrenceString: "",
        patient: {},
        status: "completed",
        vaccineCode: {}
    };

    immunization.occurrenceDateTime = (rxa.rxa3.ts1 != "") ? hl7DateToFhir(rxa.rxa3.ts1) : ();

    r4:CodeableConcept vaccineCode = ceToCodeableConcept(rxa.rxa5);
    if vaccineCode != {} {
        immunization.vaccineCode = vaccineCode;
    }

    if rxa.rxa6 != "" {
        decimal|error doseVal = decimal:fromString(rxa.rxa6);
        if doseVal is decimal {
            r4:CodeableConcept doseUnits = ceToCodeableConcept(rxa.rxa7);
            immunization.doseQuantity = {
                value: doseVal,
                code: doseUnits.coding != () ? doseUnits.coding.toString() : (),
                unit: doseUnits.coding != () ? doseUnits.coding.toString() : ()
            };
        }
    }

    r4:Reference performer = xcnToReferenceWithName(rxa.rxa10, "Practitioner");
    if performer != {} {
        immunization.performer = [{
            actor: performer,
            'function: {coding: [{code: "AP", system: "http://terminology.hl7.org/CodeSystem/v2-0443", display: "Administering Provider"}]}
        }];
    }

    if rxa.rxa15.length() > 0 && rxa.rxa15[0] != "" {
        immunization.lotNumber = rxa.rxa15[0];
    }

    if rxa.rxa16.length() > 0 && rxa.rxa16[0].ts1 != "" {
        immunization.expirationDate = hl7DateToFhir(rxa.rxa16[0].ts1);
    }

    if rxa.rxa17.length() > 0 {
        r4:CodeableConcept mfr = ceToCodeableConcept(rxa.rxa17[0]);
        if mfr != {} {
            immunization.manufacturer = {display: mfr.coding.toString()};
        }
    }

    if rxa.rxa18.length() > 0 {
        r4:CodeableConcept refusalReason = ceToCodeableConcept(rxa.rxa18[0]);
        if refusalReason != {} {
            immunization.statusReason = refusalReason;
        }
    }

    if rxa.rxa19.length() > 0 {
        r4:CodeableConcept[] reasonCodes = [];
        foreach hl7v23:CE item in rxa.rxa19 {
            r4:CodeableConcept rc = ceToCodeableConcept(item);
            if rc != {} {
                reasonCodes.push(rc);
            }
        }
        immunization.reasonCode = (reasonCodes.length() > 0) ? reasonCodes : ();
    }

    match rxa.rxa20 {
        "CP" => { immunization.status = "completed"; }
        "RE" => { immunization.status = "not-done"; }
        "PA" => { immunization.status = "completed"; }
        "NA" => { immunization.status = "not-done"; }
        _ => { immunization.status = "completed"; }
    }

    immunization.recorded = tsToDateTime(rxa.rxa22);

    return immunization;
};

// --------------------------------------------------------------------------------------------#
// RXO → MedicationRequest
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rxo-to-medicationrequest.html
// --------------------------------------------------------------------------------------------#
public isolated function rxoToMedicationRequest(Rxo rxo) returns international401:MedicationRequest {
    international401:MedicationRequest medicationRequest = {
        intent: "original-order",
        status: "unknown",
        subject: {},
        medicationCodeableConcept: ceToCodeableConcept(rxo.rxo1)
    };

    r4:Reference requester = xcnToReferenceWithName(rxo.rxo14, "Practitioner");
    if requester != {} {
        medicationRequest.requester = requester;
    }

    r4:Dosage dosage = {};
    if rxo.rxo2 != "" || rxo.rxo3 != "" {
        decimal? lowVal = ();
        decimal? highVal = ();
        if rxo.rxo2 != "" {
            decimal|error lv = decimal:fromString(rxo.rxo2);
            if lv is decimal {
                lowVal = lv;
            }
        }
        if rxo.rxo3 != "" {
            decimal|error hv = decimal:fromString(rxo.rxo3);
            if hv is decimal {
                highVal = hv;
            }
        }
        r4:CodeableConcept units = ceToCodeableConcept(rxo.rxo4);
        string? unitCode = ();
        string? unitStr = ();
        if units.coding != () {
            r4:Coding[]? codings = units.coding;
            if codings is r4:Coding[] && codings.length() > 0 {
                unitCode = codings[0].code;
                unitStr = codings[0].display;
            }
        }
        if lowVal != () || highVal != () {
            dosage.doseAndRate = [{
                doseRange: {
                    low: lowVal != () ? {value: lowVal, code: unitCode, unit: unitStr} : {},
                    high: highVal != () ? {value: highVal, code: unitCode, unit: unitStr} : {}
                }
            }];
        }
    }
    if dosage != {} {
        medicationRequest.dosageInstruction = [dosage];
    }

    if rxo.rxo9 != "" {
        medicationRequest.substitution = {
            allowedCodeableConcept: {coding: [{code: rxo.rxo9}]}
        };
    }

    if rxo.rxo11 != "" || rxo.rxo13 != "" {
        international401:MedicationRequestDispenseRequest dispenseRequest = {};
        if rxo.rxo11 != "" {
            decimal|error qty = decimal:fromString(rxo.rxo11);
            if qty is decimal {
                dispenseRequest.quantity = {value: qty};
            }
        }
        if rxo.rxo13 != "" {
            decimal|error refills = decimal:fromString(rxo.rxo13);
            if refills is decimal {
                dispenseRequest.numberOfRepeatsAllowed = <int>refills;
            }
        }
        if dispenseRequest != {} {
            medicationRequest.dispenseRequest = dispenseRequest;
        }
    }

    return medicationRequest;
};

// --------------------------------------------------------------------------------------------#
// RXR → Immunization (adds route/site to immunization)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rxr-to-immunization.html
// --------------------------------------------------------------------------------------------#
public isolated function rxrToImmunization(Rxr rxr) returns international401:Immunization {
    international401:Immunization immunization = {
        occurrenceDateTime: "",
        occurrenceString: "",
        patient: {},
        status: "completed",
        vaccineCode: {}
    };
    r4:CodeableConcept route = ceToCodeableConcept(rxr.rxr1);
    if route != {} {
        immunization.route = route;
    }
    r4:CodeableConcept site = ceToCodeableConcept(rxr.rxr2);
    if site != {} {
        immunization.site = site;
    }
    return immunization;
};

// --------------------------------------------------------------------------------------------#
// RXR → MedicationRequest (adds route/site/method to dosageInstruction)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rxr-to-medicationrequest.html
// --------------------------------------------------------------------------------------------#
public isolated function rxrToMedicationRequest(Rxr rxr) returns international401:MedicationRequest {
    international401:MedicationRequest medicationRequest = {
        intent: "order",
        status: "unknown",
        subject: {},
        medicationCodeableConcept: {}
    };
    r4:Dosage dosage = {};
    r4:CodeableConcept route = ceToCodeableConcept(rxr.rxr1);
    if route != {} {
        dosage.route = route;
    }
    r4:CodeableConcept site = ceToCodeableConcept(rxr.rxr2);
    if site != {} {
        dosage.site = site;
    }
    r4:CodeableConcept method = ceToCodeableConcept(rxr.rxr4);
    if method != {} {
        dosage.method = method;
    }
    if dosage != {} {
        medicationRequest.dosageInstruction = [dosage];
    }
    return medicationRequest;
};

// --------------------------------------------------------------------------------------------#
// SCH → Appointment
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-sch-to-appointment.html
// --------------------------------------------------------------------------------------------#
public isolated function schToAppointment(Sch sch) returns international401:Appointment {
    international401:AppointmentParticipant defaultParticipant = {
        status: "needs-action"
    };
    international401:Appointment appointment = {
        status: "proposed",
        participant: [defaultParticipant]
    };

    r4:Identifier[] identifiers = [];
    r4:Identifier id1 = eiToIdentifier(sch.sch1);
    if id1 != {} {
        id1.'type = {coding: [{code: "PLAC", system: "http://terminology.hl7.org/CodeSystem/v2-0203"}]};
        identifiers.push(id1);
    }
    r4:Identifier id2 = eiToIdentifier(sch.sch2);
    if id2 != {} {
        id2.'type = {coding: [{code: "FILL", system: "http://terminology.hl7.org/CodeSystem/v2-0203"}]};
        identifiers.push(id2);
    }
    appointment.identifier = (identifiers.length() > 0) ? identifiers : ();

    r4:CodeableConcept apptReason = ceToCodeableConcept(sch.sch7);
    if apptReason != {} {
        appointment.reasonCode = [apptReason];
    }

    r4:CodeableConcept apptType = ceToCodeableConcept(sch.sch8);
    if apptType != {} {
        appointment.appointmentType = apptType;
    }

    if sch.sch9 != "" {
        decimal|error duration = decimal:fromString(sch.sch9);
        if duration is decimal {
            appointment.minutesDuration = <int>duration;
        }
    }

    international401:AppointmentParticipant[] participants = [];
    r4:Reference placer = xcnToReferenceWithName(sch.sch12, "Practitioner");
    if placer != {} {
        participants.push({
            actor: placer,
            'type: [{coding: [{code: "PART", system: "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"}]}],
            status: "accepted"
        });
    }
    r4:Reference filler = xcnToReferenceWithName(sch.sch16, "Practitioner");
    if filler != {} {
        participants.push({
            actor: filler,
            'type: [{coding: [{code: "PART", system: "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"}]}],
            status: "accepted"
        });
    }
    r4:Reference enteredBy = xcnToReferenceWithName(sch.sch20, "Practitioner");
    if enteredBy != {} {
        participants.push({
            actor: enteredBy,
            'type: [{coding: [{code: "ENT", system: "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"}]}],
            status: "accepted"
        });
    }
    appointment.participant = (participants.length() > 0) ? participants : [defaultParticipant];

    if sch.sch25.ce1 != "" {
        match sch.sch25.ce1 {
            "Pending" => { appointment.status = "pending"; }
            "Complete" => { appointment.status = "fulfilled"; }
            "Cancelled" => { appointment.status = "cancelled"; }
            "Discontinued" => { appointment.status = "cancelled"; }
            _ => { appointment.status = "proposed"; }
        }
    }

    return appointment;
};

// --------------------------------------------------------------------------------------------#
// TXA → DocumentReference
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-txa-to-documentreference.html
// --------------------------------------------------------------------------------------------#
public isolated function txaToDocumentReference(Txa txa) returns international401:DocumentReference {
    international401:DocumentReference documentReference = {
        status: "current",
        content: [{attachment: {}}]
    };

    if txa.txa2 != "" {
        documentReference.'type = {coding: [{code: txa.txa2}]};
    }

    if txa.txa3 != "" {
        documentReference.content = [{
            attachment: {
                contentType: txa.txa3
            }
        }];
    }

    documentReference.date = (txa.txa6.ts1 != "") ? tsToInstant(txa.txa6) : ();

    r4:Reference[] authors = [];
    r4:Reference author = xcnToReferenceWithName(txa.txa9, "Practitioner");
    if author != {} {
        authors.push(author);
    }
    documentReference.author = (authors.length() > 0) ? authors : ();

    if txa.txa10.length() > 0 {
        r4:Reference auth = xcnToReferenceWithName(txa.txa10[0], "Practitioner");
        if auth != {} {
            documentReference.authenticator = auth;
        }
    }

    r4:Identifier masterId = eiToIdentifier(txa.txa12);
    if masterId != {} {
        documentReference.masterIdentifier = masterId;
    }

    if txa.txa16 != "" {
        documentReference.identifier = [{value: txa.txa16}];
    }

    if txa.txa17 != "" {
        match txa.txa17 {
            "AU" => { documentReference.docStatus = "final"; }
            "DI" => { documentReference.docStatus = "preliminary"; }
            "DO" => { documentReference.docStatus = "preliminary"; }
            "IN" => { documentReference.docStatus = "preliminary"; }
            "IP" => { documentReference.docStatus = "preliminary"; }
            "LA" => { documentReference.docStatus = "amended"; }
            "OB" => { documentReference.docStatus = "entered-in-error"; }
            "PA" => { documentReference.docStatus = "preliminary"; }
            "PR" => { documentReference.docStatus = "preliminary"; }
            "PY" => { documentReference.docStatus = "amended"; }
            "UN" => { documentReference.docStatus = "preliminary"; }
            _ => {}
        }
    }

    if txa.txa19 != "" {
        match txa.txa19 {
            "AV" => { documentReference.status = "current"; }
            "CA" => { documentReference.status = "entered-in-error"; }
            "OB" => { documentReference.status = "superseded"; }
            "UN" => { documentReference.status = "current"; }
            _ => {}
        }
    }

    if txa.txa21 != "" {
        documentReference.description = txa.txa21;
    }

    return documentReference;
};

// --------------------------------------------------------------------------------------------#
// TXA-8 → Provenance (edit history)
// IG dependsOn: IF TXA-8 IS VALUED (each edit date creates a separate Provenance instance)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-txa-to-provenance.html
// --------------------------------------------------------------------------------------------#
public isolated function txaToProvenance(Txa txa) returns international401:Provenance {
    international401:Provenance provenance = {
        recorded: "",
        target: [{}],
        agent: [{'type: {}, who: {}}]
    };
    // TXA-8 is TS[] (edit date/time repetitions); use first valued entry
    foreach var ts in txa.txa8 {
        if ts.ts1 != "" {
            r4:instant? recorded = tsToInstant(ts);
            if recorded != () {
                provenance.recorded = recorded;
            }
            break;
        }
    }
    // TXA-9 (originator) → agent.who
    r4:Reference originator = xcnToReferenceWithName(txa.txa9, "Practitioner");
    if originator != {} {
        provenance.agent = [{'type: {coding: [{code: "author"}]}, who: originator}];
    }
    return provenance;
};

// --------------------------------------------------------------------------------------------#
// ROL → RelatedPerson
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rol-to-relatedperson.html
// --------------------------------------------------------------------------------------------#
public isolated function rolToRelatedPerson(Rol rol) returns international401:RelatedPerson {
    international401:RelatedPerson relatedPerson = {
        patient: {}
    };

    r4:Identifier roleId = eiToIdentifier(rol.rol1);
    if roleId != {} {
        relatedPerson.identifier = [roleId];
    }

    r4:CodeableConcept relationship = ceToCodeableConcept(rol.rol3);
    if relationship != {} {
        relatedPerson.relationship = [relationship];
    }

    r4:HumanName personName = xcnToHumanName(rol.rol4);
    if personName != {} {
        relatedPerson.name = [personName];
    }

    r4:Period period = {
        'start: (rol.rol5.ts1 != "") ? hl7DateToFhir(rol.rol5.ts1) : (),
        end: (rol.rol6.ts1 != "") ? hl7DateToFhir(rol.rol6.ts1) : ()
    };
    if period != {} {
        relatedPerson.period = period;
    }

    return relatedPerson;
};

// --------------------------------------------------------------------------------------------#
// MSA → MessageHeader (response)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-msa-to-messageheader.html
// --------------------------------------------------------------------------------------------#
public isolated function msaToMessageHeader(Msa msa) returns international401:MessageHeader {
    international401:MessageHeaderResponseCode responseCode = "ok";
    match msa.msa1 {
        "AA" => { responseCode = "ok"; }
        "AE" => { responseCode = "fatal-error"; }
        "AR" => { responseCode = "fatal-error"; }
        "CA" => { responseCode = "ok"; }
        "CE" => { responseCode = "transient-error"; }
        "CR" => { responseCode = "transient-error"; }
        _ => { responseCode = "ok"; }
    }
    international401:MessageHeader messageHeader = {
        'source: {endpoint: ""},
        eventUri: "",
        response: {
            identifier: msa.msa2,
            code: responseCode
        }
    };
    return messageHeader;
};

// --------------------------------------------------------------------------------------------#
// MRG → Account
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-mrg-to-account.html
// --------------------------------------------------------------------------------------------#
public isolated function mrgToAccount(Mrg mrg) returns international401:Account {
    international401:Account account = {
        status: "unknown"
    };
    r4:Identifier id = cxToIdentifier(mrg.mrg3);
    if id != {} {
        account.identifier = [id];
    }
    return account;
};

// --------------------------------------------------------------------------------------------#
// IN1 → Coverage
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-in1-to-coverage.html
// --------------------------------------------------------------------------------------------#
public isolated function in1ToCoverage(In1 in1) returns international401:Coverage {
    international401:Coverage coverage = {
        status: "active",
        beneficiary: {},
        payor: [{}]
    };

    r4:Identifier planId = ceToCodeableConcept(in1.in12) != {} ? {value: in1.in12.ce1} : {};
    if planId != {} {
        coverage.identifier = [planId];
    }

    r4:Reference[] payors = [];
    foreach hl7v23:XON item in in1.in14 {
        if item.xon1 != "" {
            payors.push({display: item.xon1});
        }
    }
    coverage.payor = (payors.length() > 0) ? payors : [{}];

    if in1.in112 != "" || in1.in113 != "" {
        coverage.period = {
            'start: (in1.in112 != "") ? in1.in112 : (),
            end: (in1.in113 != "") ? in1.in113 : ()
        };
    }

    if in1.in115 != "" {
        coverage.'type = {coding: [{code: in1.in115}]};
    }

    if in1.in117 != "" {
        coverage.relationship = {coding: [{code: in1.in117}]};
    }

    return coverage;
};

// --------------------------------------------------------------------------------------------#
// IN3 → CareTeam
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-in3-to-careteam.html
// --------------------------------------------------------------------------------------------#
public isolated function in3ToCareTeam(In3 in3) returns international401:CareTeam {
    international401:CareTeam careTeam = {};
    if in3.in321 != "" {
        careTeam.participant = [{
            role: [{
                coding: [{
                    code: "116154003",
                    system: "http://snomed.info/sct",
                    display: "Case Manager"
                }],
                text: in3.in321
            }]
        }];
    }
    return careTeam;
};

// --------------------------------------------------------------------------------------------#
// PV1 → Coverage
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-pv1-to-coverage.html
// --------------------------------------------------------------------------------------------#
public isolated function pv1ToCoverage(Pv1 pv1) returns international401:Coverage {
    international401:Coverage coverage = {
        status: "active",
        beneficiary: {},
        payor: [{}]
    };
    if pv1.pv120.length() > 0 && pv1.pv120[0].fc1 != "" {
        coverage.'type = {coding: [{code: pv1.pv120[0].fc1}]};
    }
    return coverage;
};

// --------------------------------------------------------------------------------------------#
// AIG → Appointment (adds resource participant)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-aig-to-appointment.html
// --------------------------------------------------------------------------------------------#
public isolated function aigToAppointment(Aig aig) returns international401:Appointment {
    international401:AppointmentParticipant participant = {
        status: "needs-action"
    };

    r4:CodeableConcept resourceId = ceToCodeableConcept(aig.aig3);
    if resourceId != {} {
        participant.actor = {display: resourceId.coding.toString()};
    }

    r4:CodeableConcept resourceType = ceToCodeableConcept(aig.aig4);
    if resourceType != {} {
        participant.'type = [resourceType];
    }

    r4:Period period = {};
    if aig.aig8.ts1 != "" {
        period.'start = hl7DateToFhir(aig.aig8.ts1);
    }
    if period != {} {
        participant.period = period;
    }

    return {
        status: "proposed",
        participant: [participant]
    };
};

// --------------------------------------------------------------------------------------------#
// AIL → Appointment (adds location participant)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-ail-to-appointment.html
// --------------------------------------------------------------------------------------------#
public isolated function ailToAppointment(Ail ail) returns international401:Appointment {
    international401:AppointmentParticipant participant = {
        status: "needs-action"
    };

    if ail.ail3.pl1 != "" {
        participant.actor = {display: ail.ail3.pl1};
    }

    r4:Period period = {};
    if ail.ail6.ts1 != "" {
        period.'start = hl7DateToFhir(ail.ail6.ts1);
    }
    if period != {} {
        participant.period = period;
    }

    return {
        status: "proposed",
        participant: [participant]
    };
};

// --------------------------------------------------------------------------------------------#
// AIP → Appointment (adds personnel participant)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-aip-to-appointment.html
// --------------------------------------------------------------------------------------------#
public isolated function aipToAppointment(Aip aip) returns international401:Appointment {
    international401:AppointmentParticipant participant = {
        status: "needs-action"
    };

    r4:Reference actor = xcnToReferenceWithName(aip.aip3, "Practitioner");
    if actor != {} {
        participant.actor = actor;
    }

    r4:CodeableConcept resourceType = ceToCodeableConcept(aip.aip4);
    if resourceType != {} {
        participant.'type = [resourceType];
    }

    r4:Period period = {};
    if aip.aip6.ts1 != "" {
        period.'start = hl7DateToFhir(aip.aip6.ts1);
    }
    if period != {} {
        participant.period = period;
    }

    if aip.aip12.ce1 != "" {
        match aip.aip12.ce1 {
            "Accepted" => { participant.status = "accepted"; }
            "Declined" => { participant.status = "declined"; }
            "Tentative" => { participant.status = "tentative"; }
            _ => { participant.status = "needs-action"; }
        }
    }

    return {
        status: "proposed",
        participant: [participant]
    };
};

// --------------------------------------------------------------------------------------------#
// AIS → Appointment (adds service type)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-ais-to-appointment.html
// --------------------------------------------------------------------------------------------#
public isolated function aisToAppointment(Ais ais) returns international401:Appointment {
    international401:AppointmentParticipant defaultParticipant = {
        status: "needs-action"
    };
    international401:Appointment appointment = {
        status: "proposed",
        participant: [defaultParticipant]
    };

    r4:CodeableConcept serviceType = ceToCodeableConcept(ais.ais3);
    if serviceType != {} {
        appointment.serviceType = [serviceType];
    }

    if ais.ais10.ce1 != "" {
        match ais.ais10.ce1 {
            "Pending" => { appointment.status = "pending"; }
            "Complete" => { appointment.status = "fulfilled"; }
            "Cancelled" => { appointment.status = "cancelled"; }
            "Discontinued" => { appointment.status = "cancelled"; }
            _ => { appointment.status = "proposed"; }
        }
    }

    return appointment;
};
