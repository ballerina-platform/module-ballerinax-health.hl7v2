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
import ballerina/log;
import ballerina/regex;
import ballerina/uuid;
import ballerinax/health.fhir.r4 as r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.fhir.r4.parser as fhirParser;
import ballerinax/health.hl7v2 as hl7;
import ballerinax/health.hl7v23;

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
        "O"|"A"|"N" => {
            return "other";
        }
        "U" => {
            return "unknown";
        }
    }
    return ();
}

public isolated function pidToPatientName(Pid5 pid5, Pid9 pid9) returns r4:HumanName[]? {
    r4:HumanName[] humanNames = [];
    foreach hl7v23:XPN item in pid5 {
        r4:HumanName name = xpnToHumanName(item);
        if name != {} {
            humanNames.push(name);
        }
    }

    foreach hl7v23:XPN item in pid9 {
        r4:HumanName name = xpnToHumanName(item);
        if name != {} {
            humanNames.push(name);
        }
    }

    return (humanNames.length() > 0) ? humanNames : ();
}

public isolated function pidToAddress(string pid12, Pid11 pid11) returns r4:Address[]? {
    r4:Address[] address = [];
    foreach hl7v23:XAD item in pid11 {
        r4:Address? xadToAddressResult = xadToAddress(item);
        if xadToAddressResult is r4:Address {
            address.push(xadToAddressResult);
        }
    }
    if pid12 != "" {
        // PID-12 (County Code) placement per PID[Patient] spec rows:
        //   PID-11 not valued, or exactly one PID-11 without XAD.9 → address[1].district
        //   otherwise (one PID-11 whose XAD.9 differs, or several PID-11) → separate address[2].district
        if address.length() == 0 {
            address.push({district: pid12});
        } else if address.length() == 1 && address[0].district is () {
            address[0].district = pid12;
        } else if address.length() > 1 || address[0].district != pid12 {
            address.push({district: pid12});
        }
    }
    return (address.length() > 0) ? address : ();
}

public isolated function pidToPhoneNumber(Pid13 pid13, Pid14 pid14) returns r4:ContactPoint[]? {
    r4:ContactPoint[] phoneNumbers = [];

    //get ContactPointFromXTN use this
    // PID-13 (home) / PID-14 (business): telecom.use defaults to "home" / "work" when XTN.2 is not valued
    foreach hl7v23:XTN item in pid13 {
        r4:ContactPoint? contactPoint = xtnToContactPoint(item);
        if contactPoint is r4:ContactPoint {
            if item.xtn2 == "" {
                contactPoint.use = "home";
            }
            phoneNumbers.push(contactPoint);
        }
    }

    foreach hl7v23:XTN item in pid14 {
        r4:ContactPoint? contactPoint = xtnToContactPoint(item);
        if contactPoint is r4:ContactPoint {
            if item.xtn2 == "" {
                contactPoint.use = "work";
            }
            phoneNumbers.push(contactPoint);
        }
    }

    return (phoneNumbers.length() > 0) ? phoneNumbers : ();
}

public isolated function pidToPrimaryLanguage(Pid15 pid15) returns international401:PatientCommunication[]? {
    r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(pid15);
    return ceToCodeableConceptResult != {} ? [{language: ceToCodeableConceptResult}] : ();
}

public isolated function pidToMaritalStatus(Pid16 pid16) returns r4:CodeableConcept? {
    string code = pid16 is hl7v23:CE ? pid16.ce1 : pid16;
    if code == "" {
        return ();
    }
    // MaritalStatus concept map (HL70002 → v3-MaritalStatus / v3-NullFlavor)
    map<string> maritalStatus = {
        "A": "L", "D": "D", "M": "M", "S": "S", "W": "W", "C": "C", "G": "T", "P": "T", "R": "T", "E": "L",
        "N": "A", "I": "I", "B": "U"
    };
    map<string> nullFlavor = {"U": "UNK", "O": "OTH", "T": "NAVU"};
    string? target = maritalStatus[code];
    if target is string {
        return {coding: [{system: "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus", code: target}]};
    }
    target = nullFlavor[code];
    if target is string {
        return {coding: [{system: "http://terminology.hl7.org/CodeSystem/v3-NullFlavor", code: target}]};
    }
    return {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0002", code: code}]};
}

public isolated function pidToSsnNumberIdentifier(string pid19) returns r4:Identifier[]? {
    if pid19 == "" {
        return ();
    }
    return [
        {
            value: pid19,
            system: "http://hl7.org/fhir/sid/us-ssn",
            'type: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0203", code: "SS"}]}
        }
    ];
}

public isolated function pidToBirthPlace(string pid23) returns r4:Extension[] {
    return [
        {
            url: "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
            valueAddress: {text: pid23}
        }
    ];
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
    // Yes/NoIndicator (HL70136)
    match pid30 {
        "N"|"n"|"false" => {
            return false;
        }
        "Y"|"y"|"true" => {
            return true;
        }
        _ => {
            return ();
        }
    }
}

// PV1
public isolated function pv1ToExtension(string pv116) returns r4:Extension[] {
    // PV1[Patient]: PV1-16 → patient-importance (VIPIndicator, v2-0099)
    r4:CodeableConceptExtension[] extension = [
        {
            url: "http://hl7.org/fhir/StructureDefinition/patient-importance",
            valueCodeableConcept: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0099", code: pv116}]}
        }
    ];
    return extension;
}

// PD1
public isolated function pd1ToGeneralPractitioner(Pd13 pd13, Pd14 pd14) returns r4:Reference[]? {
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
    return pd16 != "" ? [
            {
                url: "http://hl7.org/fhir/StructureDefinition/patient-disability",
                valueCodeableConcept: {coding: [{system: "http://terminology.hl7.org/CodeSystem/v2-0295", code: pd16}]}
            }
        ] : ();
}

public isolated function nk1ToContact(Nk12 nk12, Nk14 nk14, Nk15 nk15, Nk16 nk16, Nk17 nk17,
        Nk18 nk18, Nk19 nk19, Nk113 nk113, Nk115 nk115, Nk130 nk130,
        Nk131 nk131, Nk132 nk132, hl7v23:CE nk13 = {}) returns international401:PatientContact[] {
    international401:PatientContact patientContact = {};

    // NK1-2 / NK1-4 map to the single contact.name / contact.address: first valued repetition wins
    foreach Xpn item in <Xpn[]>nk12 {
        r4:HumanName name = xpnToHumanName(item);
        if name != {} {
            patientContact.name = name;
            break;
        }
    }

    foreach Xad item in <Xad[]>nk14 {
        r4:Address? address = xadToAddress(item);
        if address is r4:Address {
            patientContact.address = address;
            break;
        }
    }

    r4:ContactPoint[] telecoms = [];
    foreach Xtn item in <Xtn[]>nk15 {
        r4:ContactPoint? xtnToContactPointResult = xtnToContactPoint(item);
        if xtnToContactPointResult is r4:ContactPoint {
            telecoms.push(xtnToContactPointResult);
        }
    }

    // NK1-6 (Business Phone Number) → telecom.use = "work"
    foreach Xtn item in <Xtn[]>nk16 {
        r4:ContactPoint? xtnToContactPointResult = xtnToContactPoint(item);
        if xtnToContactPointResult is r4:ContactPoint {
            xtnToContactPointResult.use = "work";
            telecoms.push(xtnToContactPointResult);
        }
    }

    if telecoms.length() > 0 {
        patientContact.telecom = telecoms;
    }

    // NK1-7 (Contact Role) → relationship[1], NK1-3 (Relationship) → relationship[2]
    r4:CodeableConcept[] relationship = [];
    r4:CodeableConcept? relation = nk1RelationshipToCodeableConcept(nk13);
    if relation is r4:CodeableConcept {
        relationship.push(relation);
    }
    r4:CodeableConcept? role = contactRoleToCodeableConcept(nk17);
    if role is r4:CodeableConcept {
        relationship.push(role);
    }
    if relationship.length() > 0 {
        patientContact.relationship = relationship;
    }

    if nk18 != "" || nk19 != "" {
        patientContact.period = {
            'start: nk18 != "" ? hl7DateToFhir(nk18) : (),
            end: nk19 != "" ? hl7DateToFhir(nk19) : ()
        };
    }

    // NK1-13 (Organization Name - NK1) → contact.organization
    foreach Xon item in <Xon[]>nk113 {
        r4:Reference? organization = xonToReference(item);
        if organization is r4:Reference && organization != {} {
            organization.'type = "Organization";
            patientContact.organization = organization;
            break;
        }
    }

    patientContact.gender = pidToAdministrativeSex(nk115);

    return patientContact != {} ? [patientContact] : [];
}

# Maps NK1-3 / IN1-17 (HL70063 Relationship) using the Relationship concept map.
#
# + ce - relationship code
# + return - CodeableConcept with the translated code, or nil when not valued
public isolated function nk1RelationshipToCodeableConcept(hl7v23:CE ce) returns r4:CodeableConcept? {
    if ce.ce1 == "" {
        r4:CodeableConcept cc = ceToCodeableConcept(ce);
        return cc.coding is r4:Coding[] ? cc : ();
    }
    map<string> roleCode = {
        "SEL": "ONESELF", "SPO": "SPS", "DOM": "SIGOTHR", "CHD": "CHILD", "GCH": "GRNDCHILD", "NCH": "NCHILD",
        "SCH": "STPCHLD", "FCH": "CHLDFOST", "PAR": "PRN", "MTH": "MTH", "FTH": "FTH", "GRP": "GRPRN", "EXF": "EXT",
        "SIB": "SIB", "BRO": "BRO", "SIS": "SIS", "FND": "FRND"
    };
    map<string> v20131 = {"EMR": "E", "EMC": "C", "UNK": "U", "OTH": "O"};
    string? target = roleCode[ce.ce1];
    string system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode";
    if target is () {
        target = v20131[ce.ce1];
        system = "http://terminology.hl7.org/CodeSystem/v2-0131";
    }
    if target is () {
        target = ce.ce1;
        system = "http://terminology.hl7.org/CodeSystem/v2-0063";
    }
    return {
        coding: [{system: system, code: target, display: ce.ce2 != "" ? ce.ce2 : ()}],
        text: ce.ce2 != "" ? ce.ce2 : ()
    };
}

# Maps NK1-7 (HL70131 Contact Role) using the ContactRole concept map.
#
# + ce - contact role
# + return - CodeableConcept, or nil when not valued
public isolated function contactRoleToCodeableConcept(hl7v23:CE ce) returns r4:CodeableConcept? {
    if ce.ce1 == "" {
        r4:CodeableConcept cc = ceToCodeableConcept(ce);
        return cc.coding is r4:Coding[] ? cc : ();
    }
    return {
        coding: [
            {
                system: "http://terminology.hl7.org/CodeSystem/v2-0131",
                code: ce.ce1,
                display: ce.ce2 != "" ? ce.ce2 : ()
            }
        ]
    };
}

isolated function transformToFhir(hl7:Message message, V2SegmentToFhirMapper? customMapper, V2ToFhirCustomMapperServiceConfig? mapperServiceConf) returns json|error {
    // MSH[Bundle]: Bundle.type = "message"
    r4:Bundle bundle = {'type: "message"};
    r4:BundleEntry[] entries = [];

    foreach anydata segmentField in message.entries() {
        string key;
        anydata segment;
        [key, segment] = <[string, anydata]>segmentField;
        do {
            if segment is hl7:Segment {
                r4:BundleEntry[] bundleEntries = check segmentToFhir(segment.name, segment, customMapper, mapperServiceConf);
                foreach r4:BundleEntry entry in bundleEntries {
                    entries.push(entry);
                }
            }
            if segment is hl7:Segment[] {
                foreach hl7:Segment segmentElem in segment {
                    r4:BundleEntry[] bundleEntries = check segmentToFhir(segmentElem.name, segmentElem, customMapper, mapperServiceConf);
                    foreach r4:BundleEntry entry in bundleEntries {
                        entries.push(entry);
                    }
                }
            }
            if segment is hl7:SegmentComponent {
                r4:BundleEntry[] bundleEntries = check populateBundleEntriesForSegmentComponent(segment, customMapper, mapperServiceConf);
                foreach r4:BundleEntry entry in bundleEntries {
                    entries.push(entry);
                }
            }
            // Repeating segment groups (e.g. ORU_R01 PATIENT_RESULT, ADT PROCEDURE/INSURANCE, ORM ORDER)
            if segment is hl7:SegmentComponent[] {
                foreach hl7:SegmentComponent group in segment {
                    entries.push(...check populateBundleEntriesForSegmentComponent(group, customMapper, mapperServiceConf));
                }
            }
        } on fail error e {
            log:printError(string `Error occurred while converting [segment] ${key} to FHIR.
            Continuing to next segment..`, e, e.stackTrace());
        }
    }
    if entries.length() > 0 {
        anydata msh = message["msh"];
        if msh is hl7v23:MSH {
            return finalizeBundle(msh, entries).toJson();
        }
        bundle.entry = assignEntryFullUrls(entries);
        return bundle.toJson();
    }
    return getOperationOutcome(string `Unsupported message: ${message.name}`);
}

isolated function populateBundleEntriesForSegmentComponent(hl7:SegmentComponent segment, V2SegmentToFhirMapper? customMapper, V2ToFhirCustomMapperServiceConfig? mapperServiceConf) returns r4:BundleEntry[]|error {

    r4:BundleEntry[] entries = [];
    foreach anydata segmentComponentField in segment.entries() {
        // string groupKey;
        anydata segmentComponent;
        [_, segmentComponent] = <[string, anydata]>segmentComponentField;
        if segmentComponent is hl7:Segment {
            r4:BundleEntry[] bundleEntries = check segmentToFhir(segmentComponent.name, segmentComponent, customMapper, mapperServiceConf);
            foreach r4:BundleEntry entry in bundleEntries {
                entries.push(entry);
            }
        } else if segmentComponent is hl7:Segment[] {
            foreach hl7:Segment segmentElem in segmentComponent {
                r4:BundleEntry[] bundleEntries = check segmentToFhir(segmentElem.name, segmentElem, customMapper, mapperServiceConf);
                foreach r4:BundleEntry entry in bundleEntries {
                    entries.push(entry);
                }
            }
        } else if segmentComponent is hl7:SegmentComponent {
            // Recursively call the function for nested segments
            r4:BundleEntry[] bundleEntries = check populateBundleEntriesForSegmentComponent(segmentComponent, customMapper, mapperServiceConf);
            foreach r4:BundleEntry entry in bundleEntries {
                entries.push(entry);
            }
        } else if segmentComponent is hl7:SegmentComponent[] {
            // Repeating nested groups
            foreach hl7:SegmentComponent group in segmentComponent {
                entries.push(...check populateBundleEntriesForSegmentComponent(group, customMapper, mapperServiceConf));
            }
        }
    }
    return entries;
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

# This function is used to get the custom segment to resource mapping from invoking provided service endpoints.
#
# + serviceconf - external service configuration
# + segment - segment to be mapped
# + return - returns a tuple with a boolean flag to use default mapping and parsed response
isolated function getCustomSegmentToResourceMapping(V2ToFhirCustomMapperServiceConfig? serviceconf, hl7:Segment segment) returns [boolean, anydata]|error {
    if serviceconf != () && serviceconf.segmentMappings.hasKey(segment.name) {
        do {
            log:printDebug(string `Before calling the service endpoint custom segment to resource mapping: ${serviceconf.baseUrl}`);
            http:Client serviceEp = check new (serviceconf.baseUrl);
            string path = serviceconf.segmentMappings.get(segment.name);
            http:Response response = check serviceEp->post(path, segment);
            json responsePayload = check response.getJsonPayload();
            log:printDebug(string `After calling the service endpoint custom segment to resource mapping: ${responsePayload.toJsonString()}`);
            anydata|r4:FHIRParseError parsedResponse = fhirParser:parse(check response.getJsonPayload());
            if parsedResponse is r4:FHIRError {
                return parsedResponse;
            }
            return [false, parsedResponse];
        } on fail var e {
            return error(string `Error occurred while calling or parsing response from the service endpoint: ${serviceconf.baseUrl}`, e);
        }
    }
    return [true, {}];
}

# This function is used to populate the bundle entries with the given FHIR resource.
#
# + constructedResource - constructed FHIR resource
# + return - returns the populated bundle entries
isolated function populateBundleEntries(map<anydata> constructedResource) returns r4:BundleEntry[] {
    r4:BundleEntry[] entries = [];
    if constructedResource != {} && constructedResource.keys().length() > 1 {
        if constructedResource is r4:Bundle {
            r4:BundleEntry[]? entryArr = constructedResource.entry;
            if entryArr is r4:BundleEntry[] {
                return entryArr;
            }
        }
        entries.push({'resource: constructedResource});
    }
    return entries;
}

# Converts an HL7 v2 DT/TS/DTM value (any precision YYYY[MM[DD[HH[MM[SS[.S+]]]]]][+/-ZZZZ]) to a FHIR date/dateTime.
#
# + hl7Date - HL7 v2 date/time value
# + return - FHIR date (YYYY, YYYY-MM, YYYY-MM-DD) or dateTime, or nil when the value is empty or malformed
public isolated function hl7DateToFhir(string hl7Date) returns string? {
    if hl7Date.length() == 0 {
        return ();
    }
    if !validateHl7DateTime(hl7Date) {
        log:printError("Invalid HL7v2 date time format: " + hl7Date);
        return ();
    }

    // Handle YYYY format
    if hl7Date.length() == 4 {
        return hl7Date;
    }

    // Handle YYYYMM format
    if hl7Date.length() == 6 {
        return hl7Date.substring(0, 4) + "-" + hl7Date.substring(4, 6);
    }

    // Handle YYYYMMDD format
    if hl7Date.length() == 8 {
        return hl7Date.substring(0, 4) + "-" + hl7Date.substring(4, 6) + "-" + hl7Date.substring(6, 8);
    }

    // If it has more precision, use the full datetime converter
    return hl7FullDateTimeToFhir(hl7Date);
}

// Converts an HL7v2 DTM/TS value (at least YYYYMMDD) to a FHIR R4 dateTime; nil when malformed
isolated function hl7FullDateTimeToFhir(string hl7DateTime) returns string? {
    if !validateHl7DateTime(hl7DateTime) {
        log:printError("Invalid HL7v2 date time format: " + hl7DateTime);
        return ();
    }
    map<string>? components = extractDateTimeComponents(hl7DateTime);
    if components is () {
        log:printError("Failed to extract components from HL7 datetime: " + hl7DateTime);
        return ();
    }
    return buildFhirDateTime(components);
}

// Extract components from HL7 datetime string

isolated function extractDateTimeComponents(string dateTime) returns map<string>? {
    // Expected format (already validated): YYYYMMDD[HH[MM[SS[.fraction]]]][+/-HHMM]
    // Example: 20231005123045.123456+0530
    if dateTime.length() < 8 {
        return ();
    }

    // Split off the timezone suffix first so it can't leak into the time/fraction parts.
    string body = dateTime;
    string timezone = "Z"; // Default to UTC when no offset is supplied
    int? tzPos = dateTime.lastIndexOf("+");
    if tzPos is () {
        tzPos = dateTime.lastIndexOf("-");
    }
    if tzPos is int && tzPos >= 8 && tzPos + 5 == dateTime.length() {
        timezone = dateTime.substring(tzPos, tzPos + 3) + ":" + dateTime.substring(tzPos + 3, tzPos + 5);
        body = dateTime.substring(0, tzPos);
    }

    string fraction = "";
    int? dotPos = body.indexOf(".");
    if dotPos is int {
        fraction = body.substring(dotPos);
        body = body.substring(0, dotPos);
    }

    map<string> components = {
        year: body.substring(0, 4),
        month: body.substring(4, 6),
        day: body.substring(6, 8),
        hour: body.length() >= 10 ? body.substring(8, 10) : "00",
        minute: body.length() >= 12 ? body.substring(10, 12) : "00",
        second: body.length() >= 14 ? body.substring(12, 14) : "00",
        fraction: fraction,
        timezone: timezone
    };
    return components;
}

// Build FHIR R4 DateTime string from components
isolated function buildFhirDateTime(map<string> components) returns string {
    string fhirDateTime = components.get("year") + "-" + components.get("month") + "-" + components.get("day") +
                        "T" + components.get("hour") + ":" + components.get("minute") + ":" + components.get("second");

    // Add fraction if present
    if components.get("fraction") != "" {
        fhirDateTime = fhirDateTime + components.get("fraction");
    }

    // Add timezone
    string timezone = components.get("timezone");
    if timezone != "Z" {
        fhirDateTime = fhirDateTime + timezone;
    } else {
        fhirDateTime = fhirDateTime + "Z";
    }

    return fhirDateTime;
}

isolated function validateHl7DateTime(string dateTime) returns boolean {
    // Basic format validation for various levels of precision in HL7
    string pattern = "^\\d{4}(\\d{2}(\\d{2}(\\d{2}(\\d{2}(\\d{2}(\\.\\d+)?)?)?)?)?)?([+-]\\d{4})?$";
    return regex:matches(dateTime, pattern);
}
