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
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;
import ballerinax/health.hl7v231;
import ballerinax/health.hl7v24;
import ballerinax/health.hl7v25;
import ballerinax/health.hl7v251;
import ballerinax/health.hl7v26;
import ballerinax/health.hl7v27;
import ballerinax/health.hl7v28;
import ballerinax/health.fhir.r4 as r4;

# Parse a string to an HL7 message.
#
# + msg - HL7 message as a string
# + return - hl7v2:Message
public function stringToHl7(string msg) returns hl7:Message|error {
    hl7:Message hl7msg = check hl7:parse(msg);
    return hl7msg;
}

# Transform an HL7 message to FHIR.
#
# + hl7 - HL7 message as a string or an hl7v2:Message  
# + customMapper - Custom mapper implementation
# + return - FHIR Bundle as a json
public function v2ToFhir(string|hl7:Message hl7, SegmentToFhir? customMapper = ()) returns json|error {
    hl7:Message hl7msg;
    if (hl7 is string) {
        hl7msg = check stringToHl7(hl7);
    } else {
        hl7msg = hl7;
    }
    // SegmentToFhir mapperImpl = getMapperContext().getDefaultImpl();
    SegmentToFhir mapperImpl = defaultMapperImpl;
    if customMapper == () {
        return transformToFhir(hl7msg, mapperImpl);
    }
    foreach string key in customMapper.keys() {
        if customMapper.get(key) != () {
            //binding the custom mapping functions
            mapperImpl[key] = customMapper.get(key);
        }
    }
    return transformToFhir(hl7msg, mapperImpl);
}

// --------------------------------------------------------------------------------------------#
// Source HL7 Version 2 to FHIR - Segment Maps
// URL: https://build.fhir.org/ig/HL7/v2-to-fhir/branches/master/segment_maps.html
// --------------------------------------------------------------------------------------------#
# Transform an HL7 segment to FHIR.
#
# + segmentName - Name of the HL7 segment  
# + segment - HL7 segment  
# + customMapper - Custom mapper implementation
# + return - FHIR Bundle
public function segmentToFhir(string segmentName, hl7:Segment segment, SegmentToFhir? customMapper) returns r4:BundleEntry[] {
    r4:BundleEntry[] entries = [];
    SegmentToFhir impl = customMapper != () ? customMapper : defaultMapperImpl;
    match segmentName {
        "NK1" => {
            Nk1ToPatient? nk1ToPatient = impl.nk1ToPatient;
            if nk1ToPatient is Nk1ToPatient {
                entries.push({'resource: nk1ToPatient(check segment.ensureType(Nk1))});
            }
        }
        "PD1" => {
            Pd1ToPatient? pd1ToPatient = impl.pd1ToPatient;
            if pd1ToPatient is Pd1ToPatient {
                entries.push({'resource: pd1ToPatient(check segment.ensureType(Pd1))});
            }
        }
        "PID" => {
            PidToPatient? pidToPatient = impl.pidToPatient;
            if pidToPatient is PidToPatient {
                entries.push({'resource: pidToPatient(check segment.ensureType(Pid))});
            }
        }
        "PV1" => {
            Pv1ToPatient? pv1ToPatientResult = impl.pv1ToPatient;
            if pv1ToPatientResult is Pv1ToPatient {
                entries.push({'resource: pv1ToPatientResult(check segment.ensureType(Pv1))});
            }
            Pv1ToEncounter? pv1ToEncounterResult = impl.pv1ToEncounter;
            if pv1ToEncounterResult is Pv1ToEncounter {
                entries.push({'resource: pv1ToEncounterResult(check segment.ensureType(Pv1))});
            }
        }
        "DG1" => {
            Dg1ToCondition? dg1ToCondition = impl.dg1ToCondition;
            if dg1ToCondition is Dg1ToCondition {
                entries.push({'resource: dg1ToCondition(check segment.ensureType(Dg1))});
            }
        }
        "AL1" => {
            Al1ToAllerygyIntolerance? al1ToAllerygyIntolerance = impl.al1ToAllerygyIntolerance;
            if al1ToAllerygyIntolerance is Al1ToAllerygyIntolerance {
                entries.push({'resource: al1ToAllerygyIntolerance(check segment.ensureType(Al1))});
            }
        }
        "EVN" => {
            EvnToProvenance? evnToProvenance = impl.evnToProvenance;
            if evnToProvenance is EvnToProvenance {
                entries.push({'resource: evnToProvenance(check segment.ensureType(Evn))});
            }
        }
        "MSH" => {
            MshToMessageHeader? mshToMessageHeader = impl.mshToMessageHeader;
            if mshToMessageHeader is MshToMessageHeader {
                entries.push({'resource: mshToMessageHeader(check segment.ensureType(Msh))});
            }
        }
        "PV2" => {
            Pv2ToEncounter? pv2ToEncounter = impl.pv2ToEncounter;
            if pv2ToEncounter is Pv2ToEncounter {
                entries.push({'resource: pv2ToEncounter(check segment.ensureType(Pv2))});
            }
        }
        "OBX" => {
            ObxToObservation? obxToObservation = impl.obxToObservation;
            if obxToObservation is ObxToObservation {
                entries.push({'resource: obxToObservation(check segment.ensureType(Obx))});
            }
        }
        "ORC" => {
            OrcToImmunization? orcToImmunization = impl.orcToImmunization;
            if orcToImmunization is OrcToImmunization {
                entries.push({'resource: orcToImmunization(check segment.ensureType(Orc))});
            }
        }
        "OBR" => {
            ObrToDiagnosticReport? obrToDiagnosticReport = impl.obrToDiagnosticReport;
            if obrToDiagnosticReport is ObrToDiagnosticReport {
                entries.push({'resource: obrToDiagnosticReport(check segment.ensureType(Obr))});
            }
        }
    } on fail var e {
        log:printError(string `Error while transforming segment ${segmentName} to FHIR : ${e.detail().toString()}`, e, e.stackTrace());
    }
    return entries;
}

public function mshToMessageHeader(Msh msh) returns r4:MessageHeader => {
    'source: hdToMessageHeaderSource(msh.msh3),
    destination: [hdToMessageHeaderDestination(msh.msh5)],
    eventCoding: (msh.msh9 is hl7v23:CM_MSG) ? msgToCoding(<hl7v23:CM_MSG>msh.msh9) : {},
    language: (msh.msh19 is hl7v26:CWE|hl7v27:MSH|hl7v28:MSH) ? cweToCode(<hl7v26:CWE>msh.msh19) : ceToCode(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>msh.msh19),
    eventUri: ""
};

// --- Patient Administation
public function al1ToAllerygyIntolerance(Al1 al1) returns r4:AllergyIntolerance {
    r4:Coding[] coding = [
        {
            code: al1.al11.toString(),
            system: al1.al11.toString()
        }
    ];

    r4:AllergyIntoleranceReaction[] allergyIntoleranceReaction = [];
    string onset = "";
    onset = al1.al16;
    if al1.al15 is hl7v23:ST {
        allergyIntoleranceReaction = [
            {
                manifestation: [
                    {
                        text: <hl7v23:ST>al1.al15
                    }
                ],
                onset: onset
            }
        ];
    } else if al1.al15 is hl7v231:ST[] {
        foreach hl7v231:ST reaction in <hl7v231:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    } else if al1.al15 is hl7v24:ST[] {
        foreach hl7v24:ST reaction in <hl7v24:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    } else if al1.al15 is hl7v25:ST[] {
        foreach hl7v25:ST reaction in <hl7v25:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    } else if al1.al15 is hl7v251:ST[] {
        foreach hl7v251:ST reaction in <hl7v251:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    } else if al1.al15 is hl7v26:ST[] {
        foreach hl7v26:ST reaction in <hl7v26:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    } else if al1.al15 is hl7v27:ST[] {
        foreach hl7v27:ST reaction in <hl7v27:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    } else if al1.al15 is hl7v28:ST[] {
        foreach hl7v28:ST reaction in <hl7v28:ST[]>al1.al15 {
            allergyIntoleranceReaction.push({
                manifestation: [
                    {
                        text: reaction
                    }
                ],
                onset: onset
            });
        }
    }
    r4:AllergyIntolerance allergyIntolerance = {
        clinicalStatus: {
            coding: coding
        },
        // category: [V2ToFHIR_GetAllergyIntoleranceCategory(al1.al12)],
        code: (al1 is hl7v26:AL1|hl7v27:AL1|hl7v28:AL1) ? cweToCodeableConcept(<hl7v26:CWE|hl7v27:CWE|hl7v28:CWE>al1.al13) : ceToCodeableConcept(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>al1.al13),
        // criticality: V2ToFHIR_GetAllergyIntoleranceCriticality(al1.al14),
        reaction: allergyIntoleranceReaction,
        patient: {}
    };

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
public function evnToProvenance(Evn evn) returns r4:Provenance {
    r4:Coding[] coding = [
        {
            display: evn.name
        }
    ];
    r4:uri url = "";
    if evn is hl7v23:EVN|hl7v231:EVN|hl7v24:EVN|hl7v25:EVN|hl7v251:EVN|hl7v26:EVN {
        url = evn.evn4;
    } else if evn is hl7v27:EVN|hl7v28:EVN {
        url = evn.evn4.cwe1;
    }
    r4:Extension[] extension = [
        {
            url: url
        }
    ];
    r4:CodeableConcept[] reason = [
        {
            extension: extension
        }
    ];

    r4:ProvenanceAgent[] agent = [];
    if evn.evn5 is hl7v23:XCN {
        agent = [
            {
                who: xcnToReference(<hl7v23:XCN>evn.evn5)
            }
        ];
    } else if evn.evn5 is hl7v231:XCN[] {
        foreach hl7v231:XCN xcn in <hl7v231:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    } else if evn.evn5 is hl7v24:XCN[] {
        foreach hl7v24:XCN xcn in <hl7v24:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    } else if evn.evn5 is hl7v25:XCN[] {
        foreach hl7v25:XCN xcn in <hl7v25:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    } else if evn.evn5 is hl7v251:XCN[] {
        foreach hl7v251:XCN xcn in <hl7v251:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    } else if evn.evn5 is hl7v26:XCN[] {
        foreach hl7v26:XCN xcn in <hl7v26:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    } else if evn.evn5 is hl7v27:XCN[] {
        foreach hl7v27:XCN xcn in <hl7v27:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    } else if evn.evn5 is hl7v28:XCN[] {
        foreach hl7v28:XCN xcn in <hl7v28:XCN[]>evn.evn5 {
            agent.push({
                who: xcnToReference(xcn)
            });
        }
    }
    r4:instant recorded = "";
    r4:dateTime occurredDateTime = "";

    if evn is hl7v23:EVN|hl7v231:EVN|hl7v24:EVN|hl7v25:EVN|hl7v251:EVN {
        recorded = evn.evn2.ts1;
        occurredDateTime = evn.evn6.ts1;
    } else if evn is hl7v26:EVN|hl7v27:EVN|hl7v28:EVN {
        recorded = evn.evn2;
        occurredDateTime = evn.evn6;
    }

    r4:Provenance provenance = {
        activity: {
            coding: coding
        },
        recorded: recorded,
        reason: reason,
        meta: {
            extension: extension
        },
        agent: agent,
        occurredDateTime: (occurredDateTime != "") ? occurredDateTime : (),
        target: []
    };

    return provenance;
};

public function nk1ToPatient(Nk1 nk1) returns r4:Patient => {
    contact: nk1ToContact(nk1.nk12, nk1.nk14, nk1.nk15, nk1.nk16, nk1.nk17, nk1.nk18, nk1.nk19, nk1.nk113, nk1.nk115, nk1.nk130, nk1.nk131, nk1.nk132)
};

public function pd1ToPatient(Pd1 pd1) returns r4:Patient {
    r4:Reference[] generalPractitioner = [];
    r4:Extension[]? extension = [];
    if pd1 is hl7v27:PD1 {
        generalPractitioner = pd1ToGeneralPractitioner(pd1.pd13, pd1.pd14);
        extension = (pd1.pd16.cwe1 != "") ? pd1ToExtension(pd1.pd16.cwe1) : ();
    } else if pd1 is hl7v23:PD1|hl7v231:PD1|hl7v24:PD1|hl7v25:PD1|hl7v251:PD1|hl7v26:PD1 {
        generalPractitioner = pd1ToGeneralPractitioner(pd1.pd13, pd1.pd14);
        extension = (pd1.pd16 != "") ? pd1ToExtension(pd1.pd16) : ();
    }
    return {
        generalPractitioner: generalPractitioner,
        extension: extension
    };
};

public function pidToPatient(Pid pid) returns r4:Patient {
    r4:HumanName[] name = [];
    string birthDate = "";
    string deceasedDateTime = "";
    r4:PatientGender gender = r4:CODE_GENDER_UNKNOWN;

    if pid is hl7v23:PID|hl7v231:PID|hl7v24:PID|hl7v25:PID|hl7v251:PID {
        name = pidToPatientName(pid.pid5, pid.pid9);
        birthDate = pid.pid7.ts1;
        deceasedDateTime = pid.pid29.ts1;
        gender = pidToAdministrativeSex(pid.pid8);
    } else if pid is hl7v26:PID {
        name = pidToPatientName(pid.pid5, pid.pid9);
        birthDate = pid.pid7;
        deceasedDateTime = pid.pid29;
        gender = pidToAdministrativeSex(pid.pid8);
    } else if pid is hl7v27:PID|hl7v28:PID {
        name = pidToPatientName(pid.pid5, pid.pid9);
        birthDate = pid.pid7;
        deceasedDateTime = pid.pid29;
        gender = pidToAdministrativeSex(pid.pid8.cwe1);
    }
    r4:Patient patient = {
        name: name,
        birthDate: (birthDate != "") ? birthDate : (),
        gender: gender,
        address: pidToAddress(pid.pid12, pid.pid11),
        telecom: pidToPhoneNumber(pid.pid13, pid.pid14),
        communication: pidToPrimaryLanguage(pid.pid15),
        maritalStatus: {
            coding: (pid.pid16 != "") ? pidToMaritalStatus(pid.pid16) : ()
        },
        identifier: pidToSsnNumberIdentifier(pid.pid19),
        extension: (pid.pid23 != "") ? pidToBirthPlace(pid.pid23) : (),
        multipleBirthBoolean: (pid.pid24 != "") ? pidToMultipleBirthIndicator(pid.pid24) : (),
        multipleBirthInteger: (pid.pid25 != -1.0) ? pidToBirthOrder(pid.pid25) : (),
        deceasedDateTime: (deceasedDateTime != "") ? deceasedDateTime : (),
        deceasedBoolean: (pid.pid30 != "") ? pidToPatientDeathIndicator(pid.pid30) : ()
    };
    return patient;
};

public function pv1ToPatient(Pv1 pv1) returns r4:Patient {
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

public function pv1ToEncounter(Pv1 pv1) returns r4:Encounter {
    string location1Display = "";
    string location1Status = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        location1Display = pv1.pv13.pl1;
        location1Status = pv1.pv13.pl5;
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        location1Display = pv1.pv13.pl1.hd1;
    }
    location1Status = pv1.pv13.pl5;

    string location2Display = "";
    string location2Status = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        location2Display = pv1.pv16.pl1;
        location2Status = pv1.pv16.pl5;
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        location2Display = pv1.pv16.pl1.hd1;
    }
    location2Status = pv1.pv16.pl5;

    string location3Display = "";
    string location3Status = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        location3Display = pv1.pv111.pl1;
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        location3Display = pv1.pv111.pl1.hd1;
    }
    location3Status = pv1.pv111.pl5;

    string location4Display = "";
    string location4Status = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        location4Display = pv1.pv142.pl1;
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        location4Display = pv1.pv142.pl1.hd1;
    }
    location4Status = pv1.pv142.pl5;

    string location5Display = "";
    string location5Status = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        location5Display = pv1.pv143.pl1;
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        location5Display = pv1.pv143.pl1.hd1;
    }
    location5Status = pv1.pv143.pl5;

    r4:EncounterLocation[] location = [
        {
            location: {
                display: location1Display != "" ? location1Display : ()
            },
            status: location1Status != "" ? <r4:EncounterLocationStatus>location1Status : ()
        },
        {
            location: {
                display: location2Display != "" ? location2Display : ()
            },
            status: location2Status != "" ? <r4:EncounterLocationStatus>location2Status : ()
        },
        {
            location: {
                display: location3Display != "" ? location3Display : ()
            },
            status: location3Status != "" ? <r4:EncounterLocationStatus>location3Status : ()
        },
        {
            location: {
                display: location4Display != "" ? location4Display : ()
            },
            status: location4Status != "" ? <r4:EncounterLocationStatus>location4Status : ()
        },
        {
            location: {
                display: location5Display != "" ? location5Display : ()
            },
            status: location5Status != "" ? <r4:EncounterLocationStatus>location5Status : ()
        }
    ];

    r4:EncounterParticipant[] participants = [];

    int i = 0;
    while i < pv1.pv17.length() {
        string system = "";
        string code = pv1.pv17[i].xcn10;
        string display = pv1.pv17[i].xcn10;
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv17[i].xcn8.cwe1;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv17[i].xcn8;
        }

        participants.push({
            individual: {
                display: pv1.pv17[i].xcn1
            },
            'type: [
                {
                    coding: [
                        {
                            code: code != "" ? code : (),
                            system: system != "" ? system : (),
                            display: display != "" ? display : ()
                        }
                    ]
                }
            ]
        });
        i = +1;
    }
    i = 0;
    while i < pv1.pv18.length() {
        string system = "";
        string code = pv1.pv18[i].xcn10;
        string display = pv1.pv18[i].xcn10;
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv18[i].xcn8.cwe1;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv18[i].xcn8;
        }
        participants.push({
            individual: {
                display: pv1.pv18[i].xcn1
            },
            'type: [
                {
                    coding: [
                        {
                            code: code != "" ? code : (),
                            system: system != "" ? system : (),
                            display: display != "" ? display : ()
                        }
                    ]
                }
            ]
        });
        i = +1;
    }
    i = 0;
    while i < pv1.pv19.length() {
        string system = "";
        string code = pv1.pv19[i].xcn10;
        string display = pv1.pv19[i].xcn10;
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv19[i].xcn8.cwe1;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv19[i].xcn8;
        }
        participants.push({
            individual: {
                display: pv1.pv19[i].xcn1
            },
            'type: [
                {
                    coding: [
                        {
                            code: code != "" ? code : (),
                            system: system != "" ? system : (),
                            display: display != "" ? display : ()
                        }
                    ]
                }
            ]
        });
        i = +1;
    }
    i = 0;
    while i < pv1.pv117.length() {
        string system = "";
        string code = pv1.pv17[i].xcn10;
        string display = pv1.pv17[i].xcn10;
        if pv1 is hl7v27:PV1|hl7v28:PV1 {
            system = pv1.pv17[i].xcn8.cwe1;
        } else if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
            system = pv1.pv17[i].xcn8;
        }
        participants.push({
            individual: {
                display: pv1.pv117[i].xcn1
            },
            'type: [
                {
                    coding: [
                        {
                            code: code != "" ? code : (),
                            system: system != "" ? system : (),
                            display: display != "" ? display : ()
                        }
                    ]
                }
            ]
        });
        i = +1;
    }

    if pv1 is hl7v23:PV1 {
        participants.push({
            individual: {
                display: pv1.pv152.xcn1
            },
            'type: [
                {
                    coding: [
                        {
                            code: "PART",
                            system: pv1.pv152.xcn8
                        }
                    ],
                    text: "Participation"
                }
            ]
        });
    } else if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        // Define pv1.pv152 hl7v27:PV1, hl7v28:PV1
        i = 0;
        while i < pv1.pv152.length() {
            participants.push({
                individual: {
                    display: pv1.pv117[i].xcn1
                },
                'type: [
                    {
                        coding: [
                            {
                                code: "PART",
                                system: pv1.pv152[i].xcn8,
                                display: "Participation"
                            }
                        ]
                    }
                ]
            });
            i = +1;
        }
    }

    r4:Coding 'class = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        'class = {
            display: pv1.pv12
        };
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        'class = cweToCoding(pv1.pv12);
    }

    r4:CodeableConcept 'type = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        'type = {
            text: pv1.pv14
        };
    }
    if pv1 is hl7v27:PV1|hl7v28:PV1 {
        'type = cweToCodeableConcept(pv1.pv14);
    }

    r4:CodeableConcept reAdmission = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        reAdmission = {
            text: pv1.pv113
        };
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        reAdmission = cweToCodeableConcept(pv1.pv113);
    }

    r4:CodeableConcept admitSource = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1|hl7v26:PV1 {
        admitSource = {
            text: pv1.pv114
        };
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        admitSource = cweToCodeableConcept(pv1.pv114);
    }

    r4:CodeableConcept dischargeDisposition = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        dischargeDisposition = {
            text: pv1.pv136
        };
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        dischargeDisposition = cweToCodeableConcept(pv1.pv136);
    }

    r4:Reference destination = {};
    if pv1 is hl7v23:PV1 {
        destination = {
            reference: pv1.pv137.cm_dld1
        };
    } else if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        destination = {
            reference: pv1.pv137.dld1
        };
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        destination = {
            reference: pv1.pv137.dld1.cwe2
        };
    }

    r4:CodeableConcept dietPreference = {};
    if pv1 is hl7v23:PV1 {
        dietPreference = {
            text: pv1.pv138
        };
    } else if pv1 is hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        dietPreference = ceToCodeableConcept(pv1.pv138);
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        dietPreference = cweToCodeableConcept(pv1.pv138);
    }

    r4:CodeableConcept serviceType = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        serviceType = {
            text: pv1.pv110
        };
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        serviceType = cweToCodeableConcept(pv1.pv110);
    }

    r4:CodeableConcept specialCourtesy = {};
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        specialCourtesy = {
            text: pv1.pv116
        };
    } else if pv1 is hl7v27:PV1|hl7v28:PV1 {
        specialCourtesy = cweToCodeableConcept(pv1.pv116);
    }

    r4:Identifier[] identifier = [];
    identifier.push({
        value: pv1.pv119.cx1,
        'type: {
            coding: [
                {
                    system: pv1.pv119.cx4.hd1,
                    code: pv1.pv119.cx5
                }
            ],
            text: pv1.pv119.cx1
        }
    });
    identifier.push({
        value: pv1.pv150.cx1,
        'type: {
            coding: [
                {
                    system: pv1.pv150.cx4.hd1,
                    code: pv1.pv150.cx5
                }
            ],
            text: pv1.pv150.cx1
        }
    });

    string periodStart = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1|hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        periodStart = pv1.pv144.ts1;
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        periodStart = pv1.pv144;
    }

    string periodEnd = "";
    if pv1 is hl7v23:PV1|hl7v231:PV1 {
        periodEnd = pv1.pv145.ts1;
    } else if pv1 is hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        periodEnd = pv1.pv145[0].ts1;
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        periodEnd = pv1.pv145;
    }

    r4:EncounterStatusHistoryStatus status = "in-progress";
    if pv1 is hl7v23:PV1|hl7v231:PV1 {
        if pv1.pv145.ts1 != "" {
            status = "finished";
        }
    } else if pv1 is hl7v24:PV1|hl7v25:PV1|hl7v251:PV1 {
        if pv1.pv145.length() > 0 {
            status = "finished";
        }
    } else if pv1 is hl7v26:PV1|hl7v27:PV1|hl7v28:PV1 {
        if pv1.pv145 != "" {
            status = "finished";
        }
    }

    r4:Reference[] episodeOfCare = [];
    if pv1 is hl7v27:PV1|hl7v28:PV1 {
        episodeOfCare.push({
            reference: pv1.pv154.cx1
        });
    }

    r4:Encounter encounter = {
        location: location,
        participant: participants,
        'class: 'class,
        status: status,
        'type: ['type],
        hospitalization: {
            preAdmissionIdentifier: {
                value: pv1.pv15.cx1,
                assigner: {
                    display: pv1.pv15.cx4.hd1
                }
            },
            reAdmission: reAdmission,
            admitSource: admitSource,
            dischargeDisposition: dischargeDisposition,
            destination: destination,
            dietPreference: [dietPreference],
            specialCourtesy: [specialCourtesy]
        },
        serviceType: serviceType,
        identifier: identifier,
        period: {
            'start: periodStart,
            end: periodEnd
        },
        episodeOfCare: episodeOfCare
    };

    return encounter;
};

public function pv2ToEncounter(Pv2 pv2) returns r4:Encounter {
    string display = "";
    if pv2 is hl7v23:PV2|hl7v231:PV2|hl7v24:PV2|hl7v25:PV2|hl7v251:PV2|hl7v26:PV2 {
        display = pv2.pv21.pl1;
    } else if pv2 is hl7v27:PV2|hl7v28:PV2 {
        display = pv2.pv21.pl1.hd1;
    }
    r4:EncounterLocation[] location = [
        {
            location: {
                display: display // TODO: location need to mapped correctly
            }
        }
    ];

    r4:Coding[] coding = [idToCoding(pv2.pv222)];

    r4:EncounterParticipant[] participant = []; // TODO: participant need to mapped correctly
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

    r4:Encounter encounter = {
        location: location,
        reasonCode: ceToCodeableConcepts(pv2.pv23),
        length: {
            value: <decimal>pv2.pv211
        },
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

    return encounter;
};

// --- Financial Management ---
public function dg1ToCondition(Dg1 dg1) returns r4:Condition {
    r4:CodeableConcept code = {};
    string onsetDateTime = "";
    string recordedDate = "";
    if dg1 is hl7v26:DG1|hl7v27:DG1|hl7v28:DG1 {
        code = cweToCodeableConcept(dg1.dg13);
        onsetDateTime = dg1.dg15;
        recordedDate = dg1.dg119;
    } else if dg1 is hl7v23:DG1|hl7v231:DG1|hl7v24:DG1|hl7v25:DG1|hl7v251:DG1 {
        code = ceToCodeableConcept(dg1.dg13);
        onsetDateTime = dg1.dg15.ts1;
        recordedDate = dg1.dg119.ts1;
    }
    return {
        code: code,
        onsetDateTime: (onsetDateTime != "") ? onsetDateTime : (),
        recordedDate: (recordedDate != "") ? recordedDate : (),
        subject: {}
    };
}

public function obxToObservation(Obx obx) returns r4:Observation {
    r4:CodeableConcept code = {};
    r4:dateTime effectiveDateTime = "";
    r4:CodeableConcept method = {};
    if obx is hl7v26:OBX|hl7v27:OBX|hl7v28:OBX {
        code = cweToCodeableConcept(obx.obx3);
        effectiveDateTime = dtmToDateTime(obx.obx14);
        method = cweToCodeableConcept(obx.obx17[0]);
    } else if obx is hl7v23:OBX|hl7v231:OBX|hl7v24:OBX|hl7v25:OBX|hl7v251:OBX {
        code = ceToCodeableConcept(obx.obx3);
        effectiveDateTime = tsToDateTime(obx.obx14);
        method = ceToCodeableConcept(obx.obx17[0]);
    }

    string? valueString = obx.obx5[0].toString();
    return {
        code: code,
        valueString: valueString,
        dataAbsentReason: idToCodeableConcept(obx.obx11),
        effectiveDateTime: effectiveDateTime,
        method: method,
        status: "preliminary"
    };
};

public function obrToDiagnosticReport(Obr obr) returns r4:DiagnosticReport {
    r4:CodeableConcept code = {};
    r4:dateTime effectiveDateTime = "";
    r4:dateTime effectivePeriodStart = "";
    r4:dateTime effectivePeriodEnd = "";
    r4:dateTime issued = "";

    if obr is hl7v26:OBR|hl7v27:OBR|hl7v28:OBR {
        code = cweToCodeableConcept(obr.obr4);
        effectiveDateTime = dtmToDateTime(obr.obr7);
        effectivePeriodStart = dtmToDateTime(obr.obr7);
        effectivePeriodEnd = dtmToDateTime(obr.obr8);
        issued = dtmToInstant(obr.obr22);
    } else if obr is hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR {
        code = ceToCodeableConcept(obr.obr4);
        effectiveDateTime = tsToDateTime(obr.obr7);
        effectivePeriodStart = tsToDateTime(obr.obr7);
        effectivePeriodEnd = tsToDateTime(obr.obr8);
        issued = tsToInstant(obr.obr22);
    }

    r4:DiagnosticReport diagnosticReport = {
        code: code,
        effectiveDateTime: effectiveDateTime,
        effectivePeriod: {
            'start: effectivePeriodStart,
            end: effectivePeriodEnd
        },
        issued: issued,
        category: idToCodeableConceptArray(obr.obr24),
        status: idToDiagnosticReportStatus(obr.obr25)
    };
    if obr is hl7v23:OBR {
        diagnosticReport.subject.identifier = eiToIdentifier((<hl7v23:OBR>obr).obr2[0]);
    } else if obr is hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR|hl7v26:OBR|hl7v27:OBR|hl7v28:OBR {
        diagnosticReport.subject.identifier = eiToIdentifier((<hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR|hl7v26:OBR|hl7v27:OBR|hl7v28:OBR>obr).obr2);
    }
    return diagnosticReport;
};

public function obrToServiceRequest(Obr obr) returns r4:ServiceRequest {
    r4:CodeableConcept code = {};
    r4:dateTime occurrenceDateTime = "";
    r4:CodeableConcept reasonCode = {};
    if obr is hl7v26:OBR|hl7v27:OBR|hl7v28:OBR {
        code = cweToCodeableConcept(obr.obr4);
        occurrenceDateTime = dtmToDateTime(obr.obr6);
        reasonCode = cweToCodeableConcept(obr.obr31[0]);
    } else if obr is hl7v23:OBR|hl7v231:OBR|hl7v24:OBR|hl7v25:OBR|hl7v251:OBR {
        code = ceToCodeableConcept(obr.obr4);
        occurrenceDateTime = tsToDateTime(obr.obr6);
        reasonCode = ceToCodeableConcept(obr.obr31[0]);
    }

    return {
        intent: nameToServiceRequestIntent(obr.name),
        identifier: [eiToIdentifier(obr.obr3)],
        code: code,
        priority: idToServiceRequestPriority(obr.obr5),
        occurrenceDateTime: occurrenceDateTime,
        requester: xcnToReference(obr.obr16[0]),
        // basedOn: obr.obr29,
        reasonCode: [reasonCode],
        status: "unknown",
        subject: {}
    };
};

public function orcToDiagnosticReport(Orc orc) returns r4:DiagnosticReport {
    // Identifier
    r4:Identifier[] identifierList = [];

    r4:Identifier id1 = {};
    if orc.orc2 is hl7v23:EI[] {
        foreach var item in <hl7v23:EI[]>orc.orc2 {
            r4:CodeableConcept tempCC = {coding: [eiToCoding(item)]};
            identifierList.push({
                'type: tempCC
            });
            r4:CodeableConcept cc1 = {coding: [eiToCoding(item)]};
            id1 = {
                'type: cc1
            };
        }
    } else if orc.orc2 is hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI {
        r4:CodeableConcept tempCC = {coding: [eiToCoding(<hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
        identifierList.push({
            'type: tempCC
        });
        r4:CodeableConcept cc1 = {coding: [eiToCoding(<hl7v23:EI|hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
        id1 = {
            'type: cc1
        };
    }

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
        url = cweToUri(orc.orc16);
        valueCodeableConcept = cweToCodeableConcept(orc.orc16);
    } else if orc is hl7v23:ORC|hl7v231:ORC|hl7v24:ORC|hl7v25:ORC|hl7v251:ORC {
        url = ceToUri(orc.orc16);
        valueCodeableConcept = ceToCodeableConcept(orc.orc16);
    }

    // Extensions
    r4:Extension[] ext = [
        {
            url: url,
            valueCodeableConcept: valueCodeableConcept
        }
    ];

    r4:DiagnosticReport diagnosticReport = {
        identifier: [...identifierList, id1, eiToIdentifier(orc.orc3), id2, eiToIdentifier(orc.orc3), id3],
        extension: ext,
        code: {},
        status: "partial"
    };

    return diagnosticReport;
};

public function orcToImmunization(Orc orc) returns r4:Immunization {
    // Identifier
    r4:Identifier[] identifierList = [];
    r4:Identifier id1 = {};

    if orc.orc2 is hl7v23:EI[] {
        foreach var item in <hl7v23:EI[]>orc.orc2 {
            r4:CodeableConcept tempCC = {coding: [eiToCoding(item)]};

            identifierList.push({
                'type: tempCC
            });

            r4:CodeableConcept cc1 = {coding: [eiToCoding(item)]};
            id1 = {
                'type: cc1
            };
        }
    } else if orc.orc2 is hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI {
        r4:CodeableConcept tempCC = {coding: [eiToCoding(<hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
        identifierList.push({
            'type: tempCC
        });

        r4:CodeableConcept cc1 = {coding: [eiToCoding(<hl7v231:EI|hl7v24:EI|hl7v25:EI|hl7v251:EI|hl7v26:EI|hl7v27:EI|hl7v28:EI>orc.orc2)]};
        id1 = {
            'type: cc1
        };
    }

    r4:CodeableConcept cc2 = {coding: [eiToCoding(orc.orc3)]};

    r4:Identifier id2 = {
        'type: cc2
    };

    // performer
    r4:ImmunizationPerformer[] immunizationPerformer = [
        {
            actor: xcnToReference(orc.orc12[0]),
            'function: xcnToCodeableConcept(orc.orc12[0])
        }
    ];

    r4:dateTime recorded = "";

    if orc is hl7v26:ORC|hl7v27:ORC|hl7v28:ORC {
        recorded = dtmToDateTime(orc.orc9);
    } else if orc is hl7v23:ORC|hl7v231:ORC|hl7v24:ORC|hl7v25:ORC|hl7v251:ORC {
        recorded = tsToDateTime(orc.orc9);
    }

    r4:Immunization immunization = {
        identifier: [...identifierList, id1, eiToIdentifier(orc.orc3), id2],
        recorded: recorded,
        performer: immunizationPerformer,
        occurrenceDateTime: "",
        occurrenceString: "",
        patient: {},
        status: "not-done",
        vaccineCode: {}
    };

    return immunization;
};
