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

public isolated function pidToPatientName(Pid5 pid5, Pid9 pid9) returns r4:HumanName[]? {
    r4:HumanName[] humanNames = [];
    if pid5 is hl7v23:XPN[] {
        foreach hl7v23:XPN item in pid5 {
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
    }

    return (humanNames.length() > 0) ? humanNames : ();
}

public isolated function pidToAddress(string pid12, Pid11 pid11) returns r4:Address[]? {
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
    }
    return (address.length() > 0) ? address : ();
}

public isolated function pidToPhoneNumber(Pid13 pid13, Pid14 pid14) returns r4:ContactPoint[]? {
    r4:ContactPoint[] phoneNumbers = [];

    //get ContactPointFromXTN use this
    if pid13 is hl7v23:XTN[] {
        foreach hl7v23:XTN item in pid13 {
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
    }

    return (phoneNumbers.length() > 0) ? phoneNumbers : ();
}

public isolated function pidToPrimaryLanguage(Pid15 pid15) returns international401:PatientCommunication[]? {
    if pid15 is hl7v23:CE {
        r4:CodeableConcept ceToCodeableConceptResult = ceToCodeableConcept(pid15);
        return ceToCodeableConceptResult != {} ? [{language: ceToCodeableConceptResult}] : ();
    }
}

public isolated function pidToMaritalStatus(Pid16 pid16) returns r4:CodeableConcept? {
    r4:Coding[] maritialStatues = [];
    if pid16 is hl7v23:CE {
        if pid16.ce1 != "" {
            maritialStatues.push({code: pid16.ce1});
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
    return pd16 != "" ? [{url: pd16, valueCodeableConcept: {text: pd16}}] : ();
}

public isolated function nk1ToContact(Nk12 nk12, Nk14 nk14, Nk15 nk15, Nk16 nk16, Nk17 nk17,
        Nk18 nk18, Nk19 nk19, Nk113 nk113, Nk115 nk115, Nk130 nk130,
        Nk131 nk131, Nk132 nk132) returns international401:PatientContact[] {
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
    r4:CodeableConcept relation = ceToCodeableConcept(nk17);
    relationship.push(relation);
    patientContact.relationship = relationship;

    r4:Period period = {'start: nk18 != "" ? nk18 : (), end: (nk19 != "") ? nk19 : ()};
    if period != {} {
        patientContact.period = period;
    }

    patientContact.gender = pidToAdministrativeSex(nk115);

    return [patientContact];
}

isolated function isTransactionalMessage(hl7:Message message) returns boolean {
    return message.name.startsWith("ADT") || message.name.startsWith("ORM") || message.name.startsWith("ORU") ||
        message.name.startsWith("SIU") || message.name.startsWith("MDM") || message.name.startsWith("RDE");
}

isolated function transformToFhir(hl7:Message message, V2SegmentToFhirMapper? customMapper, V2ToFhirCustomMapperServiceConfig? mapperServiceConf) returns json|error {
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

// Additional utility function to handle incomplete dates in HL7v2
public isolated function hl7DateToFhir(string hl7Date) returns string {
    if hl7Date.length() == 0 {
        log:printError("Empty date value provided");
        return hl7Date;
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

// Utility to convert HL7v2 DTM/TS format to FHIR R4 datetime format
isolated function hl7FullDateTimeToFhir(string hl7DateTime) returns string {
    // Validate HL7v2 DTM/TS format
    boolean isValidFormat = validateHl7DateTime(hl7DateTime);
    if !isValidFormat {
        log:printError("Invalid HL7v2 date time format: " + hl7DateTime);
        return hl7DateTime;
    }

    // Extract components from HL7 datetime
    map<string>? components = extractDateTimeComponents(hl7DateTime);

    // Build the FHIR datetime string in ISO 8601 format
    if components is () {
        log:printError("Failed to extract components from HL7 datetime: " + hl7DateTime);
        return hl7DateTime;
    }
    string fhirDateTime = buildFhirDateTime(components);

    return fhirDateTime;
}

// Extract components from HL7 datetime string

isolated function extractDateTimeComponents(string dateTime) returns map<string>? {
    map<string> components = {};

    // Expected format: YYYYMMDDHHMMSS[.fraction][+/-HHMM]
    // Example: 20231005123045.123456+0530

    // Extract year,month,day (mandatory)
    components["year"] = dateTime.substring(0, 4);

    components["month"] = dateTime.substring(4, 6);

    components["day"] = dateTime.substring(6, 8);

    // Hour (optional)
    if dateTime.length() >= 10 {
        components["hour"] = dateTime.substring(8, 10);
    } else {
        components["hour"] = "00";
    }

    // Minute (optional)
    if dateTime.length() >= 12 {
        components["minute"] = dateTime.substring(10, 12);
    } else {
        components["minute"] = "00";
    }

    // Second (optional)
    if dateTime.length() >= 14 {
        components["second"] = dateTime.substring(12, 14);
    } else {
        components["second"] = "00";
    }

    // Fraction of seconds (optional)
    components["fraction"] = "";
    if dateTime.length() > 14 && dateTime.indexOf(".") != -1 {
        int? dotPos = dateTime.indexOf(".");
        if dotPos == () {
            log:printWarn("Invalid dateTime format: missing '.' for fraction");
        } else {
            int endPos = dotPos + 1;
            int|error valueOfEndPos = int:fromString(dateTime[endPos]);
            while (endPos < dateTime.length() && valueOfEndPos is int) {
                endPos = endPos + 1;
            }
            components["fraction"] = dateTime.substring(dotPos, endPos);
        }
    }

    // Timezone (optional)
    components["timezone"] = "Z"; // Default to UTC
    int? idxPlus = dateTime.indexOf("+");
    int? idxMinus = dateTime.indexOf("-");
    if idxPlus == () || idxMinus == () {
        log:printWarn("Invalid dateTime format: missing timezone indicator");
    } else {
        if idxPlus != -1 || idxMinus != -1 {
            int tzPos = -1;
            if idxPlus != -1 {
                tzPos = idxPlus;
            } else {
                tzPos = idxMinus;
            }

            if tzPos != -1 && tzPos + 5 <= dateTime.length() {
                string tzSign = dateTime.substring(tzPos, tzPos + 1);
                string tzHours = dateTime.substring(tzPos + 1, tzPos + 3);
                string tzMinutes = dateTime.substring(tzPos + 3, tzPos + 5);
                components["timezone"] = tzSign + tzHours + ":" + tzMinutes;
            }
        }
    }

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
