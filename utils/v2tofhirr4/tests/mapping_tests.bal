// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).

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
import ballerinax/health.hl7v2 as hl7;

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
        r4:Bundle|error resultantBundle = adtToFhirBundle.cloneWithType(r4:Bundle);
        if resultantBundle is r4:Bundle {
            r4:BundleEntry[] entries = resultantBundle.entry ?: [];
            test:assertEquals(entries.length(), 5, "Transforming issue occurred with the message");
            
        } else {
            test:assertFail("ADT_A01 msg to FHIR transforming failed.");
        }
    } else {
        test:assertFail("ADT_A01 msg to FHIR transforming failed.");
    }
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
            test:assertEquals(entries.length(), 5, "Transforming issue occurred with the message");
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
