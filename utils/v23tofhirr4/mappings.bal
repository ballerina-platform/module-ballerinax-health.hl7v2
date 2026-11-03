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
import ballerina/time;
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
    if !hasSegmentContent(segment) {
        // Default (empty) group members created by the parser carry no data → no resources
        return entries;
    }
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
                    Pid pid = check segment.ensureType(Pid);
                    entries.push(...populateBundleEntries(pidToPatient(pid)));
                    // PID-18 → Account (PID[Account])
                    international401:Account? account = pidToAccount(pid);
                    if account is international401:Account {
                        entries.push(...populateBundleEntries(account));
                    }
                    return entries;
                }
                return populateBundleEntries(constructedResource);
            }
        }
        "PV1" => {
            [boolean, anydata] customMappingResponse = check getCustomSegmentToResourceMapping(serviceconf, segment);
            if customMappingResponse[0] {
                Pv1 pv1Segment = check segment.ensureType(Pv1);
                Pv1ToPatient? pv1ToPatientResult = impl.pv1ToPatient;
                if pv1ToPatientResult is Pv1ToPatient {
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(pv1ToPatientResult(pv1Segment));
                    entries.push(...bundleEntriesResult);
                }
                Pv1ToEncounter? pv1ToEncounterResult = impl.pv1ToEncounter;
                if pv1ToEncounterResult is Pv1ToEncounter {
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(pv1ToEncounterResult(pv1Segment));
                    entries.push(...bundleEntriesResult);
                }
                Pv1ToCoverage? pv1ToCoverageResult = impl.pv1ToCoverage;
                if pv1ToCoverageResult is Pv1ToCoverage && pv1Segment.pv120.length() > 0 && pv1Segment.pv120[0].fc1 != "" {
                    r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(pv1ToCoverageResult(pv1Segment));
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
                    if entries.length() > 0 && entries[entries.length() - 1]?.'resource is international401:Condition {
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
                // ORC[Immunization] only applies to VXU messages, which are mapped by vxuV04ToBundle; in the
                // context-free segment dispatch an ORC is treated as an order (ORC[ServiceRequest]).
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
                Rxr rxr = check segment.ensureType(Rxr);
                RxrToImmunization? rxrToImmunization = impl.rxrToImmunization;
                if rxrToImmunization is RxrToImmunization && hasRxrImmunizationData(rxr) {
                    map<anydata> constructedResource = rxrToImmunization(rxr);
                    if hasMeaningfulRxrImmunizationResource(constructedResource) {
                        r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                        entries.push(...bundleEntriesResult);
                    }
                }
                RxrToMedicationRequest? rxrToMedicationRequest = impl.rxrToMedicationRequest;
                if rxrToMedicationRequest is RxrToMedicationRequest && hasRxrMedicationOrderContext(rxr) {
                    map<anydata> constructedResource = rxrToMedicationRequest(rxr);
                    if hasMeaningfulRxrMedicationRequestResource(constructedResource) {
                        r4:BundleEntry[] bundleEntriesResult = populateBundleEntries(constructedResource);
                        entries.push(...bundleEntriesResult);
                    }
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

isolated function hasRxrImmunizationData(Rxr rxr) returns boolean {
    return rxr.rxr1.ce1 != "" || rxr.rxr1.ce2 != "" || rxr.rxr2.ce1 != "" || rxr.rxr2.ce2 != "";
}

isolated function hasRxrMedicationOrderContext(Rxr rxr) returns boolean {
    // RXR-4 (administration method) is used here as a medication-order context signal
    // when dispatching standalone RXR mappings in the generic segment flow.
    return rxr.rxr4.ce1 != "" || rxr.rxr4.ce2 != "";
}

isolated function hasMeaningfulRxrImmunizationResource(map<anydata> mappedResource) returns boolean {
    if mappedResource["route"] is map<anydata> {
        map<anydata> route = <map<anydata>>mappedResource["route"];
        if route.keys().length() > 0 {
            return true;
        }
    }
    if mappedResource["site"] is map<anydata> {
        map<anydata> site = <map<anydata>>mappedResource["site"];
        if site.keys().length() > 0 {
            return true;
        }
    }
    return false;
}

isolated function hasMeaningfulRxrMedicationRequestResource(map<anydata> mappedResource) returns boolean {
    if mappedResource["dosageInstruction"] is map<anydata>[] {
        map<anydata>[] dosageInstruction = <map<anydata>[]>mappedResource["dosageInstruction"];
        return dosageInstruction.length() > 0;
    }
    if mappedResource["medicationCodeableConcept"] is map<anydata> {
        // a data-absent-reason placeholder (extension only) is not meaningful content
        map<anydata> medicationCodeableConcept = <map<anydata>>mappedResource["medicationCodeableConcept"];
        return medicationCodeableConcept.hasKey("coding") || medicationCodeableConcept.hasKey("text");
    }
    return false;
}

public isolated function mshToMessageHeader(Msh msh) returns international401:MessageHeader {
    international401:MessageHeader messageHeader = {
        'source: hdToMessageHeaderSource(msh.msh3),
        eventCoding: msgToCoding(msh.msh9),
        language: ceToCode(<hl7v23:CE>msh.msh19)
    };
    // MSH-4 → sender(Organization) via HD[Organization]
    messageHeader.sender = hdToLogicalReference(msh.msh4, "Organization");
    // MSH-5 → destination[1] (endpoint/name, target(Device)); MSH-6 → destination[1].receiver(Organization)
    if hasValue(msh.msh5) {
        international401:MessageHeaderDestination destination = hdToMessageHeaderDestination(msh.msh5);
        destination.target = hdToLogicalReference(msh.msh5, "Device");
        destination.receiver = hdToLogicalReference(msh.msh6, "Organization");
        messageHeader.destination = [destination];
    }
    // MSH-8 → meta.security, MSH-11 → meta.tag (PT[Meta])
    r4:Meta meta = ptToMeta(msh.msh11);
    if msh.msh8 != "" {
        meta.security = [{code: msh.msh8}];
    }
    if meta.tag is r4:Coding[] || meta.security is r4:Coding[] {
        messageHeader.meta = meta;
    }
    return messageHeader;
};

// --- Patient Administation
public isolated function al1ToAllerygyIntolerance(Al1 al1) returns international401:AllergyIntolerance {

    // AL1-5 → reaction.manifestation.text (manifestation is 1..*, so no reaction without AL1-5)
    international401:AllergyIntoleranceReaction[] allergyIntoleranceReactions = [];
    if al1.al15 != "" {
        allergyIntoleranceReactions.push({manifestation: [{text: al1.al15}]});
    }
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
        // AL1-6 → onsetDateTime
        onsetDateTime: al1.al16 != "" ? hl7DateToFhir(al1.al16) : (),
        // patient is linked to the message's Patient at message level
        patient: {extension: DATA_ABSENT_UNKNOWN}
    };

    allergyIntolerance.criticality = isToAllergyIntoleranceCriticality(al1.al14);
    allergyIntolerance.'type = isToAllergyIntoleranceType(al1.al12);
    international401:AllergyIntoleranceCategory? category = isToAllergyIntoleranceCategory(al1.al12);
    if category is international401:AllergyIntoleranceCategory {
        allergyIntolerance.category = [category];
    }

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
    } else {
        agent.push({
            who: {
                display: "Unknown"
            }
        });
    }
    // EVN-2 → recorded (mandatory); falls back to EVN-6, then to the epoch when neither is a valid date
    r4:instant recorded = hl7DateToFhir(evn.evn2.ts1) ?: hl7DateToFhir(evn.evn6.ts1) ?: "1970-01-01T00:00:00Z";
    international401:Provenance provenance = {
        activity: {
            coding: coding
        },
        recorded: recorded,
        agent: agent,
        target: [{
            display: "HL7v2 event source"
        }]
    };

    // EVN-4 → reason (EventReason concept map); "U" → data-absent-reason "unknown"
    if evn.evn4 == "U" {
        provenance.reason = [{extension: [{url: "http://hl7.org/fhir/StructureDefinition/data-absent-reason", valueCode: "unknown"}]}];
    } else if evn.evn4 != "" {
        map<string> actReason = {"01": "PATRQT", "02": "TREAT", "03": "HOPERAT"};
        string? mapped = actReason[evn.evn4];
        provenance.reason = [
            {
                coding: [
                    mapped is string
                        ? {system: "http://terminology.hl7.org/CodeSystem/v3-ActReason", code: mapped}
                        : {system: "http://terminology.hl7.org/CodeSystem/v2-0062", code: evn.evn4}
                ]
            }
        ];
    }

    provenance.occurredDateTime = (evn.evn6.ts1 != "") ? hl7DateToFhir(evn.evn6.ts1) : ();

    return provenance;
};

public isolated function nk1ToPatient(Nk1 nk1) returns international401:Patient {
    international401:PatientContact[] contact = nk1ToContact(nk1.nk12, nk1.nk14, nk1.nk15, nk1.nk16, nk1.nk17,
            nk1.nk18, nk1.nk19, nk1.nk113, nk1.nk115, nk1.nk130, nk1.nk131, nk1.nk132, nk1.nk13);
    return contact.length() > 0 ? {contact: contact} : {};
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
    international401:Observation observation = {
        status: "final",
        code: {
            coding: [{
                system: "http://loinc.org",
                code: "75320-2",
                display: "Advance directive"
            }]
        }
    };
    if pd1.pd17 != "" {
        // LivingWillCode concept map: v2-0315 codes are used as-is
        observation.valueCodeableConcept = {
            coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0315", code: pd1.pd17}]
        };
    }
    return observation;
};

public isolated function pidToPatient(Pid pid) returns international401:Patient {
    // PID-2, PID-3, PID-4 (CX[Identifier]), PID-19 (SSN), PID-20 (DLN[Identifier])
    r4:Identifier[] identifiers = [];
    foreach hl7v23:CX cx in [pid.pid2, ...pid.pid3, ...pid.pid4] {
        if cx.cx1 != "" {
            identifiers.push(cxToIdentifier(cx));
        }
    }
    r4:Identifier[] ssn = pidToSsnNumberIdentifier(pid.pid19) ?: [];
    identifiers.push(...ssn);
    if pid.pid20.dln1 != "" {
        identifiers.push({
            value: pid.pid20.dln1,
            'type: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0203", code: "DL"}]},
            period: pid.pid20.dln3 != "" ? {end: hl7DateToFhir(pid.pid20.dln3)} : ()
        });
    }

    r4:Extension[] extensions = [];
    // PID-6 → patient-mothersMaidenName (XPN[String]: family name)
    if pid.pid6.xpn1 != "" {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
            valueString: pid.pid6.xpn1
        });
    }
    // PID-17 → patient-religion
    if pid.pid17 != "" {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/patient-religion",
            valueCodeableConcept: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0006", code: pid.pid17}]}
        });
    }
    // PID-23 → patient-birthPlace
    if pid.pid23 != "" {
        extensions.push(...pidToBirthPlace(pid.pid23));
    }
    // PID-26 → patient-citizenship, PID-28 → patient-nationality
    foreach string citizenship in pid.pid26 {
        if citizenship != "" {
            extensions.push({
                url: "http://hl7.org/fhir/StructureDefinition/patient-citizenship",
                extension: [{url: "code", valueCodeableConcept: {coding: [{code: citizenship}]}}]
            });
        }
    }
    r4:CodeableConcept nationality = ceToCodeableConcept(pid.pid28);
    if nationality.coding is r4:Coding[] {
        extensions.push({
            url: "http://hl7.org/fhir/StructureDefinition/patient-nationality",
            extension: [{url: "code", valueCodeableConcept: nationality}]
        });
    }

    international401:Patient patient = {
        identifier: identifiers.length() > 0 ? identifiers : (),
        address: pidToAddress(pid.pid12, pid.pid11),
        telecom: pidToPhoneNumber(pid.pid13, pid.pid14),
        communication: pidToPrimaryLanguage(pid.pid15),
        maritalStatus: pidToMaritalStatus(pid.pid16),
        extension: extensions.length() > 0 ? extensions : ()
    };

    // PID-25 → multipleBirthInteger; PID-24 → multipleBirthBoolean only IF PID-25 NOT VALUED
    int? birthOrder = pid.pid25 != "" && pid.pid25 != "-1.0" ? pidToBirthOrder(pid.pid25) : ();
    if birthOrder is int {
        patient.multipleBirthInteger = birthOrder;
    } else if pid.pid24 == "Y" || pid.pid24 == "N" {
        patient.multipleBirthBoolean = pidToMultipleBirthIndicator(pid.pid24);
    }

    patient.name = pidToPatientName(pid.pid5, pid.pid9);

    // PID-7 → birthDate (date part); full value → patient-birthTime extension when it carries a time
    string dob = pid.pid7.ts1;
    if dob != "" {
        patient.birthDate = hl7DateToFhir(dob.length() > 8 ? dob.substring(0, 8) : dob);
        string? birthTime = dob.length() > 8 ? hl7DateToFhir(dob) : ();
        if birthTime is string {
            patient["_birthDate"] = <r4:Element>{
                extension: [
                    {
                        url: "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                        valueDateTime: birthTime
                    }
                ]
            };
        }
    }

    // PID-29 → deceasedDateTime; PID-30 → deceasedBoolean only IF PID-29 NOT VALUED
    if pid.pid29.ts1 != "" {
        patient.deceasedDateTime = hl7DateToFhir(pid.pid29.ts1);
    } else if pid.pid30 != "" {
        patient.deceasedBoolean = pidToPatientDeathIndicator(pid.pid30);
    }
    patient.gender = pidToAdministrativeSex(pid.pid8);
    return patient;
};

# Maps PID-18 (Patient Account Number) to an Account resource (PID[Account]).
#
# + pid - PID segment
# + return - Account resource, or nil when PID-18 is not valued
public isolated function pidToAccount(Pid pid) returns international401:Account? {
    if pid.pid18.cx1 == "" {
        return ();
    }
    return {
        status: "active",
        identifier: [cxToIdentifier(pid.pid18)]
    };
};

public isolated function pv1ToPatient(Pv1 pv1) returns international401:Patient {
    string extension = pv1.pv116;
    return {
        extension: (extension != "") ? pv1ToExtension(extension) : ()
    };
};

const string PARTICIPATION_TYPE_SYSTEM = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType";

// XCN → Encounter.participant with a fixed v3-ParticipationType code (PV1-7/8/9/17/52, PV2-13)
isolated function xcnToEncounterParticipants(hl7v23:XCN[] xcns, string typeCode, string typeText)
        returns international401:EncounterParticipant[] {
    international401:EncounterParticipant[] participants = [];
    foreach hl7v23:XCN xcn in xcns {
        if xcn.xcn1 == "" && xcn.xcn2 == "" && xcn.xcn3 == "" {
            continue;
        }
        participants.push({
            individual: xcnToReference(xcn),
            'type: [{coding: [{system: PARTICIPATION_TYPE_SYSTEM, code: typeCode}], text: typeText}]
        });
    }
    return participants;
}

// PL → Encounter.location with the status fixed by the spec row for the source field
isolated function plToEncounterLocation(hl7v23:PL pl, international401:EncounterLocationStatus status)
        returns international401:EncounterLocation? {
    // Location display: point of care (PL.1), falling back to room (PL.2) / bed (PL.3)
    string[] parts = from string p in [pl.pl1, pl.pl2, pl.pl3] where p != "" select p;
    if parts.length() == 0 {
        return ();
    }
    return {location: {display: parts[0]}, status: status};
}

// IS/ID code → CodeableConcept in the given HL7 table code system (IS[CodeableConcept])
isolated function isToCodeableConcept(string code, string system) returns r4:CodeableConcept? {
    return code != "" ? {coding: [{system: system, code: code}]} : ();
}

public isolated function pv1ToEncounter(Pv1 pv1) returns international401:Encounter {
    // PV1-2 → class (PatientClass[EncounterClass]) and status (PatientClass[EncounterStatus])
    map<string> actCode = {"E": "EMER", "I": "IMP", "O": "AMB", "P": "PRENC"};
    string? classCode = actCode[pv1.pv12];
    r4:Coding encounterClass = classCode is string
        ? {system: "http://terminology.hl7.org/CodeSystem/v3-ActCode", code: classCode}
        : pv1.pv12 != ""
            ? {system: "http://terminology.hl7.org/CodeSystem/v2-0004", code: pv1.pv12}
            : {extension: DATA_ABSENT_UNKNOWN};
    // PatientClass[EncounterStatus]: P → planned, U → unknown, other classes → in-progress
    international401:EncounterStatus status = pv1.pv12 == "P" ? "planned" : pv1.pv12 == "U" ? "unknown" : "in-progress";
    if pv1.pv145.ts1 != "" {
        status = "finished";
    }
    international401:Encounter encounter = {'class: encounterClass, status: status};

    // Locations: PV1-3 (active / planned), PV1-6 (completed), PV1-11 (active, temporary), PV1-42 (reserved)
    international401:EncounterLocation[] locations = [];
    international401:EncounterLocation? assigned = plToEncounterLocation(pv1.pv13, pv1.pv12 == "P" ? "planned" : "active");
    if assigned is international401:EncounterLocation {
        locations.push(assigned);
    }
    international401:EncounterLocation? prior = plToEncounterLocation(pv1.pv16, "completed");
    if prior is international401:EncounterLocation {
        locations.push(prior);
    }
    international401:EncounterLocation? temporary = plToEncounterLocation(pv1.pv111, "active");
    if temporary is international401:EncounterLocation {
        temporary.extension = [
            {
                url: "http://hl7.org/fhir/StructureDefinition/subject-locationClassification",
                valueCodeableConcept: {
                    coding: [{system: "http://hl7.org/fhir/ValueSet/subject-location", code: "temporary"}]
                }
            }
        ];
        locations.push(temporary);
    }
    international401:EncounterLocation? pending = plToEncounterLocation(pv1.pv142, "reserved");
    if pending is international401:EncounterLocation {
        locations.push(pending);
    }
    encounter.location = locations.length() > 0 ? locations : ();

    // Participants: PV1-7 ATND, PV1-8 REF, PV1-9 CON, PV1-17 ADM, PV1-52 PART (all repetitions)
    international401:EncounterParticipant[] participants = [
        ...xcnToEncounterParticipants(pv1.pv17, "ATND", "attender"),
        ...xcnToEncounterParticipants(pv1.pv18, "REF", "referrer"),
        ...xcnToEncounterParticipants(pv1.pv19, "CON", "consultant"),
        ...xcnToEncounterParticipants(pv1.pv117, "ADM", "admitter"),
        ...xcnToEncounterParticipants(pv1.pv152, "PART", "Participation")
    ];
    encounter.participant = participants.length() > 0 ? participants : ();

    // PV1-4 → type (AdmissionType, v2-0007)
    r4:CodeableConcept? admissionType = isToCodeableConcept(pv1.pv14, "http://terminology.hl7.org/CodeSystem/v2-0007");
    if admissionType is r4:CodeableConcept {
        encounter.'type = [admissionType];
    }

    // PV1-10 → serviceType (HospitalService)
    if pv1.pv110 != "" {
        map<string> serviceType = {"MED": "382", "URO": "222"};
        string? mapped = serviceType[pv1.pv110];
        encounter.serviceType = mapped is string
            ? {coding: [{system: "http://terminology.hl7.org/CodeSystem/service-type", code: mapped}]}
            : {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0069", code: pv1.pv110}]};
    }

    international401:EncounterHospitalization hospitalization = {};
    // PV1-5 → preAdmissionIdentifier
    if pv1.pv15.cx1 != "" {
        hospitalization.preAdmissionIdentifier = cxToIdentifier(pv1.pv15);
    }
    // PV1-13 → reAdmission (ReadmissionIndicator, v2-0092)
    hospitalization.reAdmission = isToCodeableConcept(pv1.pv113, "http://terminology.hl7.org/CodeSystem/v2-0092");
    // PV1-14 → admitSource (v2-0023)
    hospitalization.admitSource = isToCodeableConcept(pv1.pv114, "http://terminology.hl7.org/CodeSystem/v2-0023");
    // PV1-15 → specialArrangement (AmbulatoryStatus)
    r4:CodeableConcept[] arrangements = [];
    foreach string ambulatory in pv1.pv115 {
        if ambulatory == "A2" {
            arrangements.push({coding: [{system: "http://terminology.hl7.org/CodeSystem/encounter-special-arrangements", code: "wheel"}]});
        } else if ambulatory != "" && ambulatory != "A0" && ambulatory != "A1" {
            arrangements.push({coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0009", code: ambulatory}]});
        }
    }
    if arrangements.length() > 0 {
        hospitalization.specialArrangement = arrangements;
    }
    // PV1-16 → specialCourtesy (VIPIndicator, v2-0099)
    r4:CodeableConcept? vip = isToCodeableConcept(pv1.pv116, "http://terminology.hl7.org/CodeSystem/v2-0099");
    if vip is r4:CodeableConcept {
        hospitalization.specialCourtesy = [vip];
    }
    // PV1-36 → dischargeDisposition (v2-0112)
    hospitalization.dischargeDisposition = isToCodeableConcept(pv1.pv136, "http://terminology.hl7.org/CodeSystem/v2-0112");
    // PV1-37 → destination(Location) via DLD[Location-Discharge] (DLD.1 → Location.type)
    if pv1.pv137.cm_dld1 != "" {
        hospitalization.destination = {'type: "Location", display: pv1.pv137.cm_dld1};
    }
    // PV1-38 → dietPreference (DietType, v2-0114)
    r4:CodeableConcept? diet = isToCodeableConcept(pv1.pv138, "http://terminology.hl7.org/CodeSystem/v2-0114");
    if diet is r4:CodeableConcept {
        hospitalization.dietPreference = [diet];
    }
    if hospitalization != {} {
        encounter.hospitalization = hospitalization;
    }

    // PV1-19 → identifier[1] (type VN), PV1-50 → identifier[2]
    r4:Identifier[] identifiers = [];
    if pv1.pv119.cx1 != "" {
        r4:Identifier visitNumber = cxToIdentifier(pv1.pv119);
        visitNumber.'type = {
            coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0203", code: "VN"}],
            text: "visit number"
        };
        identifiers.push(visitNumber);
    }
    if pv1.pv150.cx1 != "" {
        identifiers.push(cxToIdentifier(pv1.pv150));
    }
    encounter.identifier = identifiers.length() > 0 ? identifiers : ();

    // PV1-44/45 → period
    if pv1.pv144.ts1 != "" || pv1.pv145.ts1 != "" {
        encounter.period = {'start: tsToDateTime(pv1.pv144), end: tsToDateTime(pv1.pv145)};
    }

    return encounter;
};

public isolated function pv2ToEncounter(Pv2 pv2) returns international401:Encounter {
    international401:Encounter encounter = {
        // class is mandatory in R4 but PV2 carries no patient class; it is supplied by PV1 when merged
        'class: {extension: DATA_ABSENT_UNKNOWN},
        // PV2 carries no visit status; PV1 supplies it when merged
        status: "unknown"
    };

    // PV2-1 → location (status "planned")
    international401:EncounterLocation? priorPending = plToEncounterLocation(pv2.pv21, "planned");
    if priorPending is international401:EncounterLocation {
        encounter.location = [priorPending];
    }
    // PV2-3 → reasonCode
    r4:CodeableConcept reason = ceToCodeableConcept(pv2.pv23);
    if reason.coding is r4:Coding[] {
        encounter.reasonCode = [reason];
    }
    // PV2-8 / PV2-9 → expected admit / discharge (R5 cross-version extensions)
    r4:Extension[] extensions = [];
    string? expectedAdmit = hl7DateToFhir(pv2.pv28.ts1);
    if expectedAdmit is string {
        extensions.push({
            url: "http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedStartDate",
            valueDateTime: expectedAdmit
        });
    }
    string? expectedDischarge = hl7DateToFhir(pv2.pv29.ts1);
    if expectedDischarge is string {
        extensions.push({
            url: "http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedEndDate",
            valueDateTime: expectedDischarge
        });
    }
    encounter.extension = extensions.length() > 0 ? extensions : ();
    // PV2-11 → length (NM[Quantity-LengthOfStay]: days, UCUM "d"; only when positive)
    if pv2.pv211 != "" {
        decimal|error days = decimal:fromString(pv2.pv211);
        if days is decimal && days >= 0d {
            encounter.length = {value: days, unit: "days", system: "http://unitsofmeasure.org", code: "d"};
        } else {
            log:printWarn("Invalid PV2-11 (Actual Length of Inpatient Stay): " + pv2.pv211);
        }
    }
    // PV2-12 → text.div (XHTML)
    if pv2.pv212 != "" {
        encounter.text = {
            status: "generated",
            div: string `<div xmlns="http://www.w3.org/1999/xhtml">${escapeXml(pv2.pv212)}</div>`
        };
    }
    // PV2-13 → participant (REF)
    international401:EncounterParticipant[] referral = xcnToEncounterParticipants([pv2.pv213], "REF", "referrer");
    if referral.length() > 0 {
        encounter.participant = referral;
    }
    // PV2-22 → meta.security (Yes/NoIndicator)
    if pv2.pv222 != "" {
        encounter.meta = {security: [{system: "http://terminology.hl7.org/CodeSystem/v2-0136", code: pv2.pv222}]};
    }
    // PV2-25 → priority (EncounterPriority: 1 EM, 2 UR, 3 EL)
    if pv2.pv225 != "" {
        map<string> priority = {"1": "EM", "2": "UR", "3": "EL"};
        string? mapped = priority[pv2.pv225];
        encounter.priority = mapped is string
            ? {coding: [{system: "http://terminology.hl7.org/CodeSystem/v3-ActPriority", code: mapped}]}
            : {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0217", code: pv2.pv225}]};
    }
    return encounter;
};

isolated function escapeXml(string value) returns string {
    return re `>`.replaceAll(re `<`.replaceAll(re `&`.replaceAll(value, "&amp;"), "&lt;"), "&gt;");
}

// --- Financial Management ---
public isolated function dg1ToCondition(Dg1 dg1) returns international401:Condition {
    international401:Condition condition = {
        // subject is linked to the message's Patient at message level
        subject: {extension: DATA_ABSENT_UNKNOWN}
    };
    // DG1-3 → code, DG1-4 → code.text (also when DG1-3 is not valued)
    r4:CodeableConcept code = ceToCodeableConcept(dg1.dg13);
    if dg1.dg14 != "" {
        code.text = dg1.dg14;
    }
    if code.coding is r4:Coding[] || code.text is string {
        condition.code = code;
    }
    // DG1-5 → onsetDateTime
    if dg1.dg15.ts1 != "" {
        condition.onsetDateTime = hl7DateToFhir(dg1.dg15.ts1);
    }
    // DG1-16 → asserter(Practitioner) (first valued repetition)
    foreach Xcn item in dg1.dg116 {
        if item.xcn1 != "" || item.xcn2 != "" {
            condition.asserter = xcnToReference(item);
            break;
        }
    }
    // DG1-19 → recordedDate and condition-assertedDate extension
    string? attested = hl7DateToFhir(dg1.dg119.ts1);
    if attested is string {
        condition.recordedDate = attested;
        condition.extension = [{url: "http://hl7.org/fhir/StructureDefinition/condition-assertedDate", valueDateTime: attested}];
    }
    // only a Condition that carries clinical content gets an id (and is emitted by the segment dispatcher)
    if condition.code !is () || condition.onsetDateTime !is () || condition.asserter !is () || condition.recordedDate !is () {
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
            },
            // DG1-6 → use (DiagnosisType), DG1-15 → rank
            use: diagnosisTypeToCodeableConcept(dg16),
            rank: diagnosisRank(dg1.dg115)
        };
        encounter.diagnosis = [encounterDiagnosis];
        encounter.id = generateFhirResourceId();
    }
    return encounter;
}

public isolated function dg1ToEpisodeOfCare(Dg1 dg1, string? conditionId, string? patientId) returns international401:EpisodeOfCare {
    international401:EpisodeOfCare episodeOfCare = {
        // patient is linked to the message's Patient at message level
        patient: {extension: DATA_ABSENT_UNKNOWN},
        status: "active"
    };
    if conditionId is string {
        international401:EpisodeOfCareDiagnosis episodeOfCareDiagnosis = {
            condition: {
                reference: string `Condition/${conditionId}`
            }
        };
        // DG1-6 → role (DiagnosisType), DG1-15 → rank
        episodeOfCareDiagnosis.role = diagnosisTypeToCodeableConcept(dg1.dg16);
        episodeOfCareDiagnosis.rank = diagnosisRank(dg1.dg115);
        episodeOfCare.diagnosis = [episodeOfCareDiagnosis];
    }
    if patientId is string {
        episodeOfCare.patient = {reference: string `Patient/${patientId}`};
        episodeOfCare.id = generateFhirResourceId();
    }

    return episodeOfCare;
}

public isolated function obxToObservation(Obx obx) returns international401:Observation {
    // IG dependsOn: IF OBX-5.count > 1 AND OBX-2 != "NA" → component observation
    //               IF OBX-5.count <= 1 OR OBX-2 == "NA"  → single-value observation
    string[] values = from hl7v23:varies v in obx.obx5
        let string str = obxVariesToString(v)
        where str != ""
        select str;
    boolean isComponent = values.length() > 1 && obx.obx2 != "NA";

    r4:CodeableConcept code = ceToCodeableConcept(obx.obx3);
    international401:Observation observation = {
        // code is mandatory; an OBX without OBX-3 carries a data-absent-reason instead of an empty object
        code: code.coding is r4:Coding[] ? code : {extension: DATA_ABSENT_UNKNOWN},
        status: idToObservationStatus(obx.obx11)
    };
    if obx.obx11 == "N" {
        observation.dataAbsentReason = {
            coding: [{system: "http://terminology.hl7.org/CodeSystem/data-absent-reason", code: "not-asked"}]
        };
    }
    observation.effectiveDateTime = tsToDateTime(obx.obx14);
    if obx.obx17.length() > 0 {
        r4:CodeableConcept method = ceToCodeableConcept(obx.obx17[0]);
        if method.coding is r4:Coding[] {
            observation.method = method;
        }
    }
    if obx.obx7 != "" {
        observation.referenceRange = [{text: obx.obx7}];
    }
    r4:CodeableConcept[] interpretation = from string flag in obx.obx8
        where flag != ""
        select {coding: [{system: "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation", code: flag}]};
    if interpretation.length() > 0 {
        observation.interpretation = interpretation;
    }
    if obx.obx16.xcn1 != "" || obx.obx16.xcn2 != "" {
        observation.performer = [xcnToReferenceWithName(obx.obx16, "Practitioner")];
    }

    if isComponent {
        // Multi-value OBX: each OBX-5 repetition becomes a component
        international401:ObservationComponent[] components = [];
        foreach string val in values {
            ObxValue v = obxValueToFhir(obx.obx2, val, obx.obx6);
            components.push({
                code: observation.code,
                valueString: v.valueString,
                valueQuantity: v.valueQuantity,
                valueCodeableConcept: v.valueCodeableConcept,
                valueDateTime: v.valueDateTime,
                valueTime: v.valueTime,
                valueRatio: v.valueRatio,
                valueRange: v.valueRange,
                valuePeriod: v.valuePeriod
            });
        }
        observation.component = components;
    } else if values.length() > 0 {
        ObxValue v = obxValueToFhir(obx.obx2, values[0], obx.obx6);
        observation.valueString = v.valueString;
        observation.valueQuantity = v.valueQuantity;
        observation.valueCodeableConcept = v.valueCodeableConcept;
        observation.valueDateTime = v.valueDateTime;
        observation.valueTime = v.valueTime;
        observation.valueRatio = v.valueRatio;
        observation.valueRange = v.valueRange;
        observation.valuePeriod = v.valuePeriod;
    }

    return observation;
};

// Holder for the Observation.value[x] choice produced from a single OBX-5 value.
type ObxValue record {|
    string valueString?;
    r4:Quantity valueQuantity?;
    r4:CodeableConcept valueCodeableConcept?;
    r4:dateTime valueDateTime?;
    r4:time valueTime?;
    r4:Ratio valueRatio?;
    r4:Range valueRange?;
    r4:Period valuePeriod?;
|};

isolated function obxVariesToString(hl7v23:varies v) returns string {
    anydata value = v?.value;
    if value is () {
        return "";
    }
    return value is string ? value : value.toString();
}

// Maps one OBX-5 value to Observation.value[x] according to OBX-2 (OBX[Observation] spec rows for OBX-5/OBX-6).
isolated function obxValueToFhir(string valueType, string raw, Ce units) returns ObxValue {
    string[] c = re `\^`.split(raw);
    match valueType {
        "NM" => {
            decimal|error num = decimal:fromString(raw.trim());
            if num is decimal {
                return {valueQuantity: obxQuantity(num, units)};
            }
            return {valueString: raw};
        }
        "ST"|"TX"|"FT" => {
            return {valueString: raw};
        }
        "CE"|"CWE"|"CNE"|"CF" => {
            return {valueCodeableConcept: ceToCodeableConcept(obxComponentsToCe(c))};
        }
        "IS"|"ID" => {
            return {valueCodeableConcept: {coding: [{code: raw}]}};
        }
        "DT"|"TS"|"DTM" => {
            return {valueDateTime: hl7DateToFhir(c[0])};
        }
        "TM" => {
            string t = c[0];
            if t.length() >= 4 {
                string sec = t.length() >= 6 ? t.substring(4, 6) : "00";
                return {valueTime: t.substring(0, 2) + ":" + t.substring(2, 4) + ":" + sec};
            }
            return {valueString: raw};
        }
        "DR" => {
            r4:Period period = {'start: c[0] != "" ? hl7DateToFhir(c[0]) : ()};
            if c.length() > 1 && c[1] != "" {
                period.end = hl7DateToFhir(c[1]);
            }
            return {valuePeriod: period};
        }
        "SN" => {
            return obxStructuredNumeric(c, raw, units);
        }
    }
    return {valueString: raw};
}

isolated function obxComponentsToCe(string[] c) returns hl7v23:CE {
    string[] p = [...c, "", "", "", "", "", ""];
    return {ce1: p[0], ce2: p[1], ce3: p[2], ce4: p[3], ce5: p[4], ce6: p[5]};
}

isolated function obxQuantity(decimal value, Ce units) returns r4:Quantity {
    // CWE[Quantity]: CE.1 → code, CE.2 (or CE.1) → unit, CE.3 → system
    return {
        value: value,
        code: units.ce1 != "" ? units.ce1 : (),
        unit: units.ce2 != "" ? units.ce2 : (units.ce1 != "" ? units.ce1 : ()),
        system: codingSystemToUri(units.ce3)
    };
}

// SN (Structured Numeric): <comparator>^<num1>^<separator/suffix>^<num2>
isolated function obxStructuredNumeric(string[] c, string raw, Ce units) returns ObxValue {
    string[] p = [...c, "", "", "", ""];
    string comparator = p[0];
    string sep = p[2];
    string text = string:'join(" ", ...(from string x in p.slice(0, 4) where x != "" select x));
    if comparator == "<>" {
        return {valueString: text};
    }
    decimal|error n1 = decimal:fromString(p[1]);
    decimal|error n2 = decimal:fromString(p[3]);
    if (sep == ":" || sep == "/") && n1 is decimal && n2 is decimal {
        return {valueRatio: {numerator: obxQuantity(n1, units), denominator: obxQuantity(n2, units)}};
    }
    if sep == "-" && n1 is decimal && n2 is decimal {
        return {valueRange: {low: obxQuantity(n1, units), high: obxQuantity(n2, units)}};
    }
    if sep == "" && n1 is decimal && p[3] == "" {
        r4:Quantity q = obxQuantity(n1, units);
        if comparator is r4:QuantityComparatorCode {
            q.comparator = comparator;
        }
        return {valueQuantity: q};
    }
    return {valueString: text != "" ? text : raw};
}

public isolated function obrToDiagnosticReport(Obr obr) returns international401:DiagnosticReport {
    r4:CodeableConcept code = ceToCodeableConcept(obr.obr4);
    international401:DiagnosticReport diagnosticReport = {
        code: code.coding is r4:Coding[] ? code : {extension: DATA_ABSENT_UNKNOWN},
        status: idToDiagnosticReportStatus(obr.obr25)
    };
    if obr.obr24 != "" {
        diagnosticReport.category = [{coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0074", code: obr.obr24}]}];
    }
    // effective[x] is a choice: OBR-8 valued → effectivePeriod(OBR-7..OBR-8), otherwise effectiveDateTime(OBR-7)
    if obr.obr8.ts1 != "" {
        diagnosticReport.effectivePeriod = {'start: tsToDateTime(obr.obr7), end: tsToDateTime(obr.obr8)};
    } else {
        diagnosticReport.effectiveDateTime = tsToDateTime(obr.obr7);
    }
    diagnosticReport.issued = tsToInstant(obr.obr22);
    r4:Identifier[] identifiers = obrOrderIdentifiers(obr);
    if identifiers.length() > 0 {
        diagnosticReport.identifier = identifiers;
    }
    return diagnosticReport;
};

isolated function obrOrderIdentifiers(Obr obr) returns r4:Identifier[] {
    r4:Identifier[] identifiers = [];
    r4:Identifier? placer = eiToTypedIdentifier(obr.obr2, "PLAC");
    if placer is r4:Identifier {
        identifiers.push(placer);
    }
    r4:Identifier? filler = eiToTypedIdentifier(obr.obr3, "FILL");
    if filler is r4:Identifier {
        identifiers.push(filler);
    }
    return identifiers;
}

public isolated function obrToServiceRequest(Obr obr) returns international401:ServiceRequest {
    international401:ServiceRequest serviceRequest = {
        // OBR → ServiceRequest.intent is "order", or "reflex-order" when OBR-11 (Specimen Action Code) = G
        intent: obr.obr11 == "G" ? "reflex-order" : "order",
        priority: idToServiceRequestPriority(obr.obr5),
        status: "unknown",
        subject: {extension: DATA_ABSENT_UNKNOWN}
    };
    r4:Identifier[] identifiers = obrOrderIdentifiers(obr);
    if identifiers.length() > 0 {
        serviceRequest.identifier = identifiers;
    }
    if obr.obr16.length() > 0 && (obr.obr16[0].xcn1 != "" || obr.obr16[0].xcn2 != "") {
        serviceRequest.requester = xcnToReference(obr.obr16[0]);
    }
    r4:CodeableConcept code = ceToCodeableConcept(obr.obr4);
    if code.coding is r4:Coding[] {
        serviceRequest.code = code;
    }
    serviceRequest.occurrenceDateTime = tsToDateTime(obr.obr6);
    r4:CodeableConcept[] reasons = from hl7v23:CE ce in obr.obr31
        let r4:CodeableConcept cc = ceToCodeableConcept(ce)
        where cc.coding is r4:Coding[]
        select cc;
    if reasons.length() > 0 {
        serviceRequest.reasonCode = reasons;
    }
    return serviceRequest;
};

public isolated function orcToDiagnosticReport(Orc orc) returns international401:DiagnosticReport {
    international401:DiagnosticReport diagnosticReport = {
        // code / status come from OBR (OBR[DiagnosticReport]) when merged at message level
        code: {extension: DATA_ABSENT_UNKNOWN},
        status: "partial"
    };
    // ORC-2 → identifier[1] (PLAC) + basedOn(ServiceRequest), ORC-3 → identifier[2] (FILL)
    r4:Identifier[] identifiers = orcOrderIdentifiers(orc);
    diagnosticReport.identifier = identifiers.length() > 0 ? identifiers : ();
    if orc.orc2.ei1 != "" {
        diagnosticReport.basedOn = [
            {
                'type: "ServiceRequest",
                identifier: eiToTypedIdentifier(orc.orc2, "PLAC")
            }
        ];
    }
    // ORC-16 → event-statusReason extension
    r4:CodeableConcept statusReason = ceToCodeableConcept(orc.orc16);
    if statusReason.coding is r4:Coding[] {
        diagnosticReport.extension = [
            {url: "http://hl7.org/fhir/StructureDefinition/event-statusReason", valueCodeableConcept: statusReason}
        ];
    }
    return diagnosticReport;
};

// ORC-2 → identifier (PLAC), ORC-3 → identifier (FILL)
isolated function orcOrderIdentifiers(Orc orc) returns r4:Identifier[] {
    r4:Identifier[] identifiers = [];
    r4:Identifier? placer = eiToTypedIdentifier(orc.orc2, "PLAC");
    if placer is r4:Identifier {
        identifiers.push(placer);
    }
    r4:Identifier? filler = eiToTypedIdentifier(orc.orc3, "FILL");
    if filler is r4:Identifier {
        identifiers.push(filler);
    }
    return identifiers;
}

public isolated function orcToImmunization(Orc orc) returns international401:Immunization {
    international401:Immunization immunization = {
        // patient / vaccineCode / status come from PID and RXA when merged at message level (VXU)
        patient: {extension: DATA_ABSENT_UNKNOWN},
        vaccineCode: {extension: DATA_ABSENT_UNKNOWN},
        status: "completed"
    };
    // ORC-2 → identifier[1] (PLAC), ORC-3 → identifier[2] (FILL)
    r4:Identifier[] identifiers = orcOrderIdentifiers(orc);
    immunization.identifier = identifiers.length() > 0 ? identifiers : ();
    // ORC-9 → recorded
    immunization.recorded = tsToDateTime(orc.orc9);
    // ORC-12 → performer.actor (Practitioner), performer.function = OP (v2-0443)
    international401:ImmunizationPerformer[] performers = [];
    foreach hl7v23:XCN xcn in orc.orc12 {
        if xcn.xcn1 != "" || xcn.xcn2 != "" {
            performers.push({
                actor: xcnToReference(xcn),
                'function: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0443", code: "OP", display: "Ordering Provider"}]}
            });
        }
    }
    immunization.performer = performers.length() > 0 ? performers : ();
    return immunization;
};

// --------------------------------------------------------------------------------------------#
// NK1 → RelatedPerson
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-nk1-to-relatedperson.html
// --------------------------------------------------------------------------------------------#
public isolated function nk1ToRelatedPerson(Nk1 nk1) returns international401:RelatedPerson {
    international401:RelatedPerson relatedPerson = {
        // Linked to the message's Patient at message level; unknown when the segment is mapped standalone
        patient: {extension: DATA_ABSENT_UNKNOWN}
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
    r4:CodeableConcept? rel = nk1RelationshipToCodeableConcept(nk1.nk13);
    if rel is r4:CodeableConcept {
        relationship.push(rel);
    }
    r4:CodeableConcept? contactRole = contactRoleToCodeableConcept(nk1.nk17);
    if contactRole is r4:CodeableConcept {
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
    // NK1-6 (Business Phone Number) → telecom.use = "work"
    foreach hl7v23:XTN item in nk1.nk16 {
        r4:ContactPoint? cp = xtnToContactPoint(item);
        if cp is r4:ContactPoint {
            cp.use = "work";
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

    if nk1.nk18 != "" || nk1.nk19 != "" {
        relatedPerson.period = {
            'start: (nk1.nk18 != "") ? hl7DateToFhir(nk1.nk18) : (),
            end: (nk1.nk19 != "") ? hl7DateToFhir(nk1.nk19) : ()
        };
    }

    relatedPerson.gender = pidToAdministrativeSex(nk1.nk115);
    string nk1Dob = nk1.nk116.ts1;
    relatedPerson.birthDate = (nk1Dob != "") ? hl7DateToFhir(nk1Dob.length() > 8 ? nk1Dob.substring(0, 8) : nk1Dob) : ();

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
        // NTE[Observation] annotates the parent OBX Observation; standalone it has no observation code
        code: {extension: DATA_ABSENT_UNKNOWN},
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
        // ORC-5 → status (OrderStatus), otherwise ORC-1 → status (OrderControlCode[ServiceRequest.status])
        status: orc.orc5 != "" ? orderStatusToServiceRequestStatus(orc.orc5) : orderControlToServiceRequestStatus(orc.orc1),
        // subject is linked to the message's Patient at message level
        subject: {extension: DATA_ABSENT_UNKNOWN}
    };

    r4:Identifier[] identifiers = orcOrderIdentifiers(orc);
    serviceRequest.identifier = identifiers.length() > 0 ? identifiers : ();

    // ORC-4 → requisition (PGN)
    if orc.orc4.ei1 != "" {
        serviceRequest.requisition = {
            value: orc.orc4.ei1,
            'type: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0203", code: "PGN"}]}
        };
    }

    // ORC-9 → authoredOn (IF ORC-1 IS "NW")
    if orc.orc1 == "NW" {
        serviceRequest.authoredOn = tsToDateTime(orc.orc9);
    }

    // ORC-12 → requester (Practitioner)
    foreach hl7v23:XCN xcn in orc.orc12 {
        if xcn.xcn1 != "" || xcn.xcn2 != "" {
            serviceRequest.requester = xcnToReference(xcn);
            break;
        }
    }

    // ORC-16 → request-statusReason extension (IF ORC-5 NOT VALUED)
    r4:CodeableConcept statusReason = ceToCodeableConcept(orc.orc16);
    if orc.orc5 == "" && statusReason.coding is r4:Coding[] {
        serviceRequest.extension = [
            {url: "http://hl7.org/fhir/StructureDefinition/request-statusReason", valueCodeableConcept: statusReason}
        ];
    }

    return serviceRequest;
};

// OrderStatus concept map (HL70038 → request-status)
isolated function orderStatusToServiceRequestStatus(string code) returns international401:ServiceRequestStatus {
    match code {
        "CA"|"DC"|"RP" => {
            return "revoked";
        }
        "CM" => {
            return "completed";
        }
        "ER" => {
            return "entered-in-error";
        }
        "HD" => {
            return "on-hold";
        }
        "IP"|"SC" => {
            return "active";
        }
    }
    return "unknown";
}

// OrderControlCode[ServiceRequest.status] concept map (HL70119 → request-status)
isolated function orderControlToServiceRequestStatus(string code) returns international401:ServiceRequestStatus {
    match code {
        "AF"|"CA"|"HD"|"NW"|"OK"|"PR"|"PY"|"RL"|"RO"|"RQ" => {
            return "active";
        }
        "CR"|"DC"|"DF"|"DR"|"OC"|"OD" => {
            return "revoked";
        }
        "FU" => {
            return "completed";
        }
        "HR"|"OH" => {
            return "on-hold";
        }
    }
    return "unknown";
}

// --------------------------------------------------------------------------------------------#
// PR1 → Procedure
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-pr1-to-procedure.html
// --------------------------------------------------------------------------------------------#
public isolated function pr1ToProcedure(Pr1 pr1) returns international401:Procedure {
    international401:Procedure procedure = {
        // subject is linked to the message's Patient at message level
        subject: {extension: DATA_ABSENT_UNKNOWN},
        status: "unknown"
    };

    r4:CodeableConcept code = ceToCodeableConcept(pr1.pr13);
    if code != {} {
        if pr1.pr14 != "" {
            code.text = pr1.pr14;
        }
        procedure.code = code;
    }

    // PR1-5 → performedDateTime; IF PR1-7 VALUED and PR1-5 carries a time (minute precision) →
    // performedPeriod.start = PR1-5, performedPeriod.end = PR1-5 + PR1-7 minutes
    if pr1.pr15.ts1 != "" {
        r4:Period? period = pr1.pr17 != "" && pr1.pr15.ts1.length() >= 12
            ? startAndDurationToPeriod(pr1.pr15, pr1.pr17, {ce1: "min"}) : ();
        if period is r4:Period && period.end is string {
            procedure.performedPeriod = period;
        } else {
            procedure.performedDateTime = hl7DateToFhir(pr1.pr15.ts1);
        }
    }

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
    r4:CodeableConcept vaccineCode = ceToCodeableConcept(rxa.rxa5);
    international401:Immunization immunization = {
        // patient is linked to the message's Patient at message level
        patient: {extension: DATA_ABSENT_UNKNOWN},
        status: "completed",
        vaccineCode: vaccineCode.coding is r4:Coding[] ? vaccineCode : {extension: DATA_ABSENT_UNKNOWN}
    };

    immunization.occurrenceDateTime = (rxa.rxa3.ts1 != "") ? hl7DateToFhir(rxa.rxa3.ts1) : ();

    // RXA-6 → doseQuantity.value, RXA-7 → doseQuantity (CWE[Quantity])
    if rxa.rxa6 != "" {
        decimal|error doseVal = decimal:fromString(rxa.rxa6);
        if doseVal is decimal {
            immunization.doseQuantity = obxQuantity(doseVal, rxa.rxa7);
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

    // RXA-16 → expirationDate (date only)
    if rxa.rxa16.length() > 0 && rxa.rxa16[0].ts1 != "" {
        string expiry = rxa.rxa16[0].ts1;
        immunization.expirationDate = hl7DateToFhir(expiry.length() > 8 ? expiry.substring(0, 8) : expiry);
    }

    // RXA-17 → manufacturer(Organization) via CWE[Organization]: CWE.1 → identifier.value,
    // CWE.3 → identifier.system, CWE.2 (or CWE.1) → display
    if rxa.rxa17.length() > 0 && (rxa.rxa17[0].ce1 != "" || rxa.rxa17[0].ce2 != "") {
        hl7v23:CE mfr = rxa.rxa17[0];
        immunization.manufacturer = {
            'type: "Organization",
            identifier: mfr.ce1 != "" ? {value: mfr.ce1, system: codingSystemToUri(mfr.ce3)} : (),
            display: mfr.ce2 != "" ? mfr.ce2 : mfr.ce1
        };
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

    // RXA-21 = "D" → entered-in-error; otherwise RXA-20 (CompletionStatus), defaulting to "completed"
    if rxa.rxa21 == "D" {
        immunization.status = "entered-in-error";
    } else {
        match rxa.rxa20 {
            "RE"|"NA" => {
                immunization.status = "not-done";
            }
            _ => {
                immunization.status = "completed";
            }
        }
    }

    // RXA-22 → recorded (IF RXA-21 EQUALS "A")
    if rxa.rxa21 == "A" {
        immunization.recorded = tsToDateTime(rxa.rxa22);
    }

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
        // subject is linked to the message's Patient at message level
        subject: {extension: DATA_ABSENT_UNKNOWN},
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
            r4:Range doseRange = {};
            if lowVal is decimal {
                doseRange.low = {value: lowVal, code: unitCode, unit: unitStr ?: unitCode};
            }
            if highVal is decimal {
                doseRange.high = {value: highVal, code: unitCode, unit: unitStr ?: unitCode};
            }
            dosage.doseAndRate = [{
                // RXO-2 valued → doseAndRate.type = "ordered"
                'type: {coding: [{system: "http://terminology.hl7.org/CodeSystem/dose-rate-type", code: "ordered"}]},
                doseRange: doseRange
            }];
        }
    }
    if dosage != {} {
        medicationRequest.dosageInstruction = [dosage];
    }

    if rxo.rxo9 != "" {
        // RXO-9 → substitution.allowed (AllowSubstitution, v2-0161)
        medicationRequest.substitution = {
            allowedCodeableConcept: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0161", code: rxo.rxo9}]}
        };
    }

    if rxo.rxo11 != "" || rxo.rxo13 != "" {
        international401:MedicationRequestDispenseRequest dispenseRequest = {};
        if rxo.rxo11 != "" {
            decimal|error qty = decimal:fromString(rxo.rxo11);
            if qty is decimal {
                // RXO-12 (Requested Dispense Units) → quantity.code / unit
                dispenseRequest.quantity = {
                    value: qty,
                    code: rxo.rxo12.ce1 != "" ? rxo.rxo12.ce1 : (),
                    unit: rxo.rxo12.ce2 != "" ? rxo.rxo12.ce2 : (rxo.rxo12.ce1 != "" ? rxo.rxo12.ce1 : ()),
                    system: codingSystemToUri(rxo.rxo12.ce3)
                };
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
        // patient / vaccineCode come from PID and RXA when merged at message level
        patient: {extension: DATA_ABSENT_UNKNOWN},
        status: "completed",
        vaccineCode: {extension: DATA_ABSENT_UNKNOWN}
    };
    // RXR-1 → route (RouteOfAdministration)
    r4:CodeableConcept? route = routeToCodeableConcept(rxr.rxr1);
    if route is r4:CodeableConcept {
        immunization.route = route;
    }
    // RXR-2 → site
    r4:CodeableConcept site = ceToCodeableConcept(rxr.rxr2);
    if site.coding is r4:Coding[] {
        immunization.site = site;
    }
    return immunization;
};

// RouteOfAdministration concept map (HL70162 → v3-RouteOfAdministration, otherwise v2-0162)
isolated function routeToCodeableConcept(hl7v23:CE ce) returns r4:CodeableConcept? {
    if ce.ce1 == "" {
        r4:CodeableConcept cc = ceToCodeableConcept(ce);
        return cc.coding is r4:Coding[] ? cc : ();
    }
    map<string> v3Route = {"ID": "IDINJ", "IM": "IM", "IV": "IVINJ", "PO": "PO", "SC": "SQ", "TD": "TRNSDERM"};
    string? mapped = v3Route[ce.ce1];
    return {
        coding: [
            mapped is string
                ? {system: "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration", code: mapped}
                : {system: "http://terminology.hl7.org/CodeSystem/v2-0162", code: ce.ce1}
        ],
        text: ce.ce2 != "" ? ce.ce2 : ()
    };
}

// AdministrationMethod concept map (HL70165 → SNOMED CT); unmapped codes keep their v2 coding
isolated function administrationMethodToCodeableConcept(hl7v23:CE ce) returns r4:CodeableConcept? {
    r4:CodeableConcept cc = ceToCodeableConcept(ce);
    if cc.coding is () {
        return ();
    }
    map<string> snomed = {"CH": "419747000", "DI": "421682005", "IS": "421257003", "SH": "420606003", "WA": "422152000"};
    string? mapped = snomed[ce.ce1];
    return mapped is string ? {coding: [{system: "http://snomed.info/sct", code: mapped}], text: ce.ce2 != "" ? ce.ce2 : ()} : cc;
}

// --------------------------------------------------------------------------------------------#
// RXR → MedicationRequest (adds route/site/method to dosageInstruction)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rxr-to-medicationrequest.html
// --------------------------------------------------------------------------------------------#
public isolated function rxrToMedicationRequest(Rxr rxr) returns international401:MedicationRequest {
    international401:MedicationRequest medicationRequest = {
        intent: "order",
        status: "unknown",
        // subject / medication come from PID and RXO/RXE when merged at message level
        subject: {extension: DATA_ABSENT_UNKNOWN},
        medicationCodeableConcept: {extension: DATA_ABSENT_UNKNOWN}
    };
    r4:Dosage dosage = {};
    r4:CodeableConcept? route = routeToCodeableConcept(rxr.rxr1);
    if route is r4:CodeableConcept {
        dosage.route = route;
    }
    r4:CodeableConcept site = ceToCodeableConcept(rxr.rxr2);
    if site.coding is r4:Coding[] {
        dosage.site = site;
    }
    r4:CodeableConcept? method = administrationMethodToCodeableConcept(rxr.rxr4);
    if method is r4:CodeableConcept {
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

    // SCH-7: IF CE.3 IS "HL70277" → appointmentType, otherwise (HL70276) → reasonCode (AppointmentReasonCodes)
    if sch.sch7.ce3 == "HL70277" {
        appointment.appointmentType = ceToCodeableConcept(sch.sch7);
    } else {
        r4:CodeableConcept? reason = appointmentReasonToCodeableConcept(sch.sch7);
        if reason is r4:CodeableConcept {
            appointment.reasonCode = [reason];
        }
    }

    // SCH-8 → appointmentType (AppointmentTypeCodes, v2-0277)
    r4:CodeableConcept apptType = ceToCodeableConcept(sch.sch8);
    if apptType.coding is r4:Coding[] {
        appointment.appointmentType = apptType;
    }

    // SCH-9 → minutesDuration, converted using the SCH-10 units (only positive whole minutes)
    decimal? minutes = durationInMinutes(sch.sch9, sch.sch10);
    if minutes is decimal && minutes >= 1d {
        appointment.minutesDuration = <int>minutes.round();
    }

    // SCH-11 TQ[Appointment]: TQ.4 → start, TQ.5 → end (first valued repetition)
    foreach hl7v23:TQ tq in sch.sch11 {
        if tq.tq4.ts1 != "" || tq.tq5.ts1 != "" {
            appointment.'start = tsToInstant(tq.tq4);
            appointment.end = tsToInstant(tq.tq5);
            break;
        }
    }

    // SCH-12 placer contact, SCH-16 filler contact (participant-type; the IG leaves the codes as placeholders,
    // so only system + display are populated), SCH-20 entered-by (provenance-participant-type "enterer")
    international401:AppointmentParticipant[] participants = [];
    r4:Reference placer = xcnToReferenceWithName(sch.sch12, "Practitioner");
    if placer != {} {
        participants.push({
            actor: placer,
            'type: [{coding: [{system: "http://terminology.hl7.org/CodeSystem/participant-type", display: "placer contact"}], text: "placer contact"}],
            status: "accepted"
        });
    }
    r4:Reference filler = xcnToReferenceWithName(sch.sch16, "Practitioner");
    if filler != {} {
        participants.push({
            actor: filler,
            'type: [{coding: [{system: "http://terminology.hl7.org/CodeSystem/participant-type", display: "filler contact"}], text: "filler contact"}],
            status: "accepted"
        });
    }
    r4:Reference enteredBy = xcnToReferenceWithName(sch.sch20, "Practitioner");
    if enteredBy != {} {
        participants.push({
            actor: enteredBy,
            'type: [{coding: [{system: "http://terminology.hl7.org/CodeSystem/provenance-participant-type", code: "enterer"}]}],
            status: "accepted"
        });
    }
    appointment.participant = (participants.length() > 0) ? participants : [defaultParticipant];

    // SCH-25 → status (FillerStatusCodes[Appointment])
    appointment.status = fillerStatusToAppointmentStatus(sch.sch25.ce1);

    return appointment;
};

// --------------------------------------------------------------------------------------------#
// TXA → DocumentReference
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-txa-to-documentreference.html
// --------------------------------------------------------------------------------------------#
public isolated function txaToDocumentReference(Txa txa) returns international401:DocumentReference {
    international401:DocumentReference documentReference = {
        status: "current",
        // content is mandatory; the document body (OBX) is attached at message level
        content: [{attachment: {contentType: txa.txa3 != "" ? txa.txa3 : (), extension: txa.txa3 == "" ? DATA_ABSENT_UNKNOWN : ()}}]
    };

    // TXA-2 → type (Document Type, v2-0270)
    if txa.txa2 != "" {
        documentReference.'type = {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0270", code: txa.txa2}]};
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

    // TXA-18 → securityLabel (DocumentConfidentialityStatus, v2-0272)
    if txa.txa18 != "" {
        documentReference.securityLabel = [{coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0272", code: txa.txa18}]}];
    }

    // NOTE: description comes from TXA-25, which does not exist in v2.3; TXA-21 (Document Change Reason)
    // is mapped to Provenance.reason by txaToProvenance.

    return documentReference;
};

// --------------------------------------------------------------------------------------------#
// TXA-8 → Provenance (edit history)
// IG dependsOn: IF TXA-8 IS VALUED (each edit date creates a separate Provenance instance)
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-txa-to-provenance.html
// --------------------------------------------------------------------------------------------#
# Maps TXA to the document-edit Provenance (TXA[Provenance]).
#
# + txa - TXA segment
# + return - Provenance, or nil when TXA-8 (Edit Date/Time) is not valued (no edit to record)
public isolated function txaToProvenance(Txa txa) returns international401:Provenance? {
    // TXA-8 → recorded (first valued edit date/time)
    r4:instant? recorded = ();
    foreach hl7v23:TS ts in txa.txa8 {
        if ts.ts1 != "" {
            recorded = tsToInstant(ts);
            break;
        }
    }
    if recorded is () {
        return ();
    }

    // TXA-23 (Distributed Copies) → agent[1], TXA-9 (Originator) → agent[2]; role IRCP
    r4:CodeableConcept ircp = {coding: [{system: PARTICIPATION_TYPE_SYSTEM, code: "IRCP"}]};
    international401:ProvenanceAgent[] agents = [];
    foreach hl7v23:XCN xcn in [...txa.txa23, txa.txa9] {
        if xcn.xcn1 != "" || xcn.xcn2 != "" {
            agents.push({role: [ircp], who: xcnToReference(xcn)});
        }
    }
    if agents.length() == 0 {
        // agent is mandatory (1..*)
        agents.push({role: [ircp], who: {extension: DATA_ABSENT_UNKNOWN}});
    }

    international401:Provenance provenance = {
        recorded: recorded,
        // target (the DocumentReference) is linked at message level
        target: [{'type: "DocumentReference", extension: DATA_ABSENT_UNKNOWN}],
        agent: agents
    };

    // TXA-21 (Document Change Reason) → reason.text
    if txa.txa21 != "" {
        provenance.reason = [{text: txa.txa21}];
    }
    return provenance;
};

// MSH[Provenance-Operator] mapping
// Used when EVN-5 (Operator ID) is NOT valued but MSH-4 (Sending Facility) IS valued.
// Per IG condition: IF EVN-5 NOT VALUED AND (MSH-22 IS VALUED OR MSH-4 IS VALUED)
// Note: MSH-22 (Sending Responsible Organization) does not exist in HL7v2.3 (added in v2.5),
// so only MSH-4 (Sending Facility) is checked in this implementation.
// The sending facility is mapped to Provenance.agent as the "assembler" operator.
public isolated function mshToProvenanceOperator(Msh msh) returns international401:Provenance {
    string facilityName = msh.msh4.hd1;
    international401:ProvenanceAgent agent = {
        'type: {
            coding: [{
                system: "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                code: "assembler",
                display: "Assembler"
            }]
        },
        // MSH-4 → agent.who(Organization) via HD[Organization]
        who: hdToLogicalReference(msh.msh4, "Organization") ?: {extension: DATA_ABSENT_UNKNOWN, display: facilityName != "" ? facilityName : ()}
    };
    return {
        recorded: hl7DateToFhir(msh.msh7.ts1) ?: "1970-01-01T00:00:00Z",
        target: [{
            display: "Sending facility"
        }],
        agent: [agent]
    };
};
// ROL → RelatedPerson
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/ConceptMap-segment-rol-to-relatedperson.html
// --------------------------------------------------------------------------------------------#
public isolated function rolToRelatedPerson(Rol rol) returns international401:RelatedPerson {
    international401:RelatedPerson relatedPerson = {
        // Linked to the message's Patient at message level; unknown when the segment is mapped standalone
        patient: {extension: DATA_ABSENT_UNKNOWN}
    };

    // ROL-4.1 (XCN[RelatedPerson] ID) → identifier; ROL-1 (Role Instance ID) → identifier
    r4:Identifier[] identifiers = [];
    if rol.rol1.ei1 != "" {
        identifiers.push(eiToIdentifier(rol.rol1));
    }
    if rol.rol4.xcn1 != "" {
        identifiers.push({value: rol.rol4.xcn1});
    }
    if identifiers.length() > 0 {
        relatedPerson.identifier = identifiers;
    }

    r4:CodeableConcept relationship = ceToCodeableConcept(rol.rol3);
    if relationship != {} {
        relatedPerson.relationship = [relationship];
    }

    r4:HumanName personName = xcnToHumanName(rol.rol4);
    if personName != {} {
        relatedPerson.name = [personName];
    }

    if rol.rol5.ts1 != "" || rol.rol6.ts1 != "" {
        relatedPerson.period = {
            'start: (rol.rol5.ts1 != "") ? hl7DateToFhir(rol.rol5.ts1) : (),
            end: (rol.rol6.ts1 != "") ? hl7DateToFhir(rol.rol6.ts1) : ()
        };
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
    string eventUri = string `urn:hl7v2:msa:${(msa.msa1 != "") ? msa.msa1 : "UNSPECIFIED"}`;
    string sourceEndpoint = (msa.msa2 != "") ? string `urn:hl7v2:message-control-id:${msa.msa2}` : "urn:source:unknown";
    international401:MessageHeader messageHeader = {
        'source: {endpoint: sourceEndpoint},
        eventUri: eventUri
    };
    // MSA-1 → response.code, MSA-2 → response.identifier (response requires an identifier)
    if msa.msa2 != "" {
        messageHeader.response = {identifier: msa.msa2, code: responseCode};
    }
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
        // beneficiary is linked to the message's Patient at message level; payor (1..*) from IN1-4
        beneficiary: {extension: DATA_ABSENT_UNKNOWN},
        payor: [{extension: DATA_ABSENT_UNKNOWN}]
    };

    // IN1-11 → policyHolder(Organization)
    foreach hl7v23:XON xon in in1.in111 {
        if xon.xon1 != "" {
            coverage.policyHolder = {'type: "Organization", display: xon.xon1};
            break;
        }
    }
    // IN1-16 → subscriber: the Patient IF IN1-17 IS "SEL" (linked at message level), otherwise a RelatedPerson
    if in1.in117 == "SEL" {
        coverage.subscriber = {'type: "Patient", extension: DATA_ABSENT_UNKNOWN};
    } else {
        foreach hl7v23:XPN xpn in in1.in116 {
            r4:HumanName name = xpnToHumanName(xpn);
            if name != {} {
                string[] parts = from string p in [...(name.given ?: []), name.family ?: ""] where p != "" select p;
                coverage.subscriber = {'type: "RelatedPerson", display: string:'join(" ", ...parts)};
                break;
            }
        }
    }
    // IN1-49 → subscriberId (R5 cross-version extension, CX[Identifier])
    foreach hl7v23:CX cx in in1.in149 {
        if cx.cx1 != "" {
            coverage.extension = [
                {url: "http://hl7.org/fhir/5.0/StructureDefinition/extension-subscriberId", valueIdentifier: cxToIdentifier(cx)}
            ];
            break;
        }
    }

    r4:Identifier planId = (in1.in12.ce1 != "") ? {value: in1.in12.ce1} : {};
    if planId != {} {
        coverage.identifier = [planId];
    }

    r4:Reference[] payors = [];
    foreach hl7v23:XON item in in1.in14 {
        if item.xon1 != "" {
            payors.push({display: item.xon1});
        }
    }
    if payors.length() > 0 {
        coverage.payor = payors;
    }

    if in1.in112 != "" || in1.in113 != "" {
        coverage.period = {
            'start: (in1.in112 != "") ? hl7DateToFhir(in1.in112) : (),
            end: (in1.in113 != "") ? hl7DateToFhir(in1.in113) : ()
        };
    }

    if in1.in115 != "" {
        coverage.'type = {coding: [{code: in1.in115}]};
    }

    // IN1-17 → relationship (Relationship concept map)
    if in1.in117 != "" {
        coverage.relationship = nk1RelationshipToCodeableConcept({ce1: in1.in117});
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
            // IN3-21 (Case Manager) → participant.role = SNOMED 768832004 "case manager"
            role: [{
                coding: [{
                    code: "768832004",
                    system: "http://snomed.info/sct"
                }],
                text: "case manager"
            }],
            member: {display: in3.in321}
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
        // beneficiary / payor are mandatory; the Patient is linked at message level, the payor is not in PV1
        beneficiary: {extension: DATA_ABSENT_UNKNOWN},
        payor: [{extension: DATA_ABSENT_UNKNOWN}]
    };
    // PV1-20 → type (FinancialClass, v2-0064)
    if pv1.pv120.length() > 0 && pv1.pv120[0].fc1 != "" {
        coverage.'type = {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0064", code: pv1.pv120[0].fc1}]};
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
        string actorDisplay = "";
        r4:Coding[] codings = resourceId.coding ?: [];
        if codings.length() > 0 {
            string? display = codings[0].display;
            r4:code? code = codings[0].code;
            if display is string && display != "" {
                actorDisplay = display;
            } else if code is string && code != "" {
                actorDisplay = code;
            }
        }
        if actorDisplay != "" {
            participant.actor = {display: actorDisplay};
        }
    }

    r4:CodeableConcept resourceType = ceToCodeableConcept(aig.aig4);
    if resourceType != {} {
        participant.'type = [resourceType];
    }

    // AIG-8 → period.start, AIG-11 (+AIG-12 units, IF AIG-8 IS VALUED) → period.end
    participant.period = startAndDurationToPeriod(aig.aig8, aig.aig11, aig.aig12);

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

    // AIL-6 → period.start, AIL-9 (+AIL-10 units, IF AIL-6 IS VALUED) → period.end
    participant.period = startAndDurationToPeriod(ail.ail6, ail.ail9, ail.ail10);

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

    // AIP-6 → period.start, AIP-9 (+AIP-10 units, IF AIP-6 IS VALUED) → period.end
    participant.period = startAndDurationToPeriod(aip.aip6, aip.aip9, aip.aip10);

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

    // AIS-4 → participant.period.start, AIS-7 (+AIS-8 units, IF AIS-4 IS VALUED) → participant.period.end
    r4:Period? period = startAndDurationToPeriod(ais.ais4, ais.ais7, ais.ais8);
    if period is r4:Period {
        defaultParticipant.period = period;
    }

    // AIS-10 → status (FillerStatusCodes[Appointment])
    appointment.status = fillerStatusToAppointmentStatus(ais.ais10.ce1);

    return appointment;
};

// --------------------------------------------------------------------------------------------#
// Scheduling helpers
// --------------------------------------------------------------------------------------------#

# FillerStatusCodes[Appointment] concept map (HL70278 → AppointmentStatus). Codes without a target
# (Discontinued, Blocked, Overbook) and empty values fall back to "proposed" (Appointment.status is mandatory).
#
# + code - v2 filler status code
# + return - FHIR appointment status
public isolated function fillerStatusToAppointmentStatus(string code) returns international401:AppointmentStatus {
    match code {
        "Pending" => {
            return "pending";
        }
        "Waitlist" => {
            return "waitlist";
        }
        "Booked" => {
            return "booked";
        }
        "Started" => {
            return "checked-in";
        }
        "Complete" => {
            return "fulfilled";
        }
        "Cancelled" => {
            return "cancelled";
        }
        "Deleted" => {
            return "entered-in-error";
        }
        "Noshow" => {
            return "noshow";
        }
    }
    return "proposed";
}

// AppointmentReasonCodes concept map (HL70276 → SNOMED CT); unmapped codes keep their v2 coding
isolated function appointmentReasonToCodeableConcept(hl7v23:CE ce) returns r4:CodeableConcept? {
    r4:CodeableConcept cc = ceToCodeableConcept(ce);
    if cc.coding is () {
        return ();
    }
    map<string> snomed = {"ROUTINE": "3780001", "CHECKUP": "866149003", "FOLLOWUP": "185389009", "EMERGENCY": "373110003"};
    string? mapped = snomed[ce.ce1];
    if mapped is string {
        return {coding: [{system: "http://snomed.info/sct", code: mapped}], text: ce.ce2 != "" ? ce.ce2 : ()};
    }
    return cc;
}

// Converts an NM duration with CE units (ISO+/ANSI+/UCUM style: s, min, h, d, wk) to minutes.
// Units default to minutes when not valued.
isolated function durationInMinutes(string amount, hl7v23:CE units) returns decimal? {
    if amount == "" {
        return ();
    }
    decimal|error value = decimal:fromString(amount);
    if value is error {
        return ();
    }
    string unit = (units.ce1 != "" ? units.ce1 : units.ce2).toLowerAscii();
    match unit {
        ""|"m"|"min"|"mins"|"minute"|"minutes" => {
            return value;
        }
        "s"|"sec"|"second"|"seconds" => {
            return value / 60d;
        }
        "h"|"hr"|"hrs"|"hour"|"hours" => {
            return value * 60d;
        }
        "d"|"day"|"days" => {
            return value * 1440d;
        }
        "wk"|"w"|"week"|"weeks" => {
            return value * 10080d;
        }
    }
    log:printWarn("Unsupported duration units: " + unit);
    return ();
}

// start (TS) → period.start; start + duration (in the given units) → period.end
isolated function startAndDurationToPeriod(hl7v23:TS startTs, string duration, hl7v23:CE units) returns r4:Period? {
    if startTs.ts1 == "" {
        return ();
    }
    r4:Period period = {'start: tsToInstant(startTs)};
    decimal? minutes = durationInMinutes(duration, units);
    string? startValue = period.'start;
    if minutes is decimal && startValue is string {
        time:Utc|error startUtc = time:utcFromString(startValue);
        if startUtc is time:Utc {
            string end = time:utcToString(time:utcAddSeconds(startUtc, minutes * 60d));
            // drop the ".000"-style fraction time:utcToString adds for whole seconds
            period.end = re `\.0+Z$`.replace(end, "Z");
        }
    }
    return period;
}

// --------------------------------------------------------------------------------------------#
// MSH → Provenance (Source / Transformation)
// --------------------------------------------------------------------------------------------#

# MSH[Provenance-Source]: the source of the v2 message (IF MSH-4 is valued).
#
# + msh - MSH segment
# + return - Provenance, or nil when MSH-4 (Sending Facility) is not valued
public isolated function mshToProvenanceSource(Msh msh) returns international401:Provenance? {
    r4:Reference? sendingFacility = hdToLogicalReference(msh.msh4, "Organization");
    if sendingFacility is () {
        return ();
    }
    string[] msgParts = from string p in [msh.msh9.cm_msg1, msh.msh9.cm_msg2] where p != "" select p;
    international401:Provenance provenance = {
        recorded: tsToInstant(msh.msh7) ?: re `\.\d+Z$`.replace(time:utcToString(time:utcNow()), "Z"),
        target: [{extension: DATA_ABSENT_UNKNOWN}],
        agent: [
            {
                'type: {coding: [{system: "http://terminology.hl7.org/CodeSystem/provenance-participant-type", code: "author"}]},
                who: sendingFacility
            }
        ]
    };
    if msh.msh7.ts1 != "" {
        provenance.occurredDateTime = tsToDateTime(msh.msh7);
    }
    if msgParts.length() > 0 {
        provenance.activity = {coding: [{display: "message - " + string:'join("^", ...msgParts)}]};
    }
    return provenance;
}

# MSH[Provenance-Transformation]: records the v2 → FHIR transformation performed by this library.
#
# + return - Provenance describing the transformation
public isolated function mshToProvenanceTransformation() returns international401:Provenance {
    return {
        recorded: re `\.\d+Z$`.replace(time:utcToString(time:utcNow()), "Z"),
        activity: {
            coding: [
                {
                    system: "http://hl7.org/fhir/uv/v2mappings/CodeSystem/provenance-activity-type-v2-to-fhir",
                    code: "v2-fhir-transformation"
                }
            ]
        },
        target: [{extension: DATA_ABSENT_UNKNOWN}],
        agent: [
            {
                'type: {coding: [{system: "http://terminology.hl7.org/CodeSystem/provenance-participant-type", code: "assembler"}]},
                who: {display: "ballerinax/health.hl7v23.utils.v2tofhirr4"}
            }
        ]
    };
}

// DiagnosisType concept map (HL70052): A → AD (diagnosis-role); other codes keep their v2 coding
isolated function diagnosisTypeToCodeableConcept(string code) returns r4:CodeableConcept? {
    if code == "" {
        return ();
    }
    return code == "A"
        ? {coding: [{system: "http://terminology.hl7.org/CodeSystem/diagnosis-role", code: "AD"}]}
        : {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0052", code: code}]};
}

// DG1-15 (Diagnosis Priority) → diagnosis.rank (positiveInt)
isolated function diagnosisRank(string priority) returns int? {
    int|error rank = int:fromString(priority.trim());
    return rank is int && rank > 0 ? rank : ();
}
