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
import ballerina/uuid;

public isolated function pidToAdministrativeSex(string pid8) returns international401:PatientGender? {
    if pid8 == "" {
        return ();
    }
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

public isolated function pidToPatientName(hl7v2commons:Pid5 pid5, hl7v2commons:Pid9 pid9) returns r4:HumanName[]? {
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

    return (humanNames.length() > 0) ? humanNames : ();
}

public isolated function pidToAddress(string pid12, hl7v2commons:Pid11 pid11) returns r4:Address[]? {
    r4:Address[] address = [];
    if pid12 != "" {
        address.push({district: pid12});
    }

    if pid11 is hl7v23:XAD[] {
        foreach hl7v23:XAD item in pid11 {
            r4:Address? xadToAddressResult = xadToAddress(item);
            if xadToAddressResult is r4:Address {
                address.push(xadToAddressResult);
            }
        }
    } else if pid11 is hl7v24:XAD[] {
        foreach hl7v24:XAD item in pid11 {
            r4:Address? xadToAddressResult = xadToAddress(item);
            if xadToAddressResult is r4:Address {
                address.push(xadToAddressResult);
            }
        }
    } else if pid11 is hl7v25:XAD[] {
        foreach hl7v25:XAD item in pid11 {
            r4:Address? xadToAddressResult = xadToAddress(item);
            if xadToAddressResult is r4:Address {
                address.push(xadToAddressResult);
            }
        }
    } else if pid11 is hl7v26:XAD[] {
        foreach hl7v26:XAD item in pid11 {
            r4:Address? xadToAddressResult = xadToAddress(item);
            if xadToAddressResult is r4:Address {
                address.push(xadToAddressResult);
            }
        }
    } else if pid11 is hl7v27:XAD[] {
        foreach hl7v27:XAD item in pid11 {
            r4:Address? xadToAddressResult = xadToAddress(item);
            if xadToAddressResult is r4:Address {
                address.push(xadToAddressResult);
            }
        }
    } else if pid11 is hl7v28:XAD[] {
        foreach hl7v28:XAD item in pid11 {
            r4:Address? xadToAddressResult = xadToAddress(item);
            if xadToAddressResult is r4:Address {
                address.push(xadToAddressResult);
            }
        }
    }
    return (address.length() > 0) ? address : ();
}

public isolated function pidToPhoneNumber(hl7v2commons:Pid13 pid13, hl7v2commons:Pid14 pid14) returns r4:ContactPoint[]? {
    r4:ContactPoint[] phoneNumbers = [];

    //get ContactPointFromXTN use this
    if pid13 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in pid13 {
            r4:ContactPoint? contactPoint = xtnToContactPoint(item);
            if contactPoint != () {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid13 is hl7v24:XTN[] {
        foreach hl7v24:XTN item in pid13 {
            r4:ContactPoint? contactPoint = xtnToContactPoint(item);
            if contactPoint != () {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid13 is hl7v25:XTN[] {
        foreach hl7v25:XTN item in pid13 {
            r4:ContactPoint? contactPoint = xtnToContactPoint(item);
            if contactPoint != () {
                phoneNumbers.push(contactPoint);
            }
        }
    }

    if pid14 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in pid14 {
            r4:ContactPoint? contactPoint = xtnToContactPoint(item);
            if contactPoint != () {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid14 is hl7v24:XTN[] {
        foreach hl7v24:XTN item in pid14 {
            r4:ContactPoint? contactPoint = xtnToContactPoint(item);
            if contactPoint != () {
                phoneNumbers.push(contactPoint);
            }
        }
    } else if pid14 is hl7v25:XTN[] {
        foreach hl7v25:XTN item in pid14 {
            r4:ContactPoint? contactPoint = xtnToContactPoint(item);
            if contactPoint != () {
                phoneNumbers.push(contactPoint);
            }
        }
    }

    return (phoneNumbers.length() > 0) ? phoneNumbers : ();
}

public isolated function pidToPrimaryLanguage(hl7v2commons:Pid15 pid15) returns international401:PatientCommunication[]? {
    if pid15 is hl7v26:CWE {
        r4:CodeableConcept cweToCodeableConceptResult = cweToCodeableConcept(pid15);
        return cweToCodeableConceptResult != {} ? [{language: cweToCodeableConceptResult}] : ();
    } else if pid15 is hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE {
        r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(pid15);
        return ceToCodeableConceptResult != {} ? [{language: ceToCodeableConceptResult}] : ();
    }
    return ();
}

public isolated function pidToMaritalStatus(hl7v2commons:Pid16 pid16) returns r4:CodeableConcept? {
    r4:Coding[] maritialStatues = [];
    if pid16 is hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE {
        if pid16.ce1 != "" {
            maritialStatues.push({code: pid16.ce1});
        }
    } else if pid16 is hl7v26:CWE {
        if pid16.cwe1 != "" {
            maritialStatues.push({code: pid16.cwe1});
        }
    } else if pid16 is string && pid16 != "" {
        maritialStatues.push({code: pid16});
    }
    return (maritialStatues.length() > 0) ? {coding: maritialStatues} : ();
}

public isolated function pidToSsnNumberIdentifier(string pid19) returns r4:Identifier[]? {
    r4:Identifier[] identifier = [];
    if pid19 != "" {
        identifier.push({value: pid19});
    }
    return (identifier.length() > 0) ? identifier : ();
}

public isolated function pidToBirthPlace(string pid23) returns r4:Extension[] {
    r4:StringExtension[] extension = [{url: pid23, valueString: pid23}];

    return extension;
}

public isolated function pidToMultipleBirthIndicator(string pid24) returns boolean {
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

public isolated function pidToBirthOrder(float|string pid25) returns int? {

    if pid25 is float {
        return <int>pid25;
    } else {
        if pid25 == "" {
            return ();
        }
        do {
            int intResult = check int:fromString(pid25);
            return intResult;
        } on fail var e {
            log:printError(string `[pidToBirthOrder] Error while converting [pid25] ${pid25} to int.`, e);
            return ();
        }
    }
}

public isolated function pidToPatientDeathIndicator(string pid30) returns boolean? {
    match pid30 {
        "false" => {
            return false;
        }
        "true" => {
            return true;
        }
        _ => {
            return ();
        }
    }
}

// PV1
public isolated function pv1ToExtension(string pv116) returns r4:Extension[] {
    r4:CodeableConcept codeableConcept = {text: pv116};
    r4:CodeableConceptExtension[] extension = [{url: pv116, valueCodeableConcept: codeableConcept}];

    return extension;
}

// PD1
public isolated function pd1ToGeneralPractitioner(hl7v2commons:Pd13 pd13, hl7v2commons:Pd14 pd14) returns r4:Reference[]? {
    r4:Reference[] reference = [];

    foreach Xon item in <Xon[]>pd13 {
        r4:Reference? referenceResult = xonToReference(item);
        if referenceResult is r4:Reference {
            referenceResult.'type = "Organization";
            reference.push(referenceResult);
        }
    }

    foreach Xcn item in <Xcn[]>pd14 {
        r4:Reference? referenceResult = xcnToReference(item);
        if referenceResult is r4:Reference {
            referenceResult.'type = "Practitioner";
            reference.push(referenceResult);
        }
    }

    return (reference.length() > 0) ? reference : ();
}

public isolated function pd1ToExtension(string pd16) returns r4:Extension[]? {
    return pd16 != "" ? [{url: pd16, valueCodeableConcept: {text: pd16}}] : ();
}

public isolated function nk1ToContact(hl7v2commons:Nk12 nk12, hl7v2commons:Nk14 nk14, hl7v2commons:Nk15 nk15, hl7v2commons:Nk16 nk16, hl7v2commons:Nk17 nk17,
        hl7v2commons:Nk18 nk18, hl7v2commons:Nk19 nk19, hl7v2commons:Nk113 nk113, hl7v2commons:Nk115 nk115, hl7v2commons:Nk130 nk130,
        hl7v2commons:Nk131 nk131, hl7v2commons:Nk132 nk132) returns international401:PatientContact[] {
    international401:PatientContact patientContact = {};

    foreach Xpn item in <Xpn[]>nk12 {
        r4:HumanName name = xpnToHumanName(item);
        if name != {} {
            patientContact.name = name;
        }
    }

    foreach Xad item in <Xad[]>nk14 {
        r4:Address? address = xadToAddress(item);
        if address != () {
            patientContact.address = xadToAddress(item);
        }
    }

    r4:ContactPoint[] telecoms = [];
    foreach Xtn item in <Xtn[]>nk15 {
        r4:ContactPoint? xtnToContactPointResult = xtnToContactPoint(item);
        if xtnToContactPointResult != () {
            telecoms.push(xtnToContactPointResult);
        }
    }

    foreach Xtn item in <Xtn[]>nk16 {
        r4:ContactPoint? xtnToContactPointResult = xtnToContactPoint(item);
        if xtnToContactPointResult != () {
            telecoms.push(xtnToContactPointResult);
        }
    }

    patientContact.telecom = telecoms;

    r4:CodeableConcept[] relationship = [];
    r4:CodeableConcept relation = (nk17 is hl7v26:CWE) ? cweToCodeableConcept(nk17) : ceToCodeableConcept(<hl7v23:CE|hl7v231:CE|hl7v24:CE|hl7v25:CE|hl7v251:CE>nk17);
    relationship.push(relation);
    patientContact.relationship = relationship;

    r4:Period period = {'start: nk18 != "" ? nk18 : (), end: (nk19 != "") ? nk19 : ()};
    if period != {} {
        patientContact.period = period;
    }

    // nk115, nk130, nk131, nk132 needs to be considered
    if nk115 is hl7v27:CWE {
        r4:code? cweToCodeResult = cweToCode(nk115);
        if cweToCodeResult is r4:code {
            patientContact.gender = pidToAdministrativeSex(cweToCodeResult);
        }
    } else {
        patientContact.gender = pidToAdministrativeSex(nk115);
    }

    return [patientContact];
}

isolated function isTransactionalMessage(hl7:Message message) returns boolean {
    return message.name.startsWith("ADT") || message.name.startsWith("ORM") || message.name.startsWith("ORU") ||
        message.name.startsWith("SIU") || message.name.startsWith("MDM") || message.name.startsWith("RDE");
}

isolated function transformToFhir(hl7:Message message, V2SegmentToFhirMapper? customMapper) returns json|error {
    r4:Bundle bundle = {'type: "message"};
    r4:BundleEntry[] entries = [];
    bundle.entry = entries;

    if isTransactionalMessage(message) {
        bundle.'type = "transaction";
    }

    foreach anydata segmentField in message.entries() {
        string key;
        anydata segment;
        [key, segment] = <[string, anydata]>segmentField;
        do {
            if segment is hl7:Segment {
                r4:BundleEntry[] bundleEntries = check segmentToFhir(segment.name, segment, customMapper);
                foreach r4:BundleEntry entry in bundleEntries {
                    entries.push(entry);
                }
            }
            if segment is hl7:Segment[] {
                foreach hl7:Segment segmentElem in segment {
                    r4:BundleEntry[] bundleEntries = check segmentToFhir(segmentElem.name, segmentElem, customMapper);
                    foreach r4:BundleEntry entry in bundleEntries {
                        entries.push(entry);
                    }
                }
            }
            if segment is hl7:SegmentComponent {
                foreach anydata segmentComponentField in segment.entries() {
                    // string groupKey;
                    anydata segmentComponent;
                    [_, segmentComponent] = <[string, anydata]>segmentComponentField;
                    if segmentComponent is hl7:Segment {
                        r4:BundleEntry[] bundleEntries = check segmentToFhir(segmentComponent.name, segmentComponent, customMapper);
                        foreach r4:BundleEntry entry in bundleEntries {
                            entries.push(entry);
                        }
                    }
                }
            }
        } on fail error e {
            log:printError(string `Error occurred while converting [segment] ${key} to FHIR.
            Continuing to next segment..`, e, e.stackTrace());
        }
    }
    if entries.length() > 0 {
        return bundle.toJson();
    }
    return getOperationOutcome(string `Unsupported message: ${message.name}`);
}


public isolated function generateFhirResourceId() returns string {
    // Generate a version 4 (random) UUID
    return uuid:createType4AsString();
}

isolated function getEncounterLocationStatus(string hl7LocationStatus) returns international401:EncounterLocationStatus? {
    match hl7LocationStatus {
        "active" => {
            return "active";
        }
        "reserved" => {
            return "reserved";
        }
        "planned" => {
            return "planned";
        }
        "completed" => {
            return "completed";
        }
        _ => {
            return ();
        }
    }
}
