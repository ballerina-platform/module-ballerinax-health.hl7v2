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
import ballerina/log;
import ballerinax/health.fhir.r4 as r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;
import ballerinax/health.hl7v231;
import ballerinax/health.hl7v24;
import ballerinax/health.hl7v25;
import ballerinax/health.hl7v251;
import ballerinax/health.hl7v26;
import ballerinax/health.hl7v27;
import ballerinax/health.hl7v28;
import ballerinax/health.hl7v2commons;

# Parse a string to an HL7 message.
#
# + msg - HL7 message as a string
# + return - hl7v2:Message
public isolated function stringToHl7(string msg) returns hl7:Message|error => check hl7:parse(msg);

# Transform an HL7 message to FHIR.
#
# + hl7 - HL7 message as a string or an hl7v2:Message  
# + customMapper - Custom mapper implementation
# + return - FHIR Bundle as a json
public isolated function v2ToFhir(string|hl7:Message hl7, V2SegmentToFhirMapper? customMapper = ()) returns json|error {
    hl7:Message hl7msg;
    if (hl7 is string) {
        hl7msg = check stringToHl7(hl7);
    } else {
        hl7msg = hl7;
    }
    if customMapper == () {
        return transformToFhir(hl7msg, defaultMapper);
    }
    V2SegmentToFhirMapper mapper = {...defaultMapper};
    foreach string key in customMapper.keys() {
        mapper[key] = customMapper.get(key);
    }
    return transformToFhir(hl7msg, mapper);
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
# + return - FHIR Bundle
public isolated function segmentToFhir(string segmentName, hl7:Segment segment, V2SegmentToFhirMapper? customMapper) returns r4:BundleEntry[]|error {
    r4:BundleEntry[] entries = [];
    V2SegmentToFhirMapper impl;
    lock {
        impl = customMapper != () ? customMapper.clone() : defaultMapper.clone();
    }
    match segmentName {
        "NK1" => {
            Nk1ToPatient? nk1ToPatient = impl.nk1ToPatient;
            if nk1ToPatient is Nk1ToPatient {
                map<anydata> constructedResource = nk1ToPatient(check segment.ensureType(hl7v2commons:Nk1));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "PD1" => {
            Pd1ToPatient? pd1ToPatient = impl.pd1ToPatient;
            if pd1ToPatient is Pd1ToPatient {
                map<anydata> constructedResource = pd1ToPatient(check segment.ensureType(hl7v2commons:Pd1));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "PID" => {
            PidToPatient? pidToPatient = impl.pidToPatient;
            if pidToPatient is PidToPatient {
                map<anydata> constructedResource = pidToPatient(check segment.ensureType(hl7v2commons:Pid));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "PV1" => {
            Pv1ToPatient? pv1ToPatientResult = impl.pv1ToPatient;
            if pv1ToPatientResult is Pv1ToPatient {
                map<anydata> constructedResource = pv1ToPatientResult(check segment.ensureType(hl7v2commons:Pv1));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
            Pv1ToEncounter? pv1ToEncounterResult = impl.pv1ToEncounter;
            if pv1ToEncounterResult is Pv1ToEncounter {
                map<anydata> constructedResource = pv1ToEncounterResult(check segment.ensureType(hl7v2commons:Pv1));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "DG1" => {
            Dg1ToCondition? dg1ToCondition = impl.dg1ToCondition;
            string? conditionId = ();
            string? patientId = ();
            if dg1ToCondition is Dg1ToCondition {
                map<anydata> constructedResource = dg1ToCondition(check segment.ensureType(hl7v2commons:Dg1));
                if constructedResource["id"] != () {
                    conditionId = <string?>constructedResource["id"];
                    entries.push({'resource: constructedResource});
                }
            }
            Dg1ToEncounter? dg1ToEncounter = impl.dg1ToEncounter;
            if dg1ToEncounter is Dg1ToEncounter {
                r4:BundleEntry bundleEntry = entries[entries.length() - 1];
                if bundleEntry?.'resource is international401:Condition {
                    map<anydata> constructedResource = dg1ToEncounter(check segment.ensureType(hl7v2commons:Dg1), conditionId);
                    if constructedResource["id"] != () {
                        entries.push({'resource: constructedResource});
                    }
                }
            }
            Dg1ToEpisodeOfCare? dg1ToEpisodeOfCare = impl.dg1ToEpisodeOfCare;
            if dg1ToEpisodeOfCare is Dg1ToEpisodeOfCare {
                map<anydata> constructedResource = dg1ToEpisodeOfCare(check segment.ensureType(hl7v2commons:Dg1), conditionId, patientId);
                if constructedResource["id"] != () {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "AL1" => {
            Al1ToAllerygyIntolerance? al1ToAllerygyIntolerance = impl.al1ToAllerygyIntolerance;
            if al1ToAllerygyIntolerance is Al1ToAllerygyIntolerance {
                map<anydata> constructedResource = al1ToAllerygyIntolerance(check segment.ensureType(hl7v2commons:Al1));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "EVN" => {
            EvnToProvenance? evnToProvenance = impl.evnToProvenance;
            if evnToProvenance is EvnToProvenance {
                map<anydata> constructedResource = evnToProvenance(check segment.ensureType(hl7v2commons:Evn));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "MSH" => {
            MshToMessageHeader? mshToMessageHeader = impl.mshToMessageHeader;
            if mshToMessageHeader is MshToMessageHeader {
                map<anydata> constructedResource = mshToMessageHeader(check segment.ensureType(hl7v2commons:Msh));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "PV2" => {
            Pv2ToEncounter? pv2ToEncounter = impl.pv2ToEncounter;
            if pv2ToEncounter is Pv2ToEncounter {
                map<anydata> constructedResource = pv2ToEncounter(check segment.ensureType(hl7v2commons:Pv2));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "OBX" => {
            ObxToObservation? obxToObservation = impl.obxToObservation;
            if obxToObservation is ObxToObservation {
                map<anydata> constructedResource = obxToObservation(check segment.ensureType(hl7v2commons:Obx));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "ORC" => {
            OrcToImmunization? orcToImmunization = impl.orcToImmunization;
            if orcToImmunization is OrcToImmunization {
                map<anydata> constructedResource = orcToImmunization(check segment.ensureType(hl7v2commons:Orc));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
        "OBR" => {
            ObrToDiagnosticReport? obrToDiagnosticReport = impl.obrToDiagnosticReport;
            if obrToDiagnosticReport is ObrToDiagnosticReport {
                map<anydata> constructedResource = obrToDiagnosticReport(check segment.ensureType(hl7v2commons:Obr));
                if constructedResource.keys().length() > 1 {
                    entries.push({'resource: constructedResource});
                }
            }
        }
    }
    return entries;
}

public isolated function mshToMessageHeader(hl7v2commons:Msh msh) returns international401:MessageHeader {
    international401:MessageHeader messageHeader = {
        'source: hdToMessageHeaderSource(msh.msh3),
        destination: [hdToMessageHeaderDestination(msh.msh5)],
        eventCoding: (msh.msh9 is hl7v23:CM_MSG) ? msgToCoding(<hl7v23:CM_MSG>msh.msh9) : {},
        language: (msh.msh19 is hl7v26:CWE|hl7v27:MSH|hl7v28:MSH) ? cweToCode(<hl7v26:CWE>msh.msh19) : ceToCode(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>msh.msh19),
        eventUri: ""
    };
    return messageHeader;
};

// --- Patient Administation
public isolated function al1ToAllerygyIntolerance(hl7v2commons:Al1 al1) returns international401:AllergyIntolerance {

    international401:AllergyIntoleranceReaction[] allergyIntoleranceReactions = [];
    if al1.al15 is hl7v23:ST && al1 is hl7v23:AL1|hl7v231:AL1|hl7v24:AL1|hl7v25:AL1|hl7v251:AL1|hl7v26:AL1 {
        allergyIntoleranceReactions = [
            {
                manifestation: (al1.al15 != "") ? [
                        {
                            text: <hl7v23:ST>al1.al15
                        }
                    ] : [],
                onset: (al1.al16 != "") ? al1.al16 : ()
            }
        ];
    } else {
        foreach var reaction in <anydata[]>al1.al15 {
            if reaction != "" {
                string? al16 = ();
                if al1 is hl7v23:AL1|hl7v231:AL1|hl7v24:AL1|hl7v25:AL1|hl7v251:AL1|hl7v26:AL1 {
                    al16 = (al1.al16 != "") ? al1.al16.toString() : ();
                }
                international401:AllergyIntoleranceReaction allergyIntoleranceReaction = {
                    manifestation: [
                        {
                            text: <string?>reaction
                        }
                    ],
                    onset: al16
                };
                allergyIntoleranceReactions.push(allergyIntoleranceReaction);
            }
        }
    }
    r4:CodeableConcept allergyCode = (al1 is hl7v26:AL1|hl7v27:AL1|hl7v28:AL1) ? cweToCodeableConcept(<hl7v26:CWE|hl7v27:CWE|hl7v28:CWE>al1.al13) : ceToCodeableConcept(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>al1.al13);
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

    if al1.al14 is hl7v23:IS|hl7v231:IS {
        if al1.al14 == "SV" {
            allergyIntolerance.criticality = international401:CODE_CRITICALITY_HIGH;
        }
    } else if al1.al14 is hl7v24:CE|hl7v25:CE|hl7v251:CE {
        if (<hl7v24:CE|hl7v25:CE|hl7v251:CE>al1.al14).ce1 == "SV" {
            allergyIntolerance.criticality = international401:CODE_CRITICALITY_HIGH;
        }
    } else if al1.al14 is hl7v26:CWE|hl7v27:CWE|hl7v28:CWE {
        if (<hl7v26:CWE|hl7v27:CWE|hl7v28:CWE>al1.al14).cwe1 == "SV" {
            allergyIntolerance.criticality = international401:CODE_CRITICALITY_HIGH;
        }
    }

    if al1.al12 is hl7v23:IS|hl7v231:IS {
        allergyIntolerance.'type = isToAllergyIntoleranceType(<hl7v23:IS>al1.al12);
    } else if al1.al12 is hl7v24:CE|hl7v25:CE|hl7v251:CE {
        allergyIntolerance.'type = isToAllergyIntoleranceType((<hl7v24:CE|hl7v25:CE|hl7v251:CE>al1.al12).ce1);
    } else if al1.al12 is hl7v26:CWE|hl7v27:CWE|hl7v28:CWE {
        allergyIntolerance.'type = isToAllergyIntoleranceType((<hl7v26:CWE|hl7v27:CWE|hl7v28:CWE>al1.al12).cwe1);
    }

    return allergyIntolerance;
};

// TODO: Ballerina FHIR EVN and HL7 EVN is different for some fields
public isolated function evnToProvenance(hl7v2commons:Evn evn) returns international401:Provenance {
    r4:Coding[] coding = [
        {
            display: evn.name
        }
    ];

    international401:ProvenanceAgent[] agent = [];
    if evn.evn5 is hl7v23:XCN {
        r4:Reference xcnToReferenceResult = xcnToReferenceWithType(<hl7v23:XCN>evn.evn5, "Practitioner");
        if xcnToReferenceResult != {} {
            agent.push({
                who: xcnToReferenceResult
            });
        }
    } else {
        foreach var xcn in <anydata[]>evn.evn5 {
            r4:Reference xcnToReferenceResult = xcnToReferenceWithType(<Xcn>xcn, "Practitioner");
            if xcnToReferenceResult != {} {
                agent.push({
                    who: xcnToReferenceResult
                });
            }
        }
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

    if evn is hl7v23:EVN|hl7v231:EVN|hl7v24:EVN|hl7v25:EVN|hl7v251:EVN|hl7v26:EVN {
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
    } else if evn is hl7v27:EVN|hl7v28:EVN {
        if evn.evn4.cwe1 != "" && evn.evn4.cwe1 != "U" {
            r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(evn.evn4);
            if cweToCodeableConceptResult != {} {
                provenance.reason = [cweToCodeableConceptResult];
            }
        }
    }

    if evn is hl7v23:EVN|hl7v231:EVN|hl7v24:EVN|hl7v25:EVN|hl7v251:EVN {
        if evn.evn2.ts1 != "" {
            provenance.recorded = evn.evn2.ts1;
        }
        provenance.occurredDateTime = (evn.evn6.ts1 != "") ? evn.evn6.ts1 : ();
    } else if evn is hl7v26:EVN|hl7v27:EVN|hl7v28:EVN {
        if evn.evn2 != "" {
            provenance.recorded = evn.evn2;
        }
        provenance.occurredDateTime = (evn.evn6 != "") ? evn.evn6 : ();
    }

    return provenance;
};

public isolated function nk1ToPatient(hl7v2commons:Nk1 nk1) returns international401:Patient => {
    contact: nk1ToContact(nk1.nk12, nk1.nk14, nk1.nk15, nk1.nk16, nk1.nk17, nk1.nk18, nk1.nk19, nk1.nk113, nk1.nk115, nk1.nk130, nk1.nk131, nk1.nk132)
};

public isolated function pd1ToPatient(hl7v2commons:Pd1 pd1) returns international401:Patient {
    r4:Extension[]? extension = [];
    if pd1 is hl7v27:PD1 {
        extension = pd1ToExtension(pd1.pd16.cwe1);
    } else if pd1 is hl7v23:PD1|hl7v231:PD1|hl7v24:PD1|hl7v25:PD1|hl7v251:PD1|hl7v26:PD1 {
        extension = pd1ToExtension(pd1.pd16);
    }
    return {
        generalPractitioner: pd1ToGeneralPractitioner(pd1.pd13, pd1.pd14),
        extension: extension
    };
};

public isolated function pidToPatient(hl7v2commons:Pid pid) returns international401:Patient {

    international401:Patient patient = {
        address: pidToAddress(pid.pid12, pid.pid11),
        telecom: pidToPhoneNumber(pid.pid13, pid.pid14),
        communication: pidToPrimaryLanguage(pid.pid15),
        maritalStatus: pidToMaritalStatus(<hl7v2commons:Pid16>pid.pid16),
        identifier: pidToSsnNumberIdentifier(pid.pid19),
        extension: (pid.pid23 != "") ? pidToBirthPlace(pid.pid23) : (),
        multipleBirthBoolean: (pid.pid24 != "") ? pidToMultipleBirthIndicator(pid.pid24) : (),
        multipleBirthInteger: (pid.pid25 != "-1.0") ? pidToBirthOrder(pid.pid25) : (),
        deceasedBoolean: (pid.pid30 != "") ? pidToPatientDeathIndicator(pid.pid30) : ()
    };

    if pid is hl7v23:PID|hl7v231:PID|hl7v24:PID|hl7v25:PID|hl7v251:PID {
        patient.name = pidToPatientName(pid.pid5, pid.pid9);
        patient.birthDate = (pid.pid7.ts1 != "") ? pid.pid7.ts1 : ();
        patient.deceasedDateTime = (pid.pid29.ts1 != "") ? pid.pid29.ts1 : ();
        patient.gender = pidToAdministrativeSex(pid.pid8);
    } else if pid is hl7v26:PID {
        patient.name = pidToPatientName(pid.pid5, pid.pid9);
        patient.birthDate = (pid.pid7 != "") ? pid.pid7 : ();
        patient.deceasedDateTime = (pid.pid29 != "") ? pid.pid29 : ();
        patient.gender = pidToAdministrativeSex(pid.pid8);
    } else if pid is hl7v27:PID|hl7v28:PID {
        patient.name = pidToPatientName(pid.pid5, pid.pid9);
        patient.birthDate = (pid.pid7 != "") ? pid.pid7 : ();
        patient.deceasedDateTime = (pid.pid29 != "") ? pid.pid29 : ();
        patient.gender = pidToAdministrativeSex(pid.pid8.cwe1);
    }
    return patient;
};

public isolated function pv1ToPatient(hl7v2commons:Pv1 pv1) returns international401:Patient {
    string extension = "";

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        extension = pv1.pv116;
    } else if pv1 is hl7v27:PV1 {
        extension = pv1.pv116.cwe1;
    }
    return {
        extension: (extension != "") ? pv1ToExtension(extension) : ()
    };
};

public isolated function pv1ToEncounter(hl7v2commons:Pv1 pv1) returns international401:Encounter {
    international401:Encounter encounter = {
        'class: {},
        status: "in-progress"
    };
    international401:EncounterLocation[] encounterLocations = [];
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        international401:EncounterLocation encounterLoc1 = {
            location: {
                display: pv1.pv13.pl1 != "" ? pv1.pv13.pl1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv13.pl5)
        };
        if encounterLoc1 != {} && encounterLoc1.location != {} {
            encounterLocations.push(encounterLoc1);
        }

        international401:EncounterLocation encounterLoc2 = {
            location: {
                display: pv1.pv16.pl1 != "" ? pv1.pv16.pl1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv16.pl5)
        };
        if encounterLoc2 != {} && encounterLoc2.location != {} {
            encounterLocations.push(encounterLoc2);
        }

        international401:EncounterLocation encounterLoc3 = {
            location: {
                display: pv1.pv111.pl1 != "" ? pv1.pv111.pl1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv111.pl5)
        };
        if encounterLoc3 != {} && encounterLoc3.location != {} {
            encounterLocations.push(encounterLoc3);
        }

        international401:EncounterLocation encounterLoc4 = {
            location: {
                display: pv1.pv142.pl1 != "" ? pv1.pv142.pl1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv142.pl5)
        };
        if encounterLoc4 != {} && encounterLoc4.location != {} {
            encounterLocations.push(encounterLoc4);
        }

        international401:EncounterLocation encounterLoc5 = {
            location: {
                display: pv1.pv142.pl1 != "" ? pv1.pv142.pl1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv142.pl5)
        };
        if encounterLoc5 != {} && encounterLoc5.location != {} {
            encounterLocations.push(encounterLoc5);
        }

        international401:EncounterLocation encounterLoc6 = {
            location: {
                display: pv1.pv143.pl1 != "" ? pv1.pv143.pl1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv143.pl5)
        };
        if encounterLoc6 != {} && encounterLoc6.location != {} {
            encounterLocations.push(encounterLoc6);
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        international401:EncounterLocation encounterLoc1 = {
            location: {
                display: pv1.pv13.pl1.hd1 != "" ? pv1.pv13.pl1.hd1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv13.pl5)
        };
        if encounterLoc1 != {} && encounterLoc1.location != {} {
            encounterLocations.push(encounterLoc1);
        }

        international401:EncounterLocation encounterLoc2 = {
            location: {
                display: pv1.pv16.pl1.hd1 != "" ? pv1.pv16.pl1.hd1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv16.pl5)
        };
        if encounterLoc2 != {} && encounterLoc2.location != {} {
            encounterLocations.push(encounterLoc2);
        }

        international401:EncounterLocation encounterLoc3 = {
            location: {
                display: pv1.pv111.pl1.hd1 != "" ? pv1.pv111.pl1.hd1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv111.pl5)
        };
        if encounterLoc3 != {} && encounterLoc3.location != {} {
            encounterLocations.push(encounterLoc3);
        }

        international401:EncounterLocation encounterLoc4 = {
            location: {
                display: pv1.pv142.pl1.hd1 != "" ? pv1.pv142.pl1.hd1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv142.pl5)
        };
        if encounterLoc4 != {} && encounterLoc4.location != {} {
            encounterLocations.push(encounterLoc4);
        }

        international401:EncounterLocation encounterLoc5 = {
            location: {
                display: pv1.pv143.pl1.hd1 != "" ? pv1.pv143.pl1.hd1 : ()
            },
            status: getEncounterLocationStatus(pv1.pv143.pl5)
        };
        if encounterLoc5 != {} && encounterLoc5.location != {} {
            encounterLocations.push(encounterLoc5);
        }
    }

    international401:EncounterParticipant[] participants = [];

    int i = 0;
    int len = 1; // in hl7v23 case
    if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        len = pv1.pv17.length();
    }
    while i < len {
        string system = "";
        string xcn1 = "";
        string xcn10 = "";
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv17[i].xcn8.cwe1;
            xcn1 = pv1.pv17[i].xcn1;
            xcn10 = pv1.pv17[i].xcn10;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv17[i].xcn8;
            xcn1 = pv1.pv17[i].xcn1;
            xcn10 = pv1.pv17[i].xcn10;
        }

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
    if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        lenPv18 = pv1.pv18.length();
    }
    while i < lenPv18 {
        string system = "";
        string xcn1 = "";
        string xcn10 = "";
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv18[i].xcn8.cwe1;
            xcn1 = pv1.pv18[i].xcn1;
            xcn10 = pv1.pv18[i].xcn10;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv18[i].xcn8;
            xcn1 = pv1.pv18[i].xcn1;
            xcn10 = pv1.pv18[i].xcn10;
        }
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
        string system = "";
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv19[i].xcn8.cwe1;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv19[i].xcn8;
        }
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
    if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        lenPv18 = pv1.pv17.length();
    }
    while i < lenPv17 {
        string system = "";
        string code = "";
        string xcn1 = "";
        string xcn10 = "";
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv17[i].xcn8.cwe1;
            code = pv1.pv17[i].xcn10;
            xcn1 = pv1.pv17[i].xcn1;
            xcn10 = pv1.pv17[i].xcn10;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv17[i].xcn8;
            code = pv1.pv17[i].xcn10;
            xcn1 = pv1.pv17[i].xcn1;
            xcn10 = pv1.pv17[i].xcn10;
        }
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

    // if pv1 is hl7v23:PV1 {
    //     international401:EncounterParticipant encounterParticipant = {
    //         individual: (pv1.pv152.xcn1 != "") ? {
    //                 display: pv1.pv152.xcn1
    //             } : (),
    //         'type: (pv1.pv152.xcn8 != "") ? [
    //                 {
    //                     coding: [
    //                         {
    //                             code: "PART",
    //                             system: pv1.pv152.xcn8
    //                         }
    //                     ],
    //                     text: "Participation"
    //                 }
    //             ] : ()
    //     };
    //     if encounterParticipant != {} {
    //         participants.push(encounterParticipant);
    //     }
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
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
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        if pv1.pv12 != "" {
            encounter.'class = {
                display: pv1.pv12
            };
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:Coding cweToCodingResult = cweToCoding(pv1.pv12);
        if cweToCodingResult != {} {
            encounter.'class = cweToCodingResult;
        }
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        if pv1.pv14 != "" {
            encounter.'type = [
                {
                    text: pv1.pv14
                }
            ];
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv14);
        if cweToCodeableConceptResult != {} {
            encounter.'type = [cweToCodeableConceptResult];
        }
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        if pv1.pv113 != "" {
            encounter.hospitalization.reAdmission = {
                text: pv1.pv113
            };
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv113);
        if cweToCodeableConceptResult != {} {
            encounter.hospitalization.reAdmission = cweToCodeableConceptResult;
        }
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        if pv1.pv114 != "" {
            encounter.hospitalization.admitSource = {
                text: pv1.pv114
            };
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv114);
        if cweToCodeableConceptResult != {} {
            encounter.hospitalization.admitSource = cweToCodeableConceptResult;
        }
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        if pv1.pv136 != "" {
            encounter.hospitalization.dischargeDisposition = {
                text: pv1.pv136
            };
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv136);
        if cweToCodeableConceptResult != {} {
            encounter.hospitalization.dischargeDisposition = cweToCodeableConceptResult;
        }
    }

    if pv1 is hl7v23:PV1 {
        if pv1.pv137.cm_dld1 != "" {
            encounter.hospitalization.destination = {
                reference: pv1.pv137.cm_dld1
            };
        }
    } else if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        if pv1.pv137.dld1 != "" {
            encounter.hospitalization.destination = {
                reference: pv1.pv137.dld1
            };
        }
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        if pv1.pv137.dld1.cwe1 != "" {
            encounter.hospitalization.destination = {
                reference: pv1.pv137.dld1.cwe1
            };
        }
    }

    if pv1 is hl7v23:PV1 {
        if pv1.pv138 != "" {
            encounter.hospitalization.dietPreference = [
                {
                    text: pv1.pv138
                }
            ];
        }
    } else if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(pv1.pv138);
        if ceToCodeableConceptResult != {} {
            encounter.hospitalization.dietPreference = [ceToCodeableConceptResult];
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv138);
        if cweToCodeableConceptResult != {} {
            encounter.hospitalization.dietPreference = [cweToCodeableConceptResult];
        }
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        if pv1.pv139 != "" {
            encounter.hospitalization.specialCourtesy = [
                {
                    text: pv1.pv139
                }
            ];
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv116);
        if cweToCodeableConceptResult != {} {
            encounter.hospitalization.specialCourtesy = [cweToCodeableConceptResult];
        }
    }

    if pv1.pv15.cx1 != "" {
        encounter.hospitalization.preAdmissionIdentifier = {
            value: pv1.pv15.cx1,
            assigner: (pv1.pv15.cx4.hd1 != "") ? {
                    display: pv1.pv15.cx4.hd1
                } : ()
        };
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        if pv1.pv110 != "" {
            encounter.serviceType = {
                text: pv1.pv110
            };
        }
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pv1.pv110);
        if cweToCodeableConceptResult != {} {
            encounter.serviceType = cweToCodeableConceptResult;
        }
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

    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        encounter.period.'start = (pv1.pv144.ts1 != "") ? pv1.pv144.ts1 : ();
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        encounter.period.'start = (pv1.pv144 != "") ? pv1.pv144 : ();
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1 {
        encounter.period.end = (pv1.pv145.ts1 != "") ? pv1.pv145.ts1 : ();
    } else if pv1 is hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        encounter.period.end = (pv1.pv145[0].ts1 != "") ? pv1.pv145[0].ts1 : ();
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        encounter.period.end = (pv1.pv145 != "") ? pv1.pv145 : ();
    }

    if encounter.period == {} {
        encounter.period = ();
    }

    if pv1 is hl7v23:PV1|hl7v231:PV1 {
        if pv1.pv145.ts1 != "" {
            encounter.status = "finished";
        }
    } else if pv1 is hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        if pv1.pv145.length() > 0 {
            encounter.status = "finished";
        }
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        if pv1.pv145 != "" {
            encounter.status = "finished";
        }
    }

    if pv1 is hl7v27:PV1|hl7v28:PV1 {
        if pv1.pv154.cx1 != "" {
            encounter.episodeOfCare = [
                {
                    reference: pv1.pv154.cx1
                }
            ];
        }
    }
    encounter.location = (encounterLocations.length() > 0) ? encounterLocations : ();
    encounter.participant = (participants.length() > 0) ? participants : ();

    return encounter;
};

public isolated function pv2ToEncounter(hl7v2commons:Pv2 pv2) returns international401:Encounter {
    string display = "";
    if pv2 is hl7v23:PV2|hl7v231:PV2|hl7v24:PV2|hl7v25:PV2|hl7v251:PV2|hl7v26:PV2 {
        display = pv2.pv21.pl1;
    } else if pv2 is hl7v27:PV2|hl7v28:PV2 {
        display = pv2.pv21.pl1.hd1;
    }
    international401:EncounterLocation[] location = [
        {
            location: {
                display: display // TODO: location need to mapped correctly
            }
        }
    ];

    r4:Coding[] coding = [idToCoding(pv2.pv222)];

    international401:EncounterParticipant[] participant = []; // TODO: participant need to mapped correctly
    if pv2.pv213 is hl7v23:XCN {
        participant = [
            {
                id: (<hl7v23:XCN>pv2.pv213).xcn1
            }
        ];
    } else if pv2.pv213 is hl7v231:XCN[] {
        foreach hl7v231:XCN xcn in <hl7v231:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    } else if pv2.pv213 is hl7v24:XCN[] {
        foreach hl7v24:XCN xcn in <hl7v24:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    } else if pv2.pv213 is hl7v25:XCN[] {
        foreach hl7v25:XCN xcn in <hl7v25:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    } else if pv2.pv213 is hl7v251:XCN[] {
        foreach hl7v251:XCN xcn in <hl7v251:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    } else if pv2.pv213 is hl7v26:XCN[] {
        foreach hl7v26:XCN xcn in <hl7v26:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    } else if pv2.pv213 is hl7v27:XCN[] {
        foreach hl7v27:XCN xcn in <hl7v27:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    } else if pv2.pv213 is hl7v28:XCN[] {
        foreach hl7v28:XCN xcn in <hl7v28:XCN[]>pv2.pv213 {
            participant.push({
                id: xcn.xcn1
            });
        }
    }

    string priority = "";
    if pv2 is hl7v23:PV2|hl7v231:PV2|hl7v24:PV2|hl7v25:PV2|hl7v251:PV2|hl7v26:PV2 {
        priority = pv2.pv225;
    } else if pv2 is hl7v27:PV2|hl7v28:PV2 {
        priority = pv2.pv225.cwe1;
    }

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
public isolated function dg1ToCondition(hl7v2commons:Dg1 dg1) returns international401:Condition {
    international401:Condition condition = {
        subject: {}
    };
    if dg1 is hl7v26:DG1|hl7v27:DG1|hl7v28:DG1 {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(dg1.dg13);
        if cweToCodeableConceptResult != {} {
            cweToCodeableConceptResult.text = (dg1.dg14 != "") ? dg1.dg14 : ();
            condition.code = cweToCodeableConceptResult;
        }
        condition.onsetDateTime = dg1.dg15 != "" ? dg1.dg15 : ();
        condition.recordedDate = dg1.dg119 != "" ? dg1.dg119 : ();
        if dg1.dg120.ei1 != "" {
            condition.identifier = [eiToIdentifier(dg1.dg120)];
        }
        if dg1.dg122.ei1 != "" {
            r4:ReferenceExtension ref = {
                url: "http://hl7.org/fhir/StructureDefinition/condition-dueTo",
                valueReference: {
                    reference: dg1.dg122.ei1
                }
            };
            condition.extension = [ref];
        }
    } else if dg1 is hl7v23:DG1|hl7v231:DG1|hl7v24:DG1|hl7v25:DG1|hl7v251:DG1 {
        r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(dg1.dg13);
        if ceToCodeableConceptResult != {} {
            ceToCodeableConceptResult.text = (dg1.dg14 != "") ? dg1.dg14 : ();
            condition.code = ceToCodeableConceptResult;
        }
        condition.onsetDateTime = dg1.dg15.ts1 != "" ? dg1.dg15.ts1 : ();
        condition.recordedDate = dg1.dg119.ts1 != "" ? dg1.dg119.ts1 : ();
    }
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

public isolated function dg1ToEncounter(hl7v2commons:Dg1 dg1, string? conditionId) returns international401:Encounter {
    international401:Encounter encounter = {
        'class: {},
        status: "finished"
    };
    if dg1 is hl7v27:DG1|hl7v28:DG1 {
        hl7v27:CWE|hl7v28:CWE dg16 = dg1.dg16;
        if conditionId is string {
            international401:EncounterDiagnosis encounterDiagnosis = {
                condition: {
                    reference: string `Condition/${conditionId}`
                }
            };
            encounterDiagnosis.use = cweToCodeableConcept(dg16);
            encounter.diagnosis = [encounterDiagnosis];
            hl7v27:NM|hl7v28:NM dg115 = dg1.dg115;
            int|error rankVal = int:fromString(dg115);
            if rankVal is int {
                encounterDiagnosis.rank = rankVal;
            }
            encounter.id = generateFhirResourceId();
        }
    } else if dg1 is hl7v23:DG1|hl7v231:DG1|hl7v24:DG1|hl7v25:DG1|hl7v251:DG1|hl7v26:DG1 {
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
    }
    return encounter;
}

public isolated function dg1ToEpisodeOfCare(hl7v2commons:Dg1 dg1, string? conditionId, string? patientId) returns international401:EpisodeOfCare {
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
        if dg1 is hl7v27:DG1|hl7v28:DG1 {
            hl7v27:CWE|hl7v28:CWE dg16 = dg1.dg16;
            episodeOfCareDiagnosis.role = cweToCodeableConcept(dg16);
        } else if dg1 is hl7v23:DG1|hl7v231:DG1|hl7v24:DG1|hl7v25:DG1|hl7v251:DG1|hl7v26:DG1 {
            Is dg16 = dg1.dg16;
            if dg16 != "" {
                episodeOfCareDiagnosis.role = {
                    text: dg16
                };
            }
        }
    }
    if patientId is string {
        episodeOfCare.patient.reference = string `Patient/${patientId}`;
        episodeOfCare.id = generateFhirResourceId();
    }

    return episodeOfCare;
}

public isolated function obxToObservation(hl7v2commons:Obx obx) returns international401:Observation {

    international401:Observation observation = {
        code: {},
        valueString: (obx.obx5[0].toString() != "") ? obx.obx5[0].toString() : (),
        dataAbsentReason: idToCodeableConcept(obx.obx11),
        status: "preliminary"
    };
    if obx is hl7v26:OBX|hl7v27:OBX|hl7v28:OBX {
        r4:CodeableConcept code = cweToCodeableConcept(obx.obx3);
        if code != {} {
            observation.code = code;
        }
        observation.effectiveDateTime = obx.obx14 != "" ? dtmToDateTime(obx.obx14) : ();
        r4:CodeableConcept method = cweToCodeableConcept(obx.obx17[0]);
        if method != {} {
            observation.method = method;
        }
    } else if obx is hl7v23:OBX|hl7v231:OBX|hl7v24:OBX|hl7v25:OBX|hl7v251:OBX {
        r4:CodeableConcept code = ceToCodeableConcept(obx.obx3);
        if code != {} {
            observation.code = code;
        }
        observation.effectiveDateTime = (obx.obx14.ts1 != "") ? tsToDateTime(obx.obx14) : ();
        r4:CodeableConcept method = ceToCodeableConcept(obx.obx17[0]);
        if method != {} {
            observation.method = method;
        }
    }
    return observation;
};

public isolated function obrToDiagnosticReport(hl7v2commons:Obr obr) returns international401:DiagnosticReport {
    r4:CodeableConcept code = {};
    international401:DiagnosticReport diagnosticReport = {
        code: code,
        category: idToCodeableConceptArray(obr.obr24),
        status: idToDiagnosticReportStatus(obr.obr25)
    };
    if obr is hl7v26:OBR|hl7v27:OBR|hl7v28:OBR {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(obr.obr4);
        if cweToCodeableConceptResult != {} {
            diagnosticReport.code = cweToCodeableConceptResult;
        }
        diagnosticReport.effectiveDateTime = dtmToDateTime(obr.obr7);
        diagnosticReport.effectivePeriod.'start = dtmToDateTime(obr.obr7);
        diagnosticReport.effectivePeriod.end = dtmToDateTime(obr.obr8);
        diagnosticReport.issued = dtmToInstant(obr.obr22);
    } else if obr is hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR {
        r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(obr.obr4);
        if ceToCodeableConceptResult != {} {
            diagnosticReport.code = ceToCodeableConceptResult;
        }
        diagnosticReport.effectiveDateTime = tsToDateTime(obr.obr7);
        diagnosticReport.effectivePeriod.'start = tsToDateTime(obr.obr7);
        diagnosticReport.effectivePeriod.end = tsToDateTime(obr.obr8);
        diagnosticReport.issued = tsToInstant(obr.obr22);
    }
    r4:Identifier eiToIdentifierResult = eiToIdentifier((<hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR|hl7v26:OBR|hl7v27:OBR|hl7v28:OBR>obr).obr2);
    if eiToIdentifierResult != {} {
        diagnosticReport.subject.identifier = eiToIdentifierResult;
    }
    return diagnosticReport;
};

public function obrToServiceRequest(hl7v2commons:Obr obr) returns international401:ServiceRequest {
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
    if obr is hl7v26:OBR|hl7v27:OBR|hl7v28:OBR {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(obr.obr4);
        if cweToCodeableConceptResult != {} {
            serviceRequest.code = cweToCodeableConceptResult;
        }
        serviceRequest.occurrenceDateTime = dtmToDateTime(obr.obr6);
        serviceRequest.reasonCode = [cweToCodeableConcept(obr.obr31[0])];
    } else if obr is hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR {
        r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(obr.obr4);
        if ceToCodeableConceptResult != {} {
            serviceRequest.code = ceToCodeableConceptResult;
        }
        serviceRequest.occurrenceDateTime = tsToDateTime(obr.obr6);
        serviceRequest.reasonCode = [ceToCodeableConcept(obr.obr31[0])];
    }
    return serviceRequest;
};

public function orcToDiagnosticReport(hl7v2commons:Orc orc) returns international401:DiagnosticReport {
    // Identifier
    r4:Identifier[] identifierList = [];

    r4:Identifier id1 = {};
    r4:CodeableConcept tempCC = {coding: [eiToCoding(<hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
    identifierList.push({
        'type: tempCC
    });
    r4:CodeableConcept cc1 = {coding: [eiToCoding(<hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
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

    if orc is hl7v26:ORC|hl7v27:ORC|hl7v28:ORC {
        r4:uri? cweToUriResult = cweToUri(orc.orc16);
        if cweToUriResult is r4:uri {
            url = cweToUriResult;
        }
        valueCodeableConcept = cweToCodeableConcept(orc.orc16);
    } else if orc is hl7v23:ORC|hl7v231:ORC|hl7v24:ORC|hl7v25:ORC|hl7v251:ORC {
        r4:uri? ceToUriResult = ceToUri(orc.orc16);
        if ceToUriResult is r4:uri {
            url = ceToUriResult;
        }
        valueCodeableConcept = ceToCodeableConcept(orc.orc16);
    }

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

public isolated function orcToImmunization(hl7v2commons:Orc orc) returns international401:Immunization {
    // Identifier
    r4:Identifier[] identifierList = [];
    r4:Identifier id1 = {};

    r4:CodeableConcept tempCC = {coding: [eiToCoding(<hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
    identifierList.push({
        'type: tempCC
    });

    r4:CodeableConcept cc1 = {coding: [eiToCoding(<hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
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
    if orc is hl7v26:ORC|hl7v27:ORC|hl7v28:ORC {
        r4:dateTime? recordedDateResult = dtmToDateTime(orc.orc9);
        if recordedDateResult is r4:dateTime {
            immunization.recorded = recordedDateResult;
        }
    } else if orc is hl7v23:ORC|hl7v231:ORC|hl7v24:ORC|hl7v25:ORC|hl7v251:ORC {
        immunization.recorded = tsToDateTime(orc.orc9);
    }

    return immunization;
};
