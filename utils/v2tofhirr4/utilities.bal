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
import ballerinax/health.hl7v23;
import ballerinax/health.hl7v231;
import ballerinax/health.hl7v24;
import ballerinax/health.hl7v25;
import ballerinax/health.hl7v251;
import ballerinax/health.hl7v26;
import ballerinax/health.hl7v27;
import ballerinax/health.hl7v28;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.fhir.r4 as r4;

final V2ToFhirMapperContext context = new;

public function getMapperContext() returns V2ToFhirMapperContext => context;

public function pidToAdministrativeSex(string pid8) returns r4:PatientGender {
    match pid8 {
        "M" => {
            return "male";
        }
        "F" => {
            return "female";
        }
        "O" => {
            return "other";
        }
        "U" => {
            return "unknown";
        }
        _ => {
            return "unknown";
        }
    }
}

public function pidToPatientName(Pid5 pid5, Pid9 pid9) returns r4:HumanName[] {
    r4:HumanName[] humanNames = [];
    if pid5 is hl7v23:XPN[] {
        foreach hl7v23:XPN item in pid5 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    } else if pid5 is hl7v231:XPN[] {
        foreach hl7v231:XPN item in pid5 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    } else if pid5 is hl7v24:XPN[] {
        foreach hl7v24:XPN item in pid5 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    } else if pid5 is hl7v25:XPN[] {
        foreach hl7v25:XPN item in pid5 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    }

    if pid9 is hl7v23:XPN[] {
        foreach hl7v23:XPN item in pid9 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    } else if pid9 is hl7v231:XPN[] {
        foreach hl7v231:XPN item in pid9 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    } else if pid9 is hl7v24:XPN[] {
        foreach hl7v24:XPN item in pid9 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    } else if pid9 is hl7v25:XPN[] {
        foreach hl7v25:XPN item in pid9 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                humanNames.push(name);
            }
        }
    }

    return humanNames;
}

public function pidToAddress(string pid12, Pid11 pid11) returns r4:Address[] {
    r4:Address[] address = [];
    if pid12 != "" {
        address.push({district: pid12});
    }

    if pid11 is hl7v23:XAD[] {
        foreach hl7v23:XAD item in pid11 {
            address.push(xadToAddress(item));
        }
    } else if pid11 is hl7v24:XAD[] {
        foreach hl7v24:XAD item in pid11 {
            address.push(xadToAddress(item));
        }
    } else if pid11 is hl7v25:XAD[] {
        foreach hl7v25:XAD item in pid11 {
            address.push(xadToAddress(item));
        }
    } else if pid11 is hl7v26:XAD[] {
        foreach hl7v26:XAD item in pid11 {
            address.push(xadToAddress(item));
        }
    } else if pid11 is hl7v27:XAD[] {
        foreach hl7v27:XAD item in pid11 {
            address.push(xadToAddress(item));
        }
    } else if pid11 is hl7v28:XAD[] {
        foreach hl7v28:XAD item in pid11 {
            address.push(xadToAddress(item));
        }
    }

    return address;
}

public function pidToPhoneNumber(Pid13 pid13, Pid14 pid14) returns r4:ContactPoint[] {
    r4:ContactPoint[] phoneNumbers = [];

    //get ContactPointFromXTN use this
    if pid13 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in pid13 {
            r4:ContactPoint contactPoint = xtnToContactPoint(item);
            if contactPoint != {} {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid13 is hl7v24:XTN[] {
        foreach hl7v24:XTN item in pid13 {
            r4:ContactPoint contactPoint = xtnToContactPoint(item);
            if contactPoint != {} {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid13 is hl7v25:XTN[] {
        foreach hl7v25:XTN item in pid13 {
            r4:ContactPoint contactPoint = xtnToContactPoint(item);
            if contactPoint != {} {
                phoneNumbers.push(contactPoint);
            }
        }
    }

    if pid14 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in pid14 {
            r4:ContactPoint contactPoint = xtnToContactPoint(item);
            if contactPoint != {} {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid14 is hl7v24:XTN[] {
        foreach hl7v24:XTN item in pid14 {
            r4:ContactPoint contactPoint = xtnToContactPoint(item);
            if contactPoint != {} {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid14 is hl7v25:XTN[] {
        foreach hl7v25:XTN item in pid14 {
            r4:ContactPoint contactPoint = xtnToContactPoint(item);
            if contactPoint != {} {
                phoneNumbers.push(contactPoint);
            }
        }
    }

    return phoneNumbers;
}

public function pidToPrimaryLanguage(Pid15 pid15) returns r4:PatientCommunication[] {
    string id = "";
    string text = "";

    if pid15 is hl7v26:CWE {
        id = pid15.cwe1;
        text = pid15.cwe2;
    } else if pid15 is hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE {
        id = pid15.ce1;
        text = pid15.ce2;
    }

    r4:CodeableConcept language = {
        id: (id != "") ? id : (),
        text: (text != "") ? text : ()
    };

    if language != {} {
        return [
            {
                language: language
            }
        ];
    }
    return [];
}

public function pidToMaritalStatus(Pid16 pid16) returns r4:Coding[] {
    r4:Coding[] maritialStatues = [];
    if pid16 is hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE {
        maritialStatues = [{code: pid16.ce1}];
    } else if pid16 is hl7v26:CWE {
        maritialStatues = [{code: pid16.cwe1}];
    } else if pid16 is string {
        maritialStatues = [{code: pid16}];
    }
    return maritialStatues;
}

public function pidToSsnNumberIdentifier(string pid19) returns r4:Identifier[] {
    r4:Identifier[] identifier = [];
    if pid19 != "" {
        identifier.push({value: pid19});
    }
    return identifier;
}

public function pidToBirthPlace(string pid23) returns r4:Extension[] {
    r4:StringExtension[] extension = [{url: pid23, valueString: pid23}];

    return extension;
}

public function pidToMultipleBirthIndicator(string pid24) returns boolean {
    match pid24 {
        "N" => {
            return false;
        }
        "Y" => {
            return true;
        }
        _ => {
            return false;
        }
    }
}

public function pidToBirthOrder(float|string pid25) returns int {

    if pid25 is float {
        return <int>pid25;
    } else {
        do {
            int intResult = check int:fromString(pid25);
            return intResult;
        } on fail var e {
            log:printError(string `[pidToBirthOrder] Error while converting [pid25] ${pid25} to int.`, e);
            return -1;
        }
    }
}

public function pidToPatientDeathIndicator(string pid30) returns boolean {
    match pid30 {
        "false" => {
            return false;
        }
        "true" => {
            return true;
        }
        _ => {
            return false;
        }
    }
}

// PV1
public function pv1ToExtension(string pv116) returns r4:Extension[] {
    r4:CodeableConcept codeableConcept = {text: pv116};
    r4:CodeableConceptExtension[] extension = [{url: pv116, valueCodeableConcept: codeableConcept}];

    return extension;
}

// PD1
public function pd1ToGeneralPractitioner(Pd13 pd13, Pd14 pd14) returns r4:Reference[] {
    r4:Reference[] reference = [];

    if pd13 is hl7v23:XON[] {
        foreach hl7v23:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    } else if pd13 is hl7v231:XON[] {
        foreach hl7v231:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    } else if pd13 is hl7v24:XON[] {
        foreach hl7v24:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    } else if pd13 is hl7v25:XON[] {
        foreach hl7v25:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    } else if pd13 is hl7v251:XON[] {
        foreach hl7v251:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    } else if pd13 is hl7v26:XON[] {
        foreach hl7v26:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    } else if pd13 is hl7v27:XON[] {
        foreach hl7v27:XON item in pd13 {
            if item.toString() != "" {
                reference.push({
                    'type: "Organization",
                    display: item.toString()
                });
            }
        }
    }

    if pd14 is hl7v23:XCN[] {
        foreach hl7v23:XCN item in pd14 {
            if item.toString() != "" {
                reference.push({
                    'type: "Practitioner",
                    display: item.toString()
                });
            }
        }
    } else if pd14 is hl7v231:XCN[] {
        foreach hl7v231:XCN item in pd14 {
            if item.toString() != "" {
                reference.push({
                    'type: "Practitioner",
                    display: item.toString()
                });
            }
        }
    } else if pd14 is hl7v24:XCN[] {
        foreach hl7v24:XCN item in pd14 {
            if item.toString() != "" {
                reference.push({
                    'type: "Practitioner",
                    display: item.toString()
                });
            }
        }
    } else if pd14 is hl7v25:XCN[] {
        foreach hl7v25:XCN item in pd14 {
            if item.toString() != "" {
                reference.push({
                    'type: "Practitioner",
                    display: item.toString()
                });
            }
        }
    } else if pd14 is hl7v251:XCN[] {
        foreach hl7v251:XCN item in pd14 {
            if item.toString() != "" {
                reference.push({
                    'type: "Practitioner",
                    display: item.toString()
                });
            }
        }
    } else if pd14 is hl7v26:XCN[] {
        foreach hl7v26:XCN item in pd14 {
            if item.toString() != "" {
                reference.push({
                    'type: "Practitioner",
                    display: item.toString()
                });
            }
        }
    } else if pd14 is hl7v27:ST {
        if pd14.toString() != "" {
            reference.push({
                'type: "Practitioner",
                display: pd14.toString()
            });
        }
    }

    return reference;
}

public function pd1ToExtension(string pd16) returns r4:Extension[] {
    r4:CodeableConcept codeableConcept = {text: pd16};
    r4:CodeableConceptExtension[] extension = [{url: pd16, valueCodeableConcept: codeableConcept}];

    return extension;
}

public function nk1ToContact(Nk12 nk12, Nk14 nk14, Nk15 nk15, Nk16 nk16, Nk17 nk17, Nk18 nk18, Nk19 nk19, Nk113 nk113, Nk115 nk115,
        Nk130 nk130, Nk131 nk131, Nk132 nk132) returns r4:PatientContact[] {
    r4:PatientContact[] patientContact = [];

    if nk12 is hl7v23:XPN[] {
        foreach hl7v23:XPN item in nk12 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                patientContact.push({
                    name: name
                });
            }
        }
    } else if nk12 is hl7v24:XPN[] {
        foreach hl7v24:XPN item in nk12 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                patientContact.push({
                    name: name
                });
            }
        }
    } else if nk12 is hl7v25:XPN[] {
        foreach hl7v25:XPN item in nk12 {
            r4:HumanName name = xpnToHumanName(item);
            if name != {} {
                patientContact.push({
                    name: name
                });
            }
        }
    }

    if nk14 is hl7v23:XAD[] {
        foreach hl7v23:XAD item in nk14 {
            r4:Address address = xadToAddress(item);
            if address != {} {
                patientContact.push({
                    address: xadToAddress(item)
                });
            }
        }
    } else if nk14 is hl7v24:XAD[] {
        foreach hl7v24:XAD item in nk14 {
            r4:Address address = xadToAddress(item);
            if address != {} {
                patientContact.push({
                    address: xadToAddress(item)
                });
            }
        }
    } else if nk14 is hl7v25:XAD[] {
        foreach hl7v25:XAD item in nk14 {
            r4:Address address = xadToAddress(item);
            if address != {} {
                patientContact.push({
                    address: xadToAddress(item)
                });
            }
        }
    }

    r4:ContactPoint[] telecoms = [];

    if nk15 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in nk15 {
            telecoms.push(xtnToContactPoint(item));
        }
    } else if nk15 is hl7v24:XTN[] {
        foreach hl7v24:XTN item in nk15 {
            telecoms.push(xtnToContactPoint(item));
        }
    } else if nk15 is hl7v25:XTN[] {
        foreach hl7v25:XTN item in nk15 {
            telecoms.push(xtnToContactPoint(item));
        }
    }

    if nk16 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in nk16 {
            telecoms.push(xtnToContactPoint(item));
        }
    } else if nk16 is hl7v24:XTN[] {
        foreach hl7v24:XTN item in nk16 {
            telecoms.push(xtnToContactPoint(item));
        }
    } else if nk16 is hl7v25:XTN[] {
        foreach hl7v25:XTN item in nk16 {
            telecoms.push(xtnToContactPoint(item));
        }
    }

    patientContact.push({
        telecom: telecoms
    });

    r4:CodeableConcept[] relationship = [];
    r4:CodeableConcept relation = (nk17 is hl7v26:CWE) ? cweToCodeableConcept(nk17) : ceToCodeableConcept(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>nk17);
    relationship.push(relation);
    patientContact.push({
        relationship: relationship
    });

    r4:Period period = {'start: nk18, end: nk19};
    patientContact.push({
        period: period
    });

    // nk115, nk130, nk131, nk132 needs to be considered

    return patientContact;
}

function transformToFhir(hl7:Message message, V2SegmentToFhirMapper? customMapper) returns json|error {
    r4:Bundle bundle = {'type: "searchset"};
    r4:BundleEntry[] entries = [];
    bundle.entry = entries;

    message.entries().forEach(function(anydata triggerEventField) {
        string key;
        anydata segment;
        [key, segment] = <[string, anydata]>triggerEventField;
        do {
            if segment is hl7:Segment {
                r4:BundleEntry[] bundleEntries = segmentToFhir(segment.name, segment, customMapper);
                foreach r4:BundleEntry entry in bundleEntries {
                    entries.push(entry);
                }
            }
            if segment is hl7:Segment[] {
                foreach hl7:Segment segmentElem in segment {
                    r4:BundleEntry[] bundleEntries = segmentToFhir(segmentElem.name, segmentElem, customMapper);
                    foreach r4:BundleEntry entry in bundleEntries {
                        entries.push(entry);
                    }
                }
            }
            if segment is hl7:SegmentComponent {
                segment.entries().forEach(function(anydata segmentComponentField) {
                    // string groupKey;
                    anydata segmentComponent;
                    [_, segmentComponent] = <[string, anydata]>segmentComponentField;
                    if segmentComponent is hl7:Segment {
                        r4:BundleEntry[] bundleEntries = segmentToFhir(segmentComponent.name, segmentComponent, customMapper);
                        foreach r4:BundleEntry entry in bundleEntries {
                            entries.push(entry);
                        }
                    }
                });
            }
        } on fail error e {
            log:printError(string `Error occurred while converting [segment] ${key} to FHIR.
            Continuing to next segment..`, e, e.stackTrace());
        }
    });
    if entries.length() > 0 {
        return bundle.toJson();
    }
    return getOperationOutcome(string `Unsupported message: ${message.name}`);
}

