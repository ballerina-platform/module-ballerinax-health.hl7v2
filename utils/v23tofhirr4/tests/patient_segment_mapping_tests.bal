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

// --------------------------------------------------------------------------------------------#
// Patient administration segment mapping tests (PID, PD1, NK1, MRG, ROL)
// Spec: HL7 v2-to-FHIR IG segment maps PID[Patient], PID[Account], PD1[Patient],
// PD1[Observation-LivingWill], NK1[Patient], NK1[RelatedPerson], MRG[Account], ROL[RelatedPerson]
// Tests annotated `enable: false` with a `// BUG:` comment document spec deviations.
// --------------------------------------------------------------------------------------------#

import ballerina/test;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

// Navigates a json value using map keys and array indexes (numeric path segments).
function patJ(json root, string... path) returns json {
    json current = root;
    foreach string p in path {
        if current is map<json> {
            current = current[p];
        } else if current is json[] {
            int|error idx = int:fromString(p);
            if idx is error || idx >= current.length() {
                return ();
            }
            current = current[idx];
        } else {
            return ();
        }
    }
    return current;
}

function patLen(json value) returns int {
    return value is json[] ? value.length() : 0;
}

// Finds the first extension (in an extension array) with the given url.
function patFindExtension(json extensions, string url) returns json {
    if extensions is json[] {
        foreach json ext in extensions {
            if patJ(ext, "url") == url {
                return ext;
            }
        }
    }
    return ();
}

function patFullPid() returns hl7v23:PID => {
    name: "PID",
    pid1: "1",
    pid2: {cx1: "EXT-001", cx5: "PT"},
    pid3: [
        {cx1: "MRN12345", cx2: "5", cx3: "M11", cx5: "MR"},
        {cx1: "123456789", cx5: "SS"}
    ],
    pid4: [{cx1: "ALT-999", cx5: "PI"}],
    pid5: [
        {xpn1: "BATMAN", xpn2: "ADAM", xpn3: "A", xpn4: "III", xpn5: "DR", xpn6: "MD", xpn7: "L"},
        {xpn1: "WAYNE", xpn2: "BRUCE", xpn7: "M"}
    ],
    pid6: {xpn1: "KANE", xpn2: "MARTHA"},
    pid7: {ts1: "19610615"},
    pid8: "M",
    pid9: [{xpn1: "BAT", xpn2: "MAN", xpn7: "D"}],
    pid11: [
        {xad1: "2222 HOME STREET", xad2: "APT 4", xad3: "GREENSBORO", xad4: "NC", xad5: "27401-1020", xad6: "USA", xad7: "H"},
        {xad1: "1 WORK PLAZA", xad3: "RALEIGH", xad4: "NC", xad5: "27601", xad7: "O"}
    ],
    pid13: [{xtn1: "(555)555-2004", xtn2: "PRN", xtn3: "PH"}, {xtn1: "(555)555-2005", xtn2: "PRN", xtn3: "PH"}],
    pid14: [{xtn1: "(555)555-3000", xtn2: "WPN", xtn3: "PH"}],
    pid15: {ce1: "en", ce2: "English", ce3: "ISO639"},
    pid16: "M",
    pid19: "444333333",
    pid24: "N",
    pid30: ""
};

// ============================== PID[Patient] =================================================

@test:Config {}
function patPidNameMappingTest() {
    international401:Patient patient = pidToPatient(patFullPid());
    json p = patient.toJson();
    // PID-5 (2 repetitions) + PID-9 (1 repetition)
    test:assertEquals(patLen(patJ(p, "name")), 3, "PID-5 repetitions and PID-9 should map to Patient.name");
    test:assertEquals(patJ(p, "name", "0", "family"), "BATMAN");
    test:assertEquals(patJ(p, "name", "0", "given"), ["ADAM", "A"]);
    test:assertEquals(patJ(p, "name", "0", "suffix"), ["III", "MD"]);
    test:assertEquals(patJ(p, "name", "0", "prefix"), ["DR"]);
    test:assertEquals(patJ(p, "name", "0", "use"), "official");
    test:assertEquals(patJ(p, "name", "1", "family"), "WAYNE");
    test:assertEquals(patJ(p, "name", "1", "use"), "maiden");
    test:assertEquals(patJ(p, "name", "2", "family"), "BAT");
    test:assertEquals(patJ(p, "name", "2", "use"), "usual");
}

@test:Config {}
function patPidBirthDateTest() {
    hl7v23:PID pid = {name: "PID", pid7: {ts1: "19610615"}};
    test:assertEquals(pidToPatient(pid).birthDate, "1961-06-15", "PID-7 YYYYMMDD should map to birthDate");
    pid.pid7 = {ts1: "196106"};
    test:assertEquals(pidToPatient(pid).birthDate, "1961-06", "PID-7 YYYYMM should map to partial birthDate");
    pid.pid7 = {ts1: "1961"};
    test:assertEquals(pidToPatient(pid).birthDate, "1961", "PID-7 YYYY should map to partial birthDate");
}

@test:Config {}
function patPidBirthTimeBugTest() {
    hl7v23:PID pid = {name: "PID", pid7: {ts1: "196106151030"}};
    json p = pidToPatient(pid).toJson();
    test:assertEquals(patJ(p, "birthDate"), "1961-06-15", "birthDate must be a date");
    json birthTime = patFindExtension(patJ(p, "_birthDate", "extension"),
            "http://hl7.org/fhir/StructureDefinition/patient-birthTime");
    test:assertEquals(patJ(birthTime, "valueDateTime"), "1961-06-15T10:30:00Z");
}

@test:Config {}
function patPidGenderVocabularyTest() {
    hl7v23:PID pid = {name: "PID", pid8: "M"};
    test:assertEquals(pidToPatient(pid).gender, "male");
    pid.pid8 = "F";
    test:assertEquals(pidToPatient(pid).gender, "female");
    pid.pid8 = "O";
    test:assertEquals(pidToPatient(pid).gender, "other");
    pid.pid8 = "U";
    test:assertEquals(pidToPatient(pid).gender, "unknown");
    pid.pid8 = "";
    test:assertEquals(pidToPatient(pid).gender, (), "Empty PID-8 should not produce gender");
}

@test:Config {}
function patPidGenderAmbiguousBugTest() {
    test:assertEquals(pidToAdministrativeSex("A"), "other");
    test:assertEquals(pidToAdministrativeSex("N"), "other");
}

@test:Config {}
function patPidIdentifiersBugTest() {
    json p = pidToPatient(patFullPid()).toJson();
    json ids = patJ(p, "identifier");
    // PID-2 (1) + PID-3 (2) + PID-4 (1) + PID-19 (1)
    test:assertEquals(patLen(ids), 5);
    test:assertEquals(patJ(ids, "0", "value"), "EXT-001");
    test:assertEquals(patJ(ids, "1", "value"), "MRN12345");
    test:assertEquals(patJ(ids, "1", "type", "coding", "0", "code"), "MR");
    test:assertEquals(patJ(ids, "2", "value"), "123456789");
    test:assertEquals(patJ(ids, "3", "value"), "ALT-999");
}

@test:Config {}
function patPidMothersMaidenNameBugTest() {
    json p = pidToPatient(patFullPid()).toJson();
    json ext = patFindExtension(patJ(p, "extension"),
            "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName");
    test:assertEquals(patJ(ext, "valueString"), "KANE");
}

@test:Config {}
function patPidAddressTest() {
    json p = pidToPatient(patFullPid()).toJson();
    json addresses = patJ(p, "address");
    test:assertEquals(patLen(addresses), 2, "Each PID-11 repetition should map to an Address");
    test:assertEquals(patJ(addresses, "0", "line"), ["2222 HOME STREET", "APT 4"]);
    test:assertEquals(patJ(addresses, "0", "city"), "GREENSBORO");
    test:assertEquals(patJ(addresses, "0", "state"), "NC");
    test:assertEquals(patJ(addresses, "0", "postalCode"), "27401-1020");
    test:assertEquals(patJ(addresses, "0", "country"), "USA");
    test:assertEquals(patJ(addresses, "0", "use"), "home");
    test:assertEquals(patJ(addresses, "1", "city"), "RALEIGH");
    test:assertEquals(patJ(addresses, "1", "use"), "work");
}

@test:Config {}
function patPidCountyOnlyTest() {
    // PID-11 not valued -> PID-12 goes to address[1].district
    hl7v23:PID pid = {name: "PID", pid12: "GL"};
    json p = pidToPatient(pid).toJson();
    test:assertEquals(patLen(patJ(p, "address")), 1);
    test:assertEquals(patJ(p, "address", "0", "district"), "GL");
}

@test:Config {}
function patPidCountyDistrictBugTest() {
    hl7v23:PID pid = {name: "PID", pid11: [{xad1: "2222 HOME STREET", xad3: "GREENSBORO"}], pid12: "GL"};
    json p = pidToPatient(pid).toJson();
    test:assertEquals(patLen(patJ(p, "address")), 1);
    test:assertEquals(patJ(p, "address", "0", "city"), "GREENSBORO");
    test:assertEquals(patJ(p, "address", "0", "district"), "GL");
}

@test:Config {}
function patPidTelecomTest() {
    json p = pidToPatient(patFullPid()).toJson();
    json telecom = patJ(p, "telecom");
    // PID-13 (2 repetitions) + PID-14 (1 repetition)
    test:assertEquals(patLen(telecom), 3);
    test:assertEquals(patJ(telecom, "0", "value"), "(555)555-2004");
    test:assertEquals(patJ(telecom, "0", "use"), "home");
    test:assertEquals(patJ(telecom, "0", "system"), "phone");
    test:assertEquals(patJ(telecom, "1", "value"), "(555)555-2005");
    test:assertEquals(patJ(telecom, "2", "value"), "(555)555-3000");
}

@test:Config {}
function patPidTelecomUseBugTest() {
    hl7v23:PID pid = {
        name: "PID",
        pid13: [{xtn1: "(555)555-2004"}],
        pid14: [{xtn1: "(555)555-3000"}, {xtn1: "(555)555-3001", xtn2: "WPN"}]
    };
    json telecom = patJ(pidToPatient(pid).toJson(), "telecom");
    test:assertEquals(patJ(telecom, "0", "use"), "home");
    test:assertEquals(patJ(telecom, "1", "use"), "work");
    test:assertEquals(patJ(telecom, "2", "use"), "work");
}

@test:Config {}
function patPidEmailTelecomBugTest() {
    hl7v23:PID pid = {name: "PID", pid13: [{xtn2: "NET", xtn3: "Internet", xtn4: "adam@example.org"}]};
    json telecom = patJ(pidToPatient(pid).toJson(), "telecom");
    test:assertEquals(patJ(telecom, "0", "value"), "adam@example.org");
    test:assertEquals(patJ(telecom, "0", "system"), "email");
}

@test:Config {}
function patPidLanguageTest() {
    json p = pidToPatient(patFullPid()).toJson();
    test:assertEquals(patLen(patJ(p, "communication")), 1);
    json coding = patJ(p, "communication", "0", "language", "coding", "0");
    test:assertEquals(patJ(coding, "code"), "en");
    test:assertEquals(patJ(coding, "display"), "English");
    test:assertEquals(patJ(coding, "system"), "ISO639");
}

@test:Config {}
function patPidMaritalStatusCodeTest() {
    hl7v23:PID pid = {name: "PID", pid16: "M"};
    json p = pidToPatient(pid).toJson();
    test:assertEquals(patJ(p, "maritalStatus", "coding", "0", "code"), "M");
    pid.pid16 = "";
    test:assertEquals(pidToPatient(pid).maritalStatus, (), "Empty PID-16 should not produce maritalStatus");
}

@test:Config {}
function patPidMaritalStatusVocabularyBugTest() {
    hl7v23:PID pid = {name: "PID", pid16: "A"};
    json coding = patJ(pidToPatient(pid).toJson(), "maritalStatus", "coding", "0");
    test:assertEquals(patJ(coding, "code"), "L");
    test:assertEquals(patJ(coding, "system"), "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus");
    pid.pid16 = "U";
    coding = patJ(pidToPatient(pid).toJson(), "maritalStatus", "coding", "0");
    test:assertEquals(patJ(coding, "code"), "UNK");
    test:assertEquals(patJ(coding, "system"), "http://terminology.hl7.org/CodeSystem/v3-NullFlavor");
}

@test:Config {}
function patPidReligionBugTest() {
    hl7v23:PID pid = {name: "PID", pid17: "CAT"};
    json ext = patFindExtension(patJ(pidToPatient(pid).toJson(), "extension"),
            "http://hl7.org/fhir/StructureDefinition/patient-religion");
    test:assertEquals(patJ(ext, "valueCodeableConcept", "coding", "0", "code"), "CAT");
}

@test:Config {}
function patPidSsnValueTest() {
    hl7v23:PID pid = {name: "PID", pid19: "444333333"};
    json p = pidToPatient(pid).toJson();
    test:assertEquals(patLen(patJ(p, "identifier")), 1);
    test:assertEquals(patJ(p, "identifier", "0", "value"), "444333333");
}

@test:Config {}
function patPidSsnIdentifierBugTest() {
    hl7v23:PID pid = {name: "PID", pid19: "444333333"};
    json id = patJ(pidToPatient(pid).toJson(), "identifier", "0");
    test:assertEquals(patJ(id, "system"), "http://hl7.org/fhir/sid/us-ssn");
    test:assertEquals(patJ(id, "type", "coding", "0", "code"), "SS");
    test:assertEquals(patJ(id, "type", "coding", "0", "system"), "http://terminology.hl7.org/CodeSystem/v2-0203");
}

@test:Config {}
function patPidDriversLicenseBugTest() {
    hl7v23:PID pid = {name: "PID", pid20: {dln1: "D1234567", dln2: "NC"}};
    json ids = patJ(pidToPatient(pid).toJson(), "identifier");
    test:assertEquals(patJ(ids, "0", "value"), "D1234567");
}

@test:Config {}
function patPidBirthPlaceBugTest() {
    hl7v23:PID pid = {name: "PID", pid23: "Greensboro, NC"};
    json ext = patJ(pidToPatient(pid).toJson(), "extension", "0");
    test:assertEquals(patJ(ext, "url"), "http://hl7.org/fhir/StructureDefinition/patient-birthPlace");
    test:assertEquals(patJ(ext, "valueAddress", "text"), "Greensboro, NC");
}

@test:Config {}
function patPidMultipleBirthTest() {
    hl7v23:PID pid = {name: "PID", pid24: "Y"};
    test:assertEquals(pidToPatient(pid).multipleBirthBoolean, true, "PID-24 Y should map to true");
    pid.pid24 = "N";
    test:assertEquals(pidToPatient(pid).multipleBirthBoolean, false, "PID-24 N should map to false");
    hl7v23:PID pid2 = {name: "PID", pid25: "2"};
    international401:Patient patient = pidToPatient(pid2);
    test:assertEquals(patient.multipleBirthInteger, 2, "PID-25 should map to multipleBirthInteger");
    test:assertEquals(patient.multipleBirthBoolean, ());
}

@test:Config {}
function patPidMultipleBirthChoiceBugTest() {
    hl7v23:PID pid = {name: "PID", pid24: "Y", pid25: "2"};
    international401:Patient patient = pidToPatient(pid);
    test:assertEquals(patient.multipleBirthInteger, 2);
    test:assertEquals(patient.multipleBirthBoolean, ());
}

@test:Config {}
function patPidDeceasedDateTimeTest() {
    hl7v23:PID pid = {name: "PID", pid29: {ts1: "20200101120000"}};
    test:assertEquals(pidToPatient(pid).deceasedDateTime, "2020-01-01T12:00:00Z");
    pid.pid29 = {ts1: "20200101"};
    test:assertEquals(pidToPatient(pid).deceasedDateTime, "2020-01-01");
}

@test:Config {}
function patPidDeceasedTimezoneBugTest() {
    hl7v23:PID pid = {name: "PID", pid29: {ts1: "20200101120000+0530"}};
    test:assertEquals(pidToPatient(pid).deceasedDateTime, "2020-01-01T12:00:00+05:30");
}

@test:Config {}
function patPidDeathIndicatorBugTest() {
    hl7v23:PID pid = {name: "PID", pid30: "Y"};
    test:assertEquals(pidToPatient(pid).deceasedBoolean, true);
    pid.pid30 = "N";
    test:assertEquals(pidToPatient(pid).deceasedBoolean, false);
    hl7v23:PID pid2 = {name: "PID", pid29: {ts1: "20200101"}, pid30: "Y"};
    international401:Patient patient = pidToPatient(pid2);
    test:assertEquals(patient.deceasedDateTime, "2020-01-01");
    test:assertEquals(patient.deceasedBoolean, ());
}

@test:Config {}
function patPidCitizenshipNationalityBugTest() {
    hl7v23:PID pid = {name: "PID", pid26: ["USA"], pid28: {ce1: "USA"}};
    json exts = patJ(pidToPatient(pid).toJson(), "extension");
    json citizenship = patFindExtension(exts, "http://hl7.org/fhir/StructureDefinition/patient-citizenship");
    test:assertEquals(patJ(citizenship, "extension", "0", "url"), "code");
    test:assertEquals(patJ(citizenship, "extension", "0", "valueCodeableConcept", "coding", "0", "code"), "USA");
    json nationality = patFindExtension(exts, "http://hl7.org/fhir/StructureDefinition/patient-nationality");
    test:assertEquals(patJ(nationality, "extension", "0", "valueCodeableConcept", "coding", "0", "code"), "USA");
}

@test:Config {}
function patPidMinimalNoEmptyFieldsTest() {
    hl7v23:PID pid = {name: "PID"};
    json p = pidToPatient(pid).toJson();
    test:assertFalse(containsEmptyFields(p), string `Minimal PID produced empty fields: ${p.toJsonString()}`);
}

@test:Config {}
function patPidFullNoEmptyFieldsTest() {
    json p = pidToPatient(patFullPid()).toJson();
    test:assertFalse(containsEmptyFields(p), string `Full PID produced empty fields: ${p.toJsonString()}`);
}

// ============================== PID[Account] =================================================

@test:Config {}
function patPidAccountBugTest() returns error? {
    string adt = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB|GOOD HEALTH HOSPITAL|198808181126|SECURITY|" +
        "ADT^A01^ADT_A01|MSG00001|P|2.3||\rEVN|A01|200708181123||\rPID|1||PATID1234^^^ADT1^MR||" +
        "BATMAN^ADAM||19610615|M||||||||||PATID12345001^2^M10^ADT1^AN^A|\rPV1|1|I|2000^2012^01|";
    json bundle = check v2ToFhir(adt);
    json[] entries = <json[]>(patJ(bundle, "entry"));
    json account = ();
    foreach json e in entries {
        if patJ(e, "resource", "resourceType") == "Account" {
            account = patJ(e, "resource");
        }
    }
    test:assertEquals(patJ(account, "status"), "active");
    test:assertEquals(patJ(account, "identifier", "0", "value"), "PATID12345001");
}

// ============================== PD1[Patient] =================================================

@test:Config {}
function patPd1GeneralPractitionerTest() {
    hl7v23:PD1 pd1 = {
        name: "PD1",
        pd13: [{xon1: "Good Health Clinic", xon3: "1001", xon7: "XX"}],
        pd14: [{xcn1: "DR001", xcn2: "HOUSE", xcn3: "GREGORY"}, {xcn1: "DR002", xcn2: "WILSON"}]
    };
    json p = pd1ToPatient(pd1).toJson();
    json gp = patJ(p, "generalPractitioner");
    test:assertEquals(patLen(gp), 3, "PD1-3 and all PD1-4 repetitions should map to generalPractitioner");
    test:assertEquals(patJ(gp, "0", "type"), "Organization");
    test:assertEquals(patJ(gp, "0", "identifier", "value"), "1001");
    test:assertEquals(patJ(gp, "0", "identifier", "type", "coding", "0", "code"), "XX");
    test:assertEquals(patJ(gp, "1", "type"), "Practitioner");
    test:assertEquals(patJ(gp, "2", "type"), "Practitioner");
}

@test:Config {}
function patPd1PractitionerReferenceBugTest() {
    hl7v23:PD1 pd1 = {name: "PD1", pd14: [{xcn1: "DR001", xcn2: "HOUSE", xcn3: "GREGORY"}]};
    json gp = patJ(pd1ToPatient(pd1).toJson(), "generalPractitioner", "0");
    test:assertEquals(patJ(gp, "reference"), "Practitioner/DR001");
}

@test:Config {}
function patPd1DisabilityExtensionBugTest() {
    hl7v23:PD1 pd1 = {name: "PD1", pd16: "BL"};
    json ext = patJ(pd1ToPatient(pd1).toJson(), "extension", "0");
    test:assertEquals(patJ(ext, "url"), "http://hl7.org/fhir/StructureDefinition/patient-disability");
    test:assertEquals(patJ(ext, "valueCodeableConcept", "coding", "0", "code"), "BL");
}

@test:Config {}
function patPd1MinimalNoEmptyFieldsTest() {
    hl7v23:PD1 pd1 = {name: "PD1"};
    json p = pd1ToPatient(pd1).toJson();
    test:assertFalse(containsEmptyFields(p), string `Minimal PD1 produced empty fields: ${p.toJsonString()}`);
}

// ============================== PD1[Observation-LivingWill] ==================================

@test:Config {}
function patPd1LivingWillValueTest() {
    hl7v23:PD1 pd1 = {name: "PD1", pd17: "Y"};
    international401:Observation obs = pd1ToLivingWillObservation(pd1);
    json o = obs.toJson();
    test:assertEquals(obs.status, "final");
    test:assertEquals(patJ(o, "code", "coding", "0", "system"), "http://loinc.org");
    test:assertEquals(patJ(o, "valueCodeableConcept", "coding", "0", "code"), "Y");
}

@test:Config {}
function patPd1LivingWillCodeBugTest() {
    hl7v23:PD1 pd1 = {name: "PD1", pd17: "F"};
    json o = pd1ToLivingWillObservation(pd1).toJson();
    test:assertEquals(patJ(o, "code", "coding", "0", "code"), "75320-2");
    test:assertEquals(patJ(o, "valueCodeableConcept", "coding", "0", "system"),
            "http://terminology.hl7.org/CodeSystem/v2-0315");
    test:assertFalse(containsEmptyFields(o), string `Living will observation has empty fields: ${o.toJsonString()}`);
}

// ============================== NK1[Patient] =================================================

function patFullNk1() returns hl7v23:NK1 => {
    name: "NK1",
    nk11: "1",
    nk12: [{xpn1: "NUCLEAR", xpn2: "NELDA", xpn3: "W", xpn7: "L"}],
    nk13: {ce1: "SPO", ce2: "Spouse", ce3: "HL70063"},
    nk14: [{xad1: "2222 HOME STREET", xad3: "GREENSBORO", xad4: "NC", xad5: "27401", xad7: "H"}],
    nk15: [{xtn1: "(555)555-1111", xtn2: "PRN", xtn3: "PH"}],
    nk16: [{xtn1: "(555)555-2222", xtn3: "PH"}],
    nk17: {ce1: "N", ce2: "Next-of-Kin", ce3: "HL70131"},
    nk18: "20200101",
    nk19: "20251231",
    nk112: {cx1: "EMP-77", cx5: "EI"},
    nk113: [{xon1: "ACME Corp", xon3: "555"}],
    nk115: "F",
    nk116: {ts1: "19650312"},
    nk120: {ce1: "fr", ce2: "French"},
    nk130: [{xpn1: "CONTACT", xpn2: "CARL"}],
    nk131: [{xtn1: "(555)555-3333", xtn3: "PH"}],
    nk132: [{xad1: "1 OFFICE RD", xad3: "DURHAM", xad7: "O"}],
    nk133: [{cx1: "NK-ID-1", cx5: "PI"}, {cx1: "NK-ID-2", cx5: "MR"}],
    nk137: "123-45-6789"
};

@test:Config {}
function patNk1ToPatientContactTest() {
    json p = nk1ToPatient(patFullNk1()).toJson();
    test:assertEquals(patLen(patJ(p, "contact")), 1);
    json contact = patJ(p, "contact", "0");
    test:assertEquals(patJ(contact, "name", "family"), "NUCLEAR");
    test:assertEquals(patJ(contact, "name", "given"), ["NELDA", "W"]);
    test:assertEquals(patJ(contact, "address", "city"), "GREENSBORO");
    test:assertEquals(patJ(contact, "address", "use"), "home");
    test:assertEquals(patLen(patJ(contact, "telecom")), 2, "NK1-5 and NK1-6 should map to contact.telecom");
    test:assertEquals(patJ(contact, "telecom", "0", "value"), "(555)555-1111");
    test:assertEquals(patJ(contact, "telecom", "1", "value"), "(555)555-2222");
    test:assertEquals(patJ(contact, "gender"), "female");
    json[] relationship = <json[]>patJ(contact, "relationship");
    boolean hasContactRole = false;
    foreach json rel in relationship {
        if patJ(rel, "coding", "0", "code") == "N" {
            hasContactRole = true;
        }
    }
    test:assertTrue(hasContactRole, "NK1-7 should map to contact.relationship");
}

@test:Config {}
function patNk1ContactRelationshipBugTest() {
    json contact = patJ(nk1ToPatient(patFullNk1()).toJson(), "contact", "0");
    test:assertEquals(patLen(patJ(contact, "relationship")), 2);
    test:assertEquals(patJ(contact, "relationship", "0", "coding", "0", "code"), "SPS");
    test:assertEquals(patJ(contact, "relationship", "1", "coding", "0", "code"), "N");
}

@test:Config {}
function patNk1ContactPeriodBugTest() {
    json contact = patJ(nk1ToPatient(patFullNk1()).toJson(), "contact", "0");
    test:assertEquals(patJ(contact, "period", "start"), "2020-01-01");
    test:assertEquals(patJ(contact, "period", "end"), "2025-12-31");
}

@test:Config {}
function patNk1WorkPhoneUseBugTest() {
    json contact = patJ(nk1ToPatient(patFullNk1()).toJson(), "contact", "0");
    test:assertEquals(patJ(contact, "telecom", "1", "use"), "work");
    json rp = nk1ToRelatedPerson(patFullNk1()).toJson();
    test:assertEquals(patJ(rp, "telecom", "1", "use"), "work");
}

@test:Config {}
function patNk1ContactOrganizationBugTest() {
    json contact = patJ(nk1ToPatient(patFullNk1()).toJson(), "contact", "0");
    test:assertTrue(patJ(contact, "organization") != (), "NK1-13 should map to contact.organization");
}

@test:Config {}
function patNk1ToPatientMinimalBugTest() {
    hl7v23:NK1 nk1 = {name: "NK1"};
    json p = nk1ToPatient(nk1).toJson();
    test:assertFalse(containsEmptyFields(p), string `Minimal NK1 produced empty fields: ${p.toJsonString()}`);
}

// ============================== NK1[RelatedPerson] ===========================================

@test:Config {}
function patNk1ToRelatedPersonFullTest() {
    international401:RelatedPerson relatedPerson = nk1ToRelatedPerson(patFullNk1());
    json rp = relatedPerson.toJson();
    // name: NK1-2 + NK1-30
    test:assertEquals(patLen(patJ(rp, "name")), 2);
    test:assertEquals(patJ(rp, "name", "0", "family"), "NUCLEAR");
    test:assertEquals(patJ(rp, "name", "1", "family"), "CONTACT");
    // relationship: NK1-3 + NK1-7
    test:assertEquals(patLen(patJ(rp, "relationship")), 2);
    test:assertEquals(patJ(rp, "relationship", "1", "coding", "0", "code"), "N");
    // address: NK1-4 + NK1-32
    test:assertEquals(patLen(patJ(rp, "address")), 2);
    test:assertEquals(patJ(rp, "address", "0", "city"), "GREENSBORO");
    test:assertEquals(patJ(rp, "address", "1", "city"), "DURHAM");
    // telecom: NK1-5 + NK1-6 + NK1-31
    test:assertEquals(patLen(patJ(rp, "telecom")), 3);
    test:assertEquals(patJ(rp, "telecom", "2", "value"), "(555)555-3333");
    // period: NK1-8/9
    test:assertEquals(patJ(rp, "period", "start"), "2020-01-01");
    test:assertEquals(patJ(rp, "period", "end"), "2025-12-31");
    test:assertEquals(relatedPerson.gender, "female");
    test:assertEquals(relatedPerson.birthDate, "1965-03-12");
    // identifier: NK1-12 + NK1-33 (2) + NK1-37
    json ids = patJ(rp, "identifier");
    test:assertEquals(patLen(ids), 4);
    test:assertEquals(patJ(ids, "0", "value"), "EMP-77");
    test:assertEquals(patJ(ids, "1", "value"), "NK-ID-1");
    test:assertEquals(patJ(ids, "2", "value"), "NK-ID-2");
    test:assertEquals(patJ(ids, "3", "value"), "123-45-6789");
    test:assertEquals(patJ(ids, "3", "system"), "http://hl7.org/fhir/sid/us-ssn");
    test:assertEquals(patJ(ids, "3", "type", "coding", "0", "code"), "SS");
    test:assertEquals(patJ(ids, "3", "type", "coding", "0", "system"), "http://terminology.hl7.org/CodeSystem/v2-0203");
    // communication: NK1-20
    test:assertEquals(patJ(rp, "communication", "0", "language", "coding", "0", "code"), "fr");
}

@test:Config {}
function patNk1ToRelatedPersonPeriodStartOnlyTest() {
    hl7v23:NK1 nk1 = {name: "NK1", nk12: [{xpn1: "DOE"}], nk18: "20200115"};
    json rp = nk1ToRelatedPerson(nk1).toJson();
    test:assertEquals(patJ(rp, "period", "start"), "2020-01-15");
    test:assertEquals(patJ(rp, "period", "end"), ());
}

@test:Config {}
function patNk1RelationshipVocabularyBugTest() {
    json rp = nk1ToRelatedPerson(patFullNk1()).toJson();
    test:assertEquals(patJ(rp, "relationship", "0", "coding", "0", "code"), "SPS");
    test:assertEquals(patJ(rp, "relationship", "0", "coding", "0", "system"),
            "http://terminology.hl7.org/CodeSystem/v3-RoleCode");
    test:assertEquals(patJ(rp, "relationship", "1", "coding", "0", "system"),
            "http://terminology.hl7.org/CodeSystem/v2-0131");
}

@test:Config {}
function patNk1BirthDateTimeBugTest() {
    hl7v23:NK1 nk1 = {name: "NK1", nk116: {ts1: "196503121230"}};
    test:assertEquals(nk1ToRelatedPerson(nk1).birthDate, "1965-03-12");
}

@test:Config {}
function patNk1ToRelatedPersonMinimalTest() {
    hl7v23:NK1 nk1 = {name: "NK1"};
    international401:RelatedPerson rp = nk1ToRelatedPerson(nk1);
    test:assertEquals(rp.name, ());
    test:assertEquals(rp.identifier, ());
    test:assertEquals(rp.telecom, ());
    test:assertEquals(rp.address, ());
    test:assertEquals(rp.gender, ());
    test:assertEquals(rp.period, ());
    json j = rp.toJson();
    test:assertFalse(containsEmptyFields(j), string `Minimal NK1 RelatedPerson has empty fields: ${j.toJsonString()}`);
}

// ============================== MRG[Account] =================================================

@test:Config {}
function patMrgToAccountTest() {
    hl7v23:MRG mrg = {name: "MRG", mrg3: {cx1: "ACCT-12345", cx2: "7", cx5: "AN"}};
    international401:Account account = mrgToAccount(mrg);
    json a = account.toJson();
    test:assertEquals(account.status, "unknown");
    test:assertEquals(patLen(patJ(a, "identifier")), 1);
    test:assertEquals(patJ(a, "identifier", "0", "value"), "ACCT-12345");
    test:assertEquals(patJ(a, "identifier", "0", "type", "coding", "0", "code"), "AN");
    json checkDigit = patFindExtension(patJ(a, "identifier", "0", "extension"),
            "http://hl7.org/fhir/StructureDefinition/identifier-checkDigit");
    test:assertEquals(patJ(checkDigit, "valueString"), "7");
}

@test:Config {}
function patMrgToAccountMinimalTest() {
    hl7v23:MRG mrg = {name: "MRG", mrg1: [{cx1: "OLD-MRN"}]};
    international401:Account account = mrgToAccount(mrg);
    test:assertEquals(account.status, "unknown");
    test:assertEquals(account.identifier, (), "MRG-1 must not populate Account.identifier");
    json a = account.toJson();
    test:assertFalse(containsEmptyFields(a), string `Minimal MRG Account has empty fields: ${a.toJsonString()}`);
}

// ============================== ROL[RelatedPerson] ===========================================

@test:Config {}
function patRolToRelatedPersonTest() {
    hl7v23:ROL rol = {
        name: "ROL",
        rol1: {ei1: "ROLE-001"},
        rol2: "AD",
        rol3: {ce1: "PP", ce2: "Primary Care Provider", ce3: "HL70443"},
        rol4: {xcn1: "REL001", xcn2: "WILSON", xcn3: "BOB"},
        rol5: {ts1: "20200101"},
        rol6: {ts1: "202512311530"}
    };
    international401:RelatedPerson rp = rolToRelatedPerson(rol);
    json j = rp.toJson();
    test:assertEquals(patJ(j, "identifier", "0", "value"), "ROLE-001");
    test:assertEquals(patJ(j, "relationship", "0", "coding", "0", "code"), "PP");
    test:assertEquals(patJ(j, "relationship", "0", "coding", "0", "display"), "Primary Care Provider");
    test:assertEquals(patJ(j, "name", "0", "family"), "WILSON");
    test:assertEquals(patJ(j, "name", "0", "given"), ["BOB"]);
    test:assertEquals(patJ(j, "period", "start"), "2020-01-01");
    test:assertEquals(patJ(j, "period", "end"), "2025-12-31T15:30:00Z");
}

@test:Config {}
function patRolNameBugTest() {
    hl7v23:ROL rol = {
        name: "ROL",
        rol4: {xcn1: "REL001", xcn2: "WILSON", xcn3: "BOB", xcn4: "J", xcn5: "JR", xcn6: "MR"}
    };
    json j = rolToRelatedPerson(rol).toJson();
    test:assertEquals(patJ(j, "name", "0", "given"), ["BOB", "J"]);
    test:assertEquals(patJ(j, "name", "0", "suffix"), ["JR"]);
    test:assertEquals(patJ(j, "name", "0", "prefix"), ["MR"]);
    test:assertEquals(patJ(j, "identifier", "0", "value"), "REL001");
}

@test:Config {}
function patRolMinimalBugTest() {
    hl7v23:ROL rol = {name: "ROL", rol3: {ce1: "PP"}};
    json j = rolToRelatedPerson(rol).toJson();
    test:assertFalse(containsEmptyFields(j), string `ROL RelatedPerson has empty fields: ${j.toJsonString()}`);
}

@test:Config {}
function patRolMinimalNoCrashTest() {
    hl7v23:ROL rol = {name: "ROL"};
    international401:RelatedPerson rp = rolToRelatedPerson(rol);
    test:assertEquals(rp.identifier, ());
    test:assertEquals(rp.relationship, ());
    test:assertEquals(rp.name, ());
    test:assertEquals(rp.period, ());
}
