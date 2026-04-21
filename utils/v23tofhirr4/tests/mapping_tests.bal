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

import ballerina/http;
import ballerina/lang.runtime;
import ballerina/test;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

final string msg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01^ADT_A01|MSG00001|P|2.3||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL~123456789^^^USSSA^SS||" +
"BATMAN^ADAM^A^III||19610615|M||C|2222 HOME STREET^^GREENSBORO^NC^27401-1020|GL|" +
"(555) 555-2004|(555)555-2004||S||PATID12345001^2^M10^ADT1^AN^A|444333333|987654^NC|" +
"\rNK1|1|NUCLEAR^NELDA^W|SPO^SPOUSE||||NK^NEXT OF KIN$\rPV1|1|I|2000^2012^01||||" +
"004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

http:Listener customHl7ServiceListener = check new (9091);

@test:BeforeGroups {value: ["g1"]}
function setup() returns error? {
    check customHl7ServiceListener.attach(customMapperService, "v2tofhir");
    check customHl7ServiceListener.'start();
    runtime:registerListener(customHl7ServiceListener);
}

@test:AfterGroups {value: ["g1"]}
function cleanUp() returns error? {
    check customHl7ServiceListener.gracefulStop();
    runtime:deregisterListener(customHl7ServiceListener);
}

@test:Config {}
function hlStringMessageParseTest() {
    hl7:Message|error parsedMsg = stringToHl7(msg);
    if parsedMsg is hl7:Message {
        test:assertEquals(parsedMsg.name, "ADT_A01", "Parsing issue occurred with the message");
    } else {
        test:assertFail("Parsing failed.");
    }
}

@test:Config {}
function v2toFhirTransformTest() {
    json|error adtToFhirBundle = v2ToFhir(msg);
    if adtToFhirBundle is json {
        test:assertFalse(containsEmptyFields(adtToFhirBundle),
            "Transformed bundle contains empty strings/objects/arrays");
        r4:Bundle|error resultantBundle = adtToFhirBundle.cloneWithType(r4:Bundle);
        if resultantBundle is r4:Bundle {
            r4:BundleEntry[] entries = resultantBundle.entry ?: [];
            // MSH(1) + EVN→Provenance(1) + MSH→Provenance-Operator(1) [EVN-5 empty, MSH-4 valued]
            // + PID(1) + NK1→RelatedPerson(1) + NK1→Patient(1) + PV1→Encounter(1) = 7
            // PV1-20 not valued → Coverage omitted (IG dependsOn condition)
            test:assertEquals(entries.length(), 7, "Transforming issue occurred with the message");

        } else {
            test:assertFail("ADT_A01 msg to FHIR transforming failed.");
        }
    } else {
        test:assertFail("ADT_A01 msg to FHIR transforming failed.");
    }
}

function containsEmptyFields(json value) returns boolean {
    if value is string {
        return value == "";
    }

    if value is json[] {
        if value.length() == 0 {
            return true;
        }
        foreach json item in value {
            if containsEmptyFields(item) {
                return true;
            }
        }
        return false;
    }

    if value is map<json> {
        if value.keys().length() == 0 {
            return true;
        }
        foreach string key in value.keys() {
            if containsEmptyFields(value[key]) {
                return true;
            }
        }
    }

    return false;
}

@test:Config {groups: ["g1"]}
function v2toFhirTransformWithCustomService() {
    V2ToFhirCustomMapperServiceConfig config = {
        baseUrl: "http://localhost:9091/v2tofhir",
        segmentMappings: {
            "NK1": "/segment/nk1"
        }
    };
    json|error adtToFhirBundle = v2ToFhir(msg, mapperServiceConf = config);
    if adtToFhirBundle is json {
        r4:Bundle|error resultantBundle = adtToFhirBundle.cloneWithType(r4:Bundle);
        if resultantBundle is r4:Bundle {
            r4:BundleEntry[] entries = resultantBundle.entry ?: [];
            // NK1 is handled by custom service (1 entry), PV1 now also maps to Coverage (+1)
            test:assertEquals(entries.length(), 6, "Transforming issue occurred with the message");
            r4:BundleEntry nk1MappedEntry = entries[3];
            map<anydata> patientResource = <map<anydata>>nk1MappedEntry?.'resource;
            test:assertEquals(patientResource["resourceType"], "Patient");
            test:assertEquals(patientResource["id"], "example-id-1");
        } else {
            test:assertFail("ADT_A01 msg to FHIR transforming failed.");
        }
    } else {
        test:assertFail("ADT_A01 msg to FHIR transforming failed.");
    }
}

http:Service customMapperService = service object {
    resource function post segment/nk1(@http:Payload json nk1) returns json|error {
        return {
            "resourceType": "Patient",
            "id": "example-id-1",
            "text": {
                "status": "generated",
                "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n\t\t\t<table>\n\t\t\t\t<tbody>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Name</td>\n\t\t\t\t\t\t<td>Peter James \n              <b>Chalmers</b> (&quot;Jim&quot;)\n            </td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Address</td>\n\t\t\t\t\t\t<td>534 Erewhon, Pleasantville, Vic, 3999</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Contacts</td>\n\t\t\t\t\t\t<td>Home: unknown. Work: (03) 5555 6473</td>\n\t\t\t\t\t</tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td>Id</td>\n\t\t\t\t\t\t<td>MRN: 12345 (Acme Healthcare)</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</tbody>\n\t\t\t</table>\n\t\t</div>"
            },
            "identifier": [
                {
                    "use": "usual",
                    "type": {
                        "coding": [
                            {
                                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                                "code": "MR"
                            }
                        ]
                    },
                    "system": "urn:oid:1.2.36.146.595.217.0.1",
                    "value": "12345",
                    "period": {
                        "start": "2001-05-06"
                    },
                    "assigner": {
                        "display": "Acme Healthcare"
                    }
                }
            ],
            "active": true,
            "name": [
                {
                    "use": "official",
                    "family": "Chalmers",
                    "given": [
                        "Peter",
                        "James"
                    ]
                },
                {
                    "use": "usual",
                    "given": [
                        "Jim"
                    ]
                },
                {
                    "use": "maiden",
                    "family": "Windsor",
                    "given": [
                        "Peter",
                        "James"
                    ],
                    "period": {
                        "end": "2002"
                    }
                }
            ],
            "managingOrganization": {
                "reference": "Organization/1"
            }
        };
    }
};

// --------------------------------------------------------------------------------------------#
// New segment mapping tests
// --------------------------------------------------------------------------------------------#

@test:Config {}
function nk1ToRelatedPersonTest() {
    hl7v23:NK1 nk1 = {
        name: "NK1",
        nk11: "1",
        nk12: [{xpn1: "SMITH", xpn2: "JOHN", xpn5: "Dr."}],
        nk13: {ce1: "SPO", ce2: "Spouse"},
        nk14: [{xad1: "123 Main St", xad3: "Springfield", xad4: "IL", xad5: "62701"}],
        nk15: [{xtn1: "555-123-4567", xtn2: "PRN"}],
        nk115: "M",
        nk116: {ts1: "19800601"}
    };
    international401:RelatedPerson relatedPerson = nk1ToRelatedPerson(nk1);
    test:assertTrue(relatedPerson.name != (), "RelatedPerson should have name");
    r4:HumanName[] names = relatedPerson.name ?: [];
    test:assertEquals(names[0].family, "SMITH", "RelatedPerson family name should be SMITH");
    test:assertTrue(relatedPerson.relationship != (), "RelatedPerson should have relationship");
    test:assertEquals(relatedPerson.gender, "male", "RelatedPerson gender should be male");
    test:assertEquals(relatedPerson.birthDate, "1980-06-01", "RelatedPerson birthDate should be mapped");
}

@test:Config {}
function nteToObservationTest() {
    hl7v23:NTE nte = {
        name: "NTE",
        nte1: "1",
        nte2: "L",
        nte3: ["Patient reports chest pain at rest"]
    };
    international401:Observation observation = nteToObservation(nte);
    test:assertEquals(observation.status, "preliminary", "NTE Observation status should be preliminary");
    r4:Annotation[] notes = observation.note ?: [];
    test:assertTrue(notes.length() > 0, "NTE Observation should have notes");
    test:assertEquals(notes[0].text, "Patient reports chest pain at rest", "NTE comment should be mapped to note text");
}

@test:Config {}
function orcToServiceRequestTest() {
    hl7v23:ORC orc = {
        name: "ORC",
        orc1: "NW",
        orc2: {ei1: "PLACER-001"},
        orc3: {ei1: "FILLER-001"},
        orc12: [{xcn1: "DOC123", xcn2: "Smith", xcn3: "John"}]
    };
    international401:ServiceRequest serviceRequest = orcToServiceRequest(orc);
    test:assertEquals(serviceRequest.intent, "order", "ORC ServiceRequest intent should be order");
    test:assertEquals(serviceRequest.status, "unknown", "ORC ServiceRequest status should be unknown");
    r4:Identifier[] identifiers = serviceRequest.identifier ?: [];
    test:assertTrue(identifiers.length() >= 1, "ORC ServiceRequest should have identifiers");
    test:assertEquals(identifiers[0].value, "PLACER-001", "Placer ID should be mapped");
}

@test:Config {}
function obrToServiceRequestTest() {
    hl7v23:OBR obr = {
        name: "OBR",
        obr3: {ei1: "FILLER-OBR-001"},
        obr4: {ce1: "85025", ce2: "CBC with Differential", ce3: "LN"},
        obr5: "R",
        obr16: [{xcn1: "DOC456"}]
    };
    international401:ServiceRequest serviceRequest = obrToServiceRequest(obr);
    test:assertTrue(serviceRequest.code != (), "OBR ServiceRequest should have code");
    r4:CodeableConcept code = serviceRequest.code ?: {};
    r4:Coding[] codings = code.coding ?: [];
    test:assertTrue(codings.length() > 0, "OBR ServiceRequest code should have coding");
    test:assertEquals(codings[0].code, "85025", "OBR-4 code should be mapped");
}

@test:Config {}
function pr1ToProcedureTest() {
    hl7v23:PR1 pr1 = {
        name: "PR1",
        pr11: "1",
        pr13: {ce1: "80048", ce2: "Basic Metabolic Panel", ce3: "CPT"},
        pr14: "Basic Metabolic Panel",
        pr15: {ts1: "20230815"},
        pr16: "D"
    };
    international401:Procedure procedure = pr1ToProcedure(pr1);
    test:assertTrue(procedure.code != (), "PR1 Procedure should have code");
    r4:CodeableConcept code = procedure.code ?: {};
    r4:Coding[] codings = code.coding ?: [];
    test:assertEquals(codings[0].code, "80048", "PR1-3 code should be mapped");
    test:assertEquals(code.text, "Basic Metabolic Panel", "PR1-4 description should be mapped to code.text");
    test:assertEquals(procedure.performedDateTime, "2023-08-15", "PR1-5 date should be mapped");
    test:assertTrue(procedure.category != (), "PR1-6 should map to category");
}

@test:Config {}
function rxaToImmunizationTest() {
    hl7v23:RXA rxa = {
        name: "RXA",
        rxa1: "0",
        rxa2: "1",
        rxa3: {ts1: "20230901"},
        rxa4: {},
        rxa5: {ce1: "08", ce2: "Hepatitis B", ce3: "CVX"},
        rxa6: "1",
        rxa7: {ce1: "mL"},
        rxa10: {xcn1: "NURSE001", xcn2: "Jones", xcn3: "Mary"},
        rxa15: ["LOT12345"],
        rxa20: "CP"
    };
    international401:Immunization immunization = rxaToImmunization(rxa);
    test:assertEquals(immunization.status, "completed", "RXA Immunization status should be completed");
    r4:CodeableConcept vaccineCode = immunization.vaccineCode;
    r4:Coding[] codings = vaccineCode.coding ?: [];
    test:assertEquals(codings[0].code, "08", "RXA-5 vaccine code should be mapped");
    test:assertEquals(immunization.lotNumber, "LOT12345", "RXA-15 lot number should be mapped");
    test:assertEquals(immunization.occurrenceDateTime, "2023-09-01", "RXA-3 occurrence date should be mapped");
}

@test:Config {}
function rxoToMedicationRequestTest() {
    hl7v23:RXO rxo = {
        name: "RXO",
        rxo1: {ce1: "ASPIRIN", ce2: "Aspirin 81mg"},
        rxo2: "81",
        rxo3: "162",
        rxo4: {ce1: "mg"},
        rxo13: "3",
        rxo14: {xcn1: "PHYS001"}
    };
    international401:MedicationRequest medReq = rxoToMedicationRequest(rxo);
    test:assertEquals(medReq.intent, "original-order", "RXO MedicationRequest intent should be original-order");
    r4:CodeableConcept? medCode = medReq.medicationCodeableConcept;
    test:assertTrue(medCode != (), "RXO MedicationRequest should have medication code");
    test:assertTrue(medReq.dispenseRequest != (), "RXO dispense request should be mapped");
}

@test:Config {}
function rxrToImmunizationTest() {
    hl7v23:RXR rxr = {
        name: "RXR",
        rxr1: {ce1: "IM", ce2: "Intramuscular"},
        rxr2: {ce1: "LA", ce2: "Left Arm"}
    };
    international401:Immunization immunization = rxrToImmunization(rxr);
    test:assertTrue(immunization.route != (), "RXR-1 route should be mapped to Immunization.route");
    r4:CodeableConcept route = immunization.route ?: {};
    r4:Coding[] codings = route.coding ?: [];
    test:assertEquals(codings[0].code, "IM", "RXR-1 route code should be IM");
    test:assertTrue(immunization.site != (), "RXR-2 site should be mapped to Immunization.site");
}

@test:Config {}
function rxrToMedicationRequestTest() {
    hl7v23:RXR rxr = {
        name: "RXR",
        rxr1: {ce1: "PO", ce2: "Oral"},
        rxr2: {},
        rxr3: {},
        rxr4: {ce1: "CHEW", ce2: "Chew"}
    };
    international401:MedicationRequest medReq = rxrToMedicationRequest(rxr);
    r4:Dosage[] dosageInstructions = medReq.dosageInstruction ?: [];
    test:assertTrue(dosageInstructions.length() > 0, "RXR should map to dosageInstruction");
    r4:CodeableConcept? route = dosageInstructions[0].route;
    test:assertTrue(route != (), "RXR-1 route should map to dosageInstruction.route");
}

@test:Config {}
function schToAppointmentTest() {
    hl7v23:SCH sch = {
        name: "SCH",
        sch1: {ei1: "APT-001"},
        sch2: {ei1: "FILL-001"},
        sch7: {ce1: "ROUTINE", ce2: "Routine"},
        sch9: "30",
        sch12: {xcn1: "DOC789", xcn2: "Brown", xcn3: "Carol"},
        sch25: {ce1: "Complete"}
    };
    international401:Appointment appointment = schToAppointment(sch);
    test:assertTrue(appointment.identifier != (), "SCH Appointment should have identifiers");
    r4:Identifier[] ids = appointment.identifier ?: [];
    test:assertEquals(ids[0].value, "APT-001", "SCH-1 placer ID should be mapped");
    test:assertEquals(appointment.minutesDuration, 30, "SCH-9 duration should be mapped");
    test:assertEquals(appointment.status, "fulfilled", "SCH-25 Complete should map to fulfilled");
    test:assertTrue(appointment.participant.length() > 0, "SCH participants should be mapped");
}

@test:Config {}
function txaToDocumentReferenceTest() {
    hl7v23:TXA txa = {
        name: "TXA",
        txa1: "1",
        txa2: "DS",
        txa3: "TX",
        txa6: {ts1: "20230901120000"},
        txa9: {xcn1: "DOC001", xcn2: "Davis", xcn3: "Alan"},
        txa12: {ei1: "DOC-2023-001"},
        txa17: "AU",
        txa19: "AV",
        txa21: "Discharge Summary"
    };
    international401:DocumentReference docRef = txaToDocumentReference(txa);
    test:assertTrue(docRef.'type != (), "TXA-2 document type should be mapped");
    r4:CodeableConcept docType = docRef.'type ?: {};
    r4:Coding[] typeCodings = docType.coding ?: [];
    test:assertEquals(typeCodings[0].code, "DS", "TXA-2 document type code should be DS");
    test:assertEquals(docRef.docStatus, "final", "TXA-17 AU should map to docStatus final");
    test:assertEquals(docRef.status, "current", "TXA-19 AV should map to status current");
    test:assertEquals(docRef.description, "Discharge Summary", "TXA-21 should map to description");
    r4:Identifier? masterId = docRef.masterIdentifier;
    test:assertTrue(masterId != (), "TXA-12 should map to masterIdentifier");
    test:assertEquals(masterId?.value, "DOC-2023-001", "TXA-12 unique document ID should be mapped");
}

@test:Config {}
function rolToRelatedPersonTest() {
    hl7v23:ROL rol = {
        name: "ROL",
        rol1: {ei1: "ROLE-001"},
        rol3: {ce1: "GUARD", ce2: "Guardian"},
        rol4: {xcn1: "REL001", xcn2: "Wilson", xcn3: "Bob"},
        rol5: {ts1: "20200101"},
        rol6: {ts1: "20251231"}
    };
    international401:RelatedPerson relatedPerson = rolToRelatedPerson(rol);
    test:assertTrue(relatedPerson.identifier != (), "ROL-1 should map to identifier");
    test:assertTrue(relatedPerson.relationship != (), "ROL-3 should map to relationship");
    r4:CodeableConcept[] rel = relatedPerson.relationship ?: [];
    r4:Coding[] relCodings = rel[0].coding ?: [];
    test:assertEquals(relCodings[0].code, "GUARD", "ROL-3 code should be GUARD");
    test:assertTrue(relatedPerson.name != (), "ROL-4 should map to name");
    r4:HumanName[] names = relatedPerson.name ?: [];
    test:assertEquals(names[0].family, "Wilson", "ROL-4 family name should be Wilson");
    test:assertTrue(relatedPerson.period != (), "ROL-5/6 should map to period");
}

@test:Config {}
function msaToMessageHeaderTest() {
    hl7v23:MSA msa = {
        name: "MSA",
        msa1: "AA",
        msa2: "MSG00001",
        msa3: "Message accepted"
    };
    international401:MessageHeader msgHeader = msaToMessageHeader(msa);
    test:assertTrue(msgHeader.response != (), "MSA should produce a response in MessageHeader");
    international401:MessageHeaderResponse resp = msgHeader.response ?: {identifier: "", code: "ok"};
    test:assertEquals(resp.identifier, "MSG00001", "MSA-2 should map to response.identifier");
    test:assertEquals(resp.code, "ok", "MSA-1 AA should map to response.code ok");
}

@test:Config {}
function msaToMessageHeaderAeTest() {
    hl7v23:MSA msa = {
        name: "MSA",
        msa1: "AE",
        msa2: "MSG00002"
    };
    international401:MessageHeader msgHeader = msaToMessageHeader(msa);
    international401:MessageHeaderResponse resp = msgHeader.response ?: {identifier: "", code: "ok"};
    test:assertEquals(resp.code, "fatal-error", "MSA-1 AE should map to response.code fatal-error");
}

@test:Config {}
function mrgToAccountTest() {
    hl7v23:MRG mrg = {
        name: "MRG",
        mrg1: [{}],
        mrg2: [{}],
        mrg3: {cx1: "ACCT-12345", cx5: "AN"}
    };
    international401:Account account = mrgToAccount(mrg);
    test:assertEquals(account.status, "unknown", "MRG Account status should be unknown");
    r4:Identifier[] ids = account.identifier ?: [];
    test:assertTrue(ids.length() > 0, "MRG-3 should map to Account identifier");
    test:assertEquals(ids[0].value, "ACCT-12345", "MRG-3 account number should be mapped");
}

@test:Config {}
function in1ToCoverageTest() {
    hl7v23:IN1 in1 = {
        name: "IN1",
        in11: "1",
        in12: {ce1: "PLAN-001", ce2: "Medicare"},
        in14: [{xon1: "Medicare Insurance Co"}],
        in112: "20200101",
        in113: "20251231",
        in115: "Medicare",
        in117: "SE"
    };
    international401:Coverage coverage = in1ToCoverage(in1);
    test:assertEquals(coverage.status, "active", "IN1 Coverage status should be active");
    r4:Reference[] payors = coverage.payor;
    test:assertTrue(payors.length() > 0 && payors[0].display != (), "IN1-4 payor name should be mapped");
    test:assertEquals(payors[0].display, "Medicare Insurance Co", "IN1-4 payor should be mapped");
    test:assertTrue(coverage.period != (), "IN1-12/13 should map to period");
    test:assertTrue(coverage.'type != (), "IN1-15 plan type should be mapped");
    test:assertTrue(coverage.relationship != (), "IN1-17 relationship should be mapped");
}

@test:Config {}
function in3ToCareTeamTest() {
    hl7v23:IN3 in3 = {
        name: "IN3",
        in31: "1",
        in321: "Dr. Jane Smith"
    };
    international401:CareTeam careTeam = in3ToCareTeam(in3);
    test:assertTrue(careTeam.participant != (), "IN3-21 case manager should map to CareTeam participant");
}

@test:Config {}
function pv1ToCoverageTest() {
    hl7v23:PV1 pv1 = {
        name: "PV1",
        pv12: "I",
        pv120: [{fc1: "BC", fc2: {ts1: "20230101"}}]
    };
    international401:Coverage coverage = pv1ToCoverage(pv1);
    test:assertEquals(coverage.status, "active", "PV1 Coverage should be active");
    test:assertTrue(coverage.'type != (), "PV1-20 financial class should map to Coverage.type");
    r4:CodeableConcept covType = coverage.'type ?: {};
    r4:Coding[] codings = covType.coding ?: [];
    test:assertEquals(codings[0].code, "BC", "PV1-20 FC1 should be mapped as Coverage type code");
}

@test:Config {}
function aigToAppointmentTest() {
    hl7v23:AIG aig = {
        name: "AIG",
        aig1: "1",
        aig2: "A",
        aig3: {ce1: "RES-001", ce2: "Conference Room A"},
        aig4: {ce1: "ROOM", ce2: "Room"},
        aig8: {ts1: "20230901090000"}
    };
    international401:Appointment appointment = aigToAppointment(aig);
    test:assertEquals(appointment.status, "proposed", "AIG Appointment status should be proposed");
    test:assertTrue(appointment.participant.length() > 0, "AIG should map to participant");
    international401:AppointmentParticipant participant = appointment.participant[0];
    test:assertTrue(participant.'type != (), "AIG-4 resource type should map to participant type");
}

@test:Config {}
function ailToAppointmentTest() {
    hl7v23:AIL ail = {
        name: "AIL",
        ail1: "1",
        ail2: "A",
        ail3: {pl1: "EXAM-ROOM-2"},
        ail6: {ts1: "20230901100000"}
    };
    international401:Appointment appointment = ailToAppointment(ail);
    test:assertEquals(appointment.status, "proposed", "AIL Appointment status should be proposed");
    international401:AppointmentParticipant participant = appointment.participant[0];
    test:assertTrue(participant.actor != (), "AIL-3 location should map to actor");
    r4:Reference actor = participant.actor ?: {};
    test:assertEquals(actor.display, "EXAM-ROOM-2", "AIL-3 location ID should be mapped");
}

@test:Config {}
function aipToAppointmentTest() {
    hl7v23:AIP aip = {
        name: "AIP",
        aip1: "1",
        aip2: "A",
        aip3: {xcn1: "PRACT001", xcn2: "Taylor", xcn3: "Emma"},
        aip4: {ce1: "PHYS", ce2: "Physician"},
        aip6: {ts1: "20230901090000"},
        aip12: {ce1: "Accepted"}
    };
    international401:Appointment appointment = aipToAppointment(aip);
    international401:AppointmentParticipant participant = appointment.participant[0];
    test:assertTrue(participant.actor != (), "AIP-3 personnel should map to actor");
    test:assertEquals(participant.status, "accepted", "AIP-12 Accepted should map to status accepted");
}

@test:Config {}
function aisToAppointmentTest() {
    hl7v23:AIS ais = {
        name: "AIS",
        ais1: "1",
        ais2: "A",
        ais3: {ce1: "CONSULT", ce2: "Consultation"},
        ais10: {ce1: "Complete"}
    };
    international401:Appointment appointment = aisToAppointment(ais);
    test:assertEquals(appointment.status, "fulfilled", "AIS-10 Complete should map to fulfilled status");
    r4:CodeableConcept[]? serviceType = appointment.serviceType;
    test:assertTrue(serviceType != (), "AIS-3 should map to serviceType");
    r4:CodeableConcept[] types = serviceType ?: [];
    r4:Coding[] codings = types[0].coding ?: [];
    test:assertEquals(codings[0].code, "CONSULT", "AIS-3 service code should be CONSULT");
}

// =============================================================================
// Message-level mapping tests
// =============================================================================

@test:Config {}
function adtA01ToBundleTest() returns error? {
    hl7v23:ADT_A01 message = {
        name: "ADT_A01",
        msh: {name: "MSH", msh3: {hd1: "SENDER"}, msh4: {hd1: "FACILITY"}, msh9: {cm_msg1: "ADT", cm_msg2: "A01"}},
        evn: {name: "EVN", evn1: "A01", evn2: {ts1: "20230101120000"}},
        pid: {name: "PID", pid3: [{cx1: "P001"}], pid5: [{xpn1: "Smith", xpn2: "John"}], pid7: {ts1: "19800101"}},
        pv1: {name: "PV1", pv12: "I", pv17: [{xcn1: "D001", xcn2: "Jones"}]}
    };
    r4:Bundle bundle = check adtA01ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A01 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 3, "ADT_A01 should produce at least MessageHeader, Patient, and Encounter entries");
}

@test:Config {}
function adtA01ToBundleWithNk1Test() returns error? {
    hl7v23:ADT_A01 message = {
        name: "ADT_A01",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A01"}},
        evn: {name: "EVN", evn1: "A01"},
        pid: {name: "PID", pid5: [{xpn1: "Doe", xpn2: "Jane"}]},
        pv1: {name: "PV1", pv12: "O"},
        nk1: [{name: "NK1", nk11: "1", nk12: [{xpn1: "Doe", xpn2: "John"}], nk13: {ce1: "SPO", ce2: "Spouse"}}]
    };
    r4:Bundle bundle = check adtA01ToBundle(message);
    r4:BundleEntry[] entries = bundle.entry ?: [];
    // NK1 should produce both RelatedPerson and Patient entries
    test:assertTrue(entries.length() >= 5, "ADT_A01 with NK1 should include RelatedPerson and Patient from NK1");
}

@test:Config {}
function adtA02ToBundleTest() returns error? {
    hl7v23:ADT_A02 message = {
        name: "ADT_A02",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A02"}},
        evn: {name: "EVN", evn1: "A02"},
        pid: {name: "PID", pid5: [{xpn1: "Doe", xpn2: "Jane"}]},
        pv1: {name: "PV1", pv12: "I"}
    };
    r4:Bundle bundle = check adtA02ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A02 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 3, "ADT_A02 should produce at least MessageHeader, Patient, and Encounter entries");
}

@test:Config {}
function adtA05ToBundleTest() returns error? {
    hl7v23:ADT_A05 message = {
        name: "ADT_A05",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A05"}},
        evn: {name: "EVN", evn1: "A05"},
        pid: {name: "PID", pid5: [{xpn1: "Smith", xpn2: "Bob"}]},
        pv1: {name: "PV1", pv12: "P"}
    };
    r4:Bundle bundle = check adtA05ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A05 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 3, "ADT_A05 should produce at least MessageHeader, Patient, and Encounter entries");
}

@test:Config {}
function adtA06ToBundleWithMrgTest() returns error? {
    hl7v23:ADT_A06 message = {
        name: "ADT_A06",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A06"}},
        evn: {name: "EVN", evn1: "A06"},
        pid: {name: "PID", pid5: [{xpn1: "Doe", xpn2: "John"}]},
        pv1: {name: "PV1", pv12: "I"},
        mrg: {name: "MRG", mrg1: [{cx1: "OLD-001"}]}
    };
    r4:Bundle bundle = check adtA06ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A06 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    // Should include MRG → Account entry in addition to the base entries
    test:assertTrue(entries.length() >= 4, "ADT_A06 with MRG should include Account entry");
}

@test:Config {}
function adtA09ToBundleTest() returns error? {
    hl7v23:ADT_A09 message = {
        name: "ADT_A09",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A09"}},
        evn: {name: "EVN", evn1: "A09"},
        pid: {name: "PID", pid5: [{xpn1: "Lee", xpn2: "Chris"}]},
        pv1: {name: "PV1", pv12: "E"}
    };
    r4:Bundle bundle = check adtA09ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A09 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 3, "ADT_A09 should produce at least MessageHeader, Patient, and Encounter entries");
}

@test:Config {}
function adtA11ToBundleTest() returns error? {
    hl7v23:ADT_A11 message = {
        name: "ADT_A11",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A11"}},
        evn: {name: "EVN", evn1: "A11"},
        pid: {name: "PID", pid5: [{xpn1: "Kim", xpn2: "Pat"}]},
        pv1: {name: "PV1", pv12: "I"}
    };
    r4:Bundle bundle = check adtA11ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A11 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 3, "ADT_A11 should produce at least MessageHeader, Patient, and Encounter entries");
}

@test:Config {}
function adtA17ToBundleTest() returns error? {
    hl7v23:ADT_A17 message = {
        name: "ADT_A17",
        msh: {name: "MSH", msh9: {cm_msg1: "ADT", cm_msg2: "A17"}},
        evn: {name: "EVN", evn1: "A17"},
        pid: {name: "PID", pid5: [{xpn1: "Park", xpn2: "Alex"}]},
        pv1: {name: "PV1", pv12: "I"}
    };
    r4:Bundle bundle = check adtA17ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ADT_A17 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 3, "ADT_A17 should produce at least MessageHeader, Patient, and Encounter entries");
}

@test:Config {}
function mdmT02ToBundleTest() returns error? {
    hl7v23:MDM_T02 message = {
        name: "MDM_T02",
        msh: {name: "MSH", msh9: {cm_msg1: "MDM", cm_msg2: "T02"}},
        evn: {name: "EVN", evn1: "T02"},
        pid: {name: "PID", pid5: [{xpn1: "Brown", xpn2: "Sara"}]},
        pv1: {name: "PV1", pv12: "O"},
        txa: {
            name: "TXA",
            txa1: "1",
            txa2: "DS",
            txa17: "AU"
        }
    };
    r4:Bundle bundle = check mdmT02ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "MDM_T02 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 4, "MDM_T02 should include MessageHeader, Patient, Encounter, and DocumentReference");
    // Verify DocumentReference is present
    boolean hasDocRef = false;
    foreach r4:BundleEntry entry in entries {
        anydata res = entry?.'resource;
        if res is international401:DocumentReference {
            hasDocRef = true;
        }
    }
    test:assertTrue(hasDocRef, "MDM_T02 should produce a DocumentReference from TXA segment");
}

@test:Config {}
function ormO01ToBundleTest() returns error? {
    hl7v23:ORM_O01 message = {
        name: "ORM_O01",
        msh: {name: "MSH", msh9: {cm_msg1: "ORM", cm_msg2: "O01"}},
        patient: {
            name: "ORM_O01_PATIENT",
            isRequired: false,
            pid: {name: "PID", pid5: [{xpn1: "Wilson", xpn2: "Tom"}]}
        },
        'order: [{
            name: "ORM_O01_ORDER",
            isRequired: true,
            orc: {name: "ORC", orc1: "NW", orc2: {ei1: "ORD-001"}}
        }]
    };
    r4:Bundle bundle = check ormO01ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ORM_O01 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 2, "ORM_O01 should include at least MessageHeader and ServiceRequest");
    // Verify ServiceRequest is present from ORC
    boolean hasServiceRequest = false;
    foreach r4:BundleEntry entry in entries {
        anydata res = entry?.'resource;
        if res is international401:ServiceRequest {
            hasServiceRequest = true;
        }
    }
    test:assertTrue(hasServiceRequest, "ORM_O01 should produce a ServiceRequest from ORC segment");
}

@test:Config {}
function oruR01ToBundleTest() returns error? {
    hl7v23:ORU_R01 message = {
        name: "ORU_R01",
        msh: {name: "MSH", msh9: {cm_msg1: "ORU", cm_msg2: "R01"}}
    };
    r4:Bundle bundle = check oruR01ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "ORU_R01 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 1, "ORU_R01 should include at least a MessageHeader entry");
}

@test:Config {}
function siuS12ToBundleTest() returns error? {
    hl7v23:SIU_S12 message = {
        name: "SIU_S12",
        msh: {name: "MSH", msh9: {cm_msg1: "SIU", cm_msg2: "S12"}},
        sch: {
            name: "SCH",
            sch1: {ei1: "APT-001"},
            sch6: {ce1: "ROUTINE"},
            sch11: [{tq4: {ts1: "20230601090000"}}],
            sch9: "20",
            sch25: {ce1: "Booked"}
        },
        patient: [{
            name: "SIU_S12_PATIENT",
            isRequired: false,
            pid: {name: "PID", pid5: [{xpn1: "Green", xpn2: "Amy"}]}
        }],
        resources: [{
            name: "SIU_S12_RESOURCES",
            isRequired: true,
            rgs: {name: "RGS", rgs1: "1"},
            siu_s12_service: [{
                name: "SIU_S12_SERVICE",
                isRequired: false,
                ais: {name: "AIS", ais1: "1", ais2: "A", ais3: {ce1: "CONSULT"}}
            }]
        }]
    };
    r4:Bundle bundle = check siuS12ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "SIU_S12 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 2, "SIU_S12 should include at least MessageHeader and Appointment entries");
    // Verify Appointment is present
    boolean hasAppointment = false;
    foreach r4:BundleEntry entry in entries {
        anydata res = entry?.'resource;
        if res is international401:Appointment {
            hasAppointment = true;
        }
    }
    test:assertTrue(hasAppointment, "SIU_S12 should produce an Appointment from SCH segment");
}

@test:Config {}
function vxuV04ToBundleTest() returns error? {
    hl7v23:VXU_V04 message = {
        name: "VXU_V04",
        msh: {name: "MSH", msh9: {cm_msg1: "VXU", cm_msg2: "V04"}},
        pid: {name: "PID", pid5: [{xpn1: "White", xpn2: "Sam"}]},
        'order: [{
            name: "VXU_V04_ORDER",
            isRequired: false,
            rxa: {
                name: "RXA",
                rxa1: "0",
                rxa2: "1",
                rxa3: {ts1: "20230101"},
                rxa4: {ts1: "20230101"},
                rxa5: {ce1: "208", ce2: "Influenza Virus Vaccine", ce3: "CVX"},
                rxa6: "0.5",
                rxa7: {ce1: "mL"}
            }
        }]
    };
    r4:Bundle bundle = check vxuV04ToBundle(message);
    test:assertEquals(bundle.'type, "transaction", "VXU_V04 should produce a transaction bundle");
    r4:BundleEntry[] entries = bundle.entry ?: [];
    test:assertTrue(entries.length() >= 2, "VXU_V04 should include at least MessageHeader and Immunization entries");
    // Verify Immunization is present
    boolean hasImmunization = false;
    foreach r4:BundleEntry entry in entries {
        anydata res = entry?.'resource;
        if res is international401:Immunization {
            hasImmunization = true;
        }
    }
    test:assertTrue(hasImmunization, "VXU_V04 should produce an Immunization from RXA segment");
}
