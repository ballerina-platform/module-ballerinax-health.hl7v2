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

// Unit tests for the HL7 v2.3 -> FHIR R4 data type mappings (datatypes_mappings.bal, helper_enums.bal)
// and the date helpers in utilities.bal, verified against the HL7 v2-to-FHIR IG datatype and
// concept-map spreadsheets. Tests annotated with `enable: false` and a `// BUG:` comment document
// spec-correct behaviour that the current implementation does not yet satisfy.

import ballerina/test;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;
import ballerinax/health.hl7v23;

const DT_V2_0203 = "http://terminology.hl7.org/CodeSystem/v2-0203";

// ---------------------------------------------------------------------------------------------
// CE[CodeableConcept] / CE -> Coding  (datatypes/CE[CodeableConcept], CWE[Coding])
// ---------------------------------------------------------------------------------------------

final hl7v23:CE dtFullCe = {
    ce1: "F-11380",
    ce2: "CREATININE",
    ce3: "I9",
    ce4: "2148-5",
    ce5: "CREATININE",
    ce6: "LN"
};

@test:Config {}
function dtCeToCodeableConceptPrimaryAndAlternateCodings() {
    r4:CodeableConcept cc = ceToCodeableConcept(dtFullCe);
    r4:Coding[] codings = cc.coding ?: [];
    test:assertEquals(codings.length(), 2, "CE.1-3 -> coding[1] and CE.4-6 -> coding[2]");
    test:assertEquals(codings[0].code, "F-11380");
    test:assertEquals(codings[0].display, "CREATININE");
    test:assertEquals(codings[1].code, "2148-5");
    test:assertEquals(codings[1].display, "CREATININE");
    test:assertFalse(containsEmptyFields(cc.toJson()));
}

@test:Config {}
function dtCeCodingSystemTranslatedToUri() {
    r4:Coding[] codings = ceToCodeableConcept(dtFullCe).coding ?: [];
    test:assertEquals(codings[0].system, "http://hl7.org/fhir/sid/icd-9-cm");
    test:assertEquals(codings[1].system, "http://loinc.org");
}

@test:Config {}
function dtCeToCodingPrimaryOnly() {
    r4:Coding coding = ceToCoding({ce1: "SPO", ce2: "SPOUSE"});
    test:assertEquals(coding.toJson(), {code: "SPO", display: "SPOUSE"});
}

@test:Config {}
function dtCeToCodingsAlternateOnly() {
    r4:Coding[]? codings = ceToCodings({ce4: "2148-5", ce5: "CREATININE"});
    test:assertEquals(codings.toJson(), [{code: "2148-5", display: "CREATININE"}]);
}

@test:Config {}
function dtCeEmptyProducesNoCodings() {
    test:assertEquals(ceToCodings({}), ());
    r4:CodeableConcept cc = ceToCodeableConcept({});
    test:assertEquals(cc.coding, ());
    test:assertEquals(ceToCoding({}).toJson(), {});
    test:assertEquals(ceToCode({}), ());
    test:assertEquals(ceToUri({}), ());
}

@test:Config {}
function dtCeToCodeAndUri() {
    test:assertEquals(ceToCode(dtFullCe), "F-11380");
    test:assertEquals(ceToUri({ce1: "http://example.org/x"}), "http://example.org/x");
}

@test:Config {}
function dtCeToCodeableConceptsValued() {
    r4:CodeableConcept[] ccs = ceToCodeableConcepts({ce1: "R10", ce2: "Abdominal pain", ce3: "I10"});
    test:assertEquals(ccs.length(), 1);
    test:assertEquals((ccs[0].coding ?: [])[0].code, "R10");
}

@test:Config {}
function dtCeToCodeableConceptsEmptyYieldsNoElement() {
    test:assertEquals(ceToCodeableConcepts({}).length(), 0);
}

// ---------------------------------------------------------------------------------------------
// CX[Identifier]
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtCxToIdentifierAllV23Components() {
    hl7v23:CX cx = {
        cx1: "PATID1234",
        cx2: "5",
        cx3: "M11",
        cx4: {hd1: "ADT1"},
        cx5: "MR",
        cx6: {hd1: "GOOD HEALTH HOSPITAL"}
    };
    r4:Identifier identifier = cxToIdentifier(cx);
    test:assertEquals(identifier.value, "PATID1234");
    test:assertEquals(identifier.'type.toJson(), {coding: [{code: "MR", system: DT_V2_0203}]});
    test:assertEquals(identifier.extension.toJson(), [
        {url: "http://hl7.org/fhir/StructureDefinition/identifier-checkDigit", valueString: "5"},
        {url: "http://hl7.org/fhir/StructureDefinition/namingsystem-checkDigit", valueString: "M11"}
    ]);
    test:assertEquals(identifier.period, ());
    test:assertFalse(containsEmptyFields(identifier.toJson()));
}

@test:Config {}
function dtCxValueOnly() {
    test:assertEquals(cxToIdentifier({cx1: "123456789"}).toJson(), {value: "123456789"});
}

@test:Config {}
function dtCxEmptyProducesEmptyIdentifier() {
    test:assertEquals(cxToIdentifier({}).toJson(), {});
}

@test:Config {}
function dtCxAssigningAuthorityMapped() {
    r4:Identifier identifier = cxToIdentifier({cx1: "123456789", cx4: {hd1: "USSSA"}, cx5: "SS"});
    test:assertTrue(identifier.system != () || identifier.assigner != (),
            "CX.4 must populate Identifier.system or Identifier.assigner");
}

// ---------------------------------------------------------------------------------------------
// XAD[Address] + AddressType[Type]/AddressType[Use] concept maps
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtXadToAddressAllComponents() {
    hl7v23:XAD xad = {
        xad1: "2222 HOME STREET",
        xad2: "APT 3",
        xad3: "GREENSBORO",
        xad4: "NC",
        xad5: "27401-1020",
        xad6: "USA",
        xad7: "H",
        xad8: "GUILFORD",
        xad9: "GL",
        xad10: "1234.56"
    };
    r4:Address? address = xadToAddress(xad);
    test:assertEquals(address.toJson(), {
        line: ["2222 HOME STREET", "APT 3"],
        city: "GREENSBORO",
        state: "NC",
        postalCode: "27401-1020",
        country: "USA",
        use: "home",
        district: "GL",
        extension: [
            {url: "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract", valueString: "1234.56"}
        ]
    });
    test:assertFalse(containsEmptyFields(address.toJson()));
}

@test:Config {}
function dtXadOnlyOtherDesignation() {
    test:assertEquals(xadToAddress({xad2: "SUITE 100"}).toJson(), {line: ["SUITE 100"]});
}

@test:Config {}
function dtXadEmptyReturnsNil() {
    test:assertEquals(xadToAddress({}), ());
}

@test:Config {}
function dtXadAddressTypeMailingAndShipping() {
    r4:Address? mailing = xadToAddress({xad3: "X", xad7: "M"});
    r4:Address? shipping = xadToAddress({xad3: "X", xad7: "SH"});
    test:assertEquals(mailing?.'type, "postal");
    test:assertEquals(mailing?.use, ());
    test:assertEquals(shipping?.'type, "postal");
    test:assertEquals(shipping?.use, ());
}

@test:Config {}
function dtXadAddressUseHomeOfficeBusiness() {
    test:assertEquals(xadToAddress({xad3: "X", xad7: "H"})?.use, "home");
    test:assertEquals(xadToAddress({xad3: "X", xad7: "O"})?.use, "work");
    test:assertEquals(xadToAddress({xad3: "X", xad7: "B"})?.use, "work");
    test:assertEquals(xadToAddress({xad3: "X", xad7: "H"})?.'type, ());
}

@test:Config {}
function dtXadAddressUseBadBillingTemporary() {
    test:assertEquals(xadToAddress({xad3: "X", xad7: "BA"})?.use, "old");
    test:assertEquals(xadToAddress({xad3: "X", xad7: "BI"})?.use, "billing");
    test:assertEquals(xadToAddress({xad3: "X", xad7: "C"})?.use, "temp");
}

@test:Config {}
function dtXadUnmappedAddressTypeGivesNoTypeOrUse() {
    r4:Address? address = xadToAddress({xad3: "X", xad7: "P"});
    test:assertEquals(address?.use, ());
    test:assertEquals(address?.'type, ());
}

@test:Config {}
function dtXadHomeVacationExtension() {
    r4:Address? address = xadToAddress({xad3: "X", xad7: "HV"});
    test:assertEquals(address?.use, ());
    test:assertEquals(address?.'type, ());
    test:assertEquals(address?.extension.toJson(), [
        {url: "http://hl7.org/fhir/StructureDefinition/iso21090-AD-use", valueCode: "HV"}
    ]);
}

// SPEC GAP: XAD[Address] row 7 (extension[2]) carries the original XAD.7 code in v2-0190 but leaves the
// extension url unspecified, so it is not mapped until the IG defines it.
@test:Config {enable: false}
function dtXadAddressTypeOriginalCodeExtension() {
    r4:Address? address = xadToAddress({xad3: "X", xad7: "L"});
    test:assertTrue(address?.extension.toJson().toJsonString().includes("http://terminology.hl7.org/CodeSystem/v2-0190"));
}

@test:Config {}
function dtXadRepetitionsViaPidAddress() {
    hl7v23:XAD[] addresses = [
        {xad1: "1 MAIN ST", xad3: "CITY1", xad7: "H"},
        {},
        {xad1: "2 WORK RD", xad3: "CITY2", xad7: "O"}
    ];
    r4:Address[]? result = pidToAddress("", addresses);
    r4:Address[] list = result ?: [];
    test:assertEquals(list.length(), 2, "empty XAD repetition must be skipped");
    test:assertEquals(list[0].city, "CITY1");
    test:assertEquals(list[1].use, "work");
}

// ---------------------------------------------------------------------------------------------
// XPN[HumanName] + NameType concept map
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtXpnToHumanNameAllComponents() {
    hl7v23:XPN xpn = {xpn1: "BATMAN", xpn2: "ADAM", xpn3: "A", xpn4: "III", xpn5: "DR", xpn6: "MD", xpn7: "L"};
    r4:HumanName name = xpnToHumanName(xpn);
    test:assertEquals(name.toJson(), {
        family: "BATMAN",
        given: ["ADAM", "A"],
        suffix: ["III", "MD"],
        prefix: ["DR"],
        use: "official"
    });
}

@test:Config {}
function dtXpnPartialComponents() {
    test:assertEquals(xpnToHumanName({xpn1: "DOE", xpn3: "Q", xpn6: "PHD"}).toJson(),
            {family: "DOE", given: ["Q"], suffix: ["PHD"]});
}

@test:Config {}
function dtXpnEmptyReturnsEmptyName() {
    test:assertEquals(xpnToHumanName({}).toJson(), {});
}

@test:Config {}
function dtXpnNameTypeMappedCodes() {
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "L"}).use, "official");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "D"}).use, "usual");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "M"}).use, "maiden");
}

@test:Config {}
function dtXpnNameTypeMissingCodes() {
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "N"}).use, "nickname");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "R"}).use, "official");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "BAD"}).use, "old");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "TEMP"}).use, "temp");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "NAV"}).use, "temp");
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "MSK"}).use, "anonymous");
}

@test:Config {}
function dtXpnNameTypeUnmappedCodesHaveNoUse() {
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "A"}).use, ());
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "O"}).use, ());
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "C"}).use, ());
    test:assertEquals(xpnToHumanName({xpn1: "X", xpn7: "ZZ"}).use, ());
}

@test:Config {}
function dtXpnRepetitionsViaPidName() {
    hl7v23:XPN[] names = [{xpn1: "BATMAN", xpn2: "ADAM", xpn7: "L"}, {}, {xpn1: "WAYNE", xpn7: "M"}];
    r4:HumanName[] result = pidToPatientName(names, []) ?: [];
    test:assertEquals(result.length(), 2);
    test:assertEquals(result[1].use, "maiden");
}

// ---------------------------------------------------------------------------------------------
// XTN[ContactPoint] + TelecommunicationUseCode / TelecommunicationEquipmentType concept maps
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtXtnUnformattedNumber() {
    r4:ContactPoint? cp = xtnToContactPoint({xtn1: "(555)555-2004", xtn2: "PRN", xtn3: "PH"});
    test:assertEquals(cp.toJson(), {value: "(555)555-2004", use: "home", system: "phone"});
}

@test:Config {}
function dtXtnInternetAddressValueFromXtn4() {
    r4:ContactPoint? cp = xtnToContactPoint({xtn2: "NET", xtn3: "Internet", xtn4: "adam@example.com", xtn7: "5552004"});
    test:assertEquals(cp?.value, "adam@example.com");
    test:assertFalse(cp.toJson().toJsonString().includes("contactpoint-local"),
            "XTN.7 must not be mapped when XTN.3 is Internet/X.400");
}

@test:Config {}
function dtXtnStructuredNumberAllParts() {
    r4:ContactPoint? cp = xtnToContactPoint({xtn5: "1", xtn6: "555", xtn7: "5552004", xtn8: "123"});
    test:assertEquals(cp?.value, "+1 555 5552004 X123");
    test:assertEquals(cp?.extension.toJson(), [
        {url: "http://hl7.org/fhir/StructureDefinition/contactpoint-country", valueString: "1"},
        {url: "http://hl7.org/fhir/StructureDefinition/contactpoint-area", valueString: "555"},
        {url: "http://hl7.org/fhir/StructureDefinition/contactpoint-local", valueString: "5552004"},
        {url: "http://hl7.org/fhir/StructureDefinition/contactpoint-extension", valueString: "123"}
    ]);
}

@test:Config {}
function dtXtnStructuredNumberVariants() {
    test:assertEquals(xtnToContactPoint({xtn6: "555", xtn7: "5552004"})?.value, "555 5552004");
    test:assertEquals(xtnToContactPoint({xtn5: "1", xtn6: "555", xtn7: "5552004"})?.value, "+1 555 5552004");
    test:assertEquals(xtnToContactPoint({xtn6: "555", xtn7: "5552004", xtn8: "12"})?.value, "555 5552004 X12");
}

@test:Config {}
function dtXtnComponentsPreferredOverXtn1WhenXtn7Valued() {
    r4:ContactPoint? cp = xtnToContactPoint({xtn1: "(555)555-2004", xtn6: "555", xtn7: "5552004"});
    test:assertEquals(cp?.value, "555 5552004");
}

@test:Config {}
function dtXtnEmptyReturnsNil() {
    test:assertEquals(xtnToContactPoint({}), ());
}

@test:Config {}
function dtXtnRepetitionsViaPidPhone() {
    hl7v23:XTN[] home = [{xtn1: "(555)555-2004", xtn2: "PRN", xtn3: "PH"}, {}];
    hl7v23:XTN[] work = [{xtn1: "(555)555-9999", xtn3: "PH"}];
    r4:ContactPoint[] result = pidToPhoneNumber(home, work) ?: [];
    test:assertEquals(result.length(), 2);
    test:assertFalse(containsEmptyFields(result.toJson()));
}

@test:Config {}
function dtXtnTelecomUseCodeConceptMap() {
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn2: "PRN"})?.use, "home");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn2: "WPN"})?.use, "work");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn2: "PRS"})?.use, "mobile");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn2: "ORN"})?.use, ());
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn2: "EMR"})?.use, ());
}

@test:Config {}
function dtXtnTelecomEquipmentTypeConceptMap() {
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn3: "PH"})?.system, "phone");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn3: "FX"})?.system, "fax");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn3: "BP"})?.system, "pager");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn3: "MD"})?.system, "other");
    test:assertEquals(xtnToContactPoint({xtn1: "1", xtn3: "TDD"})?.system, "other");
    test:assertEquals(xtnToContactPoint({xtn3: "Internet", xtn4: "a@b.org"})?.system, "email");
    test:assertEquals(xtnToContactPoint({xtn3: "X.400", xtn4: "a@b.org"})?.system, "email");
}

// ---------------------------------------------------------------------------------------------
// XON[Organization]
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtXonToOrganization() {
    international401:Organization org = xonToOrganization({xon1: "GOOD HEALTH HOSPITAL", xon3: "12345", xon7: "XX"});
    test:assertEquals(org.name, "GOOD HEALTH HOSPITAL");
    test:assertEquals(org.identifier.toJson(), [
        {value: "12345", 'type: {coding: [{code: "XX", system: DT_V2_0203}]}}
    ]);
}

@test:Config {}
function dtXonNameOnlyHasNoIdentifier() {
    international401:Organization org = xonToOrganization({xon1: "ACME"});
    test:assertEquals(org.identifier, ());
    test:assertFalse(containsEmptyFields(org.toJson()));
}

@test:Config {}
function dtXonEmpty() {
    international401:Organization org = xonToOrganization({});
    test:assertEquals(org.name, ());
    test:assertEquals(org.identifier, ());
}

@test:Config {}
function dtXonToReference() {
    test:assertEquals(xonToReference({xon3: "999", xon7: "NPI"}).toJson(),
            {identifier: {value: "999", 'type: {coding: [{code: "NPI", system: DT_V2_0203}]}}});
    test:assertEquals(xonToReference({}), ());
}

@test:Config {}
function dtXonCheckDigitExtensions() {
    international401:Organization org = xonToOrganization({xon1: "ACME", xon3: "12345", xon4: "6", xon5: "M10"});
    string j = org.toJson().toJsonString();
    test:assertTrue(j.includes("identifier-checkDigit"));
    test:assertTrue(j.includes("namingsystem-checkDigit"));
}

@test:Config {}
function dtXonAssigningAuthority() {
    international401:Organization org = xonToOrganization({xon1: "ACME", xon3: "12345", xon6: {hd1: "NPPES"}});
    r4:Identifier[] ids = org.identifier ?: [];
    test:assertEquals(ids.length(), 1);
    test:assertTrue(ids[0].system != () || ids[0].assigner != ());
}

// ---------------------------------------------------------------------------------------------
// XCN[Practitioner] (name part) and XCN references
// ---------------------------------------------------------------------------------------------

final hl7v23:XCN dtFullXcn = {
    xcn1: "004777",
    xcn2: "ATTEND",
    xcn3: "AARON",
    xcn4: "A",
    xcn5: "JR",
    xcn6: "DR",
    xcn7: "MD",
    xcn10: "L"
};

@test:Config {}
function dtXcnToHumanNameFamilyAndGiven() {
    r4:HumanName name = xcnToHumanName(dtFullXcn);
    test:assertEquals(name.family, "ATTEND");
    test:assertEquals((name.given ?: [])[0], "AARON");
}

@test:Config {}
function dtXcnToHumanNameSpecComponents() {
    test:assertEquals(xcnToHumanName(dtFullXcn).toJson(), {
        family: "ATTEND",
        given: ["AARON", "A"],
        suffix: ["JR"],
        prefix: ["DR"],
        use: "official"
    });
}

@test:Config {}
function dtXcnEmptyHumanName() {
    test:assertEquals(xcnToHumanName({}).toJson(), {});
}

@test:Config {}
function dtXcnReferences() {
    test:assertEquals(xcnToReferenceWithType(dtFullXcn, "Practitioner").reference, "Practitioner/004777");
    r4:Reference withName = xcnToReferenceWithName(dtFullXcn, "Practitioner");
    test:assertEquals(withName.toJson(), {reference: "Practitioner/004777", display: "AARON ATTEND"});
    test:assertEquals(xcnToReferenceWithName({xcn1: "123"}, "Practitioner").display, "123");
    test:assertEquals(xcnToReferenceWithType({}, "Practitioner").toJson(), {});
    test:assertEquals(xcnToReferenceWithName({}, "Practitioner").toJson(), {});
    test:assertEquals(xcnToCodeableConcept(dtFullXcn).toJson(), {coding: [{code: "004777"}]});
}

@test:Config {}
function dtXcnToReferenceIsValidLiteralOrIdentifier() {
    r4:Reference ref = xcnToReference(dtFullXcn);
    string? reference = ref.reference;
    test:assertTrue(reference is () || reference.includes("/"),
            "Reference.reference must be a type-qualified literal reference");
    test:assertTrue(reference is string || ref.identifier?.value == "004777");
}

// ---------------------------------------------------------------------------------------------
// HD[MessageHeader.source-*] / HD[MessageHeader.destination-*]
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtHdSourceNamespaceIdOnly() {
    international401:MessageHeaderSource src = hdToMessageHeaderSource({hd1: "ADT1"});
    test:assertEquals(src.name, "ADT1");
}

@test:Config {}
function dtHdSourceEndpointUniversalIdTypes() {
    test:assertEquals(hdToMessageHeaderSource({hd2: "2.16.840.1.113883.3.72", hd3: "ISO"}).endpoint,
            "urn:oid:2.16.840.1.113883.3.72");
    test:assertEquals(hdToMessageHeaderSource({hd2: "4e8d1f3c-1111-4b6b-9a52-111111111111", hd3: "UUID"}).endpoint,
            "urn:uuid:4e8d1f3c-1111-4b6b-9a52-111111111111");
    test:assertEquals(hdToMessageHeaderSource({hd2: "lab.example.org", hd3: "DNS"}).endpoint,
            "urn:dns:lab.example.org");
    test:assertEquals(hdToMessageHeaderSource({hd2: "http://lab.example.org", hd3: "URI"}).endpoint,
            "urn:uri:http://lab.example.org");
}

@test:Config {}
function dtHdDestinationEndpointIsoAndUuid() {
    test:assertEquals(hdToMessageHeaderDestination({hd1: "LAB", hd2: "1.2.3", hd3: "ISO"}).endpoint, "urn:oid:1.2.3");
    test:assertEquals(hdToMessageHeaderDestination({hd2: "abc", hd3: "UUID"}).endpoint, "urn:uuid:abc");
    test:assertEquals(hdToMessageHeaderDestination({hd2: "local-id", hd3: "L"}).endpoint, "local-id");
}

// BUG (upstream): an empty HD should give endpoint + data-absent-reason, but international401's
// MessageHeaderSource/Destination are closed records with a mandatory `endpoint` string, so "" is emitted.
@test:Config {enable: false}
function dtHdEmptyNoEmptyEndpoint() {
    test:assertFalse(containsEmptyFields(hdToMessageHeaderSource({}).toJson()));
    test:assertFalse(containsEmptyFields(hdToMessageHeaderDestination({}).toJson()));
}

@test:Config {}
function dtHdSourceNameAndSoftware() {
    international401:MessageHeaderSource src = hdToMessageHeaderSource({hd1: "ADT1", hd2: "1.2.3", hd3: "ISO"});
    test:assertEquals(src.name, "ADT1");
    test:assertEquals(src.software, "1.2.3");
}

@test:Config {}
function dtHdDestinationEndpointOtherTypesUnprefixed() {
    test:assertEquals(hdToMessageHeaderDestination({hd2: "lab.example.org", hd3: "DNS"}).endpoint, "lab.example.org");
}

// ---------------------------------------------------------------------------------------------
// MSG[Coding] (v2.3 CM_MSG) and PT[Meta]
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtMsgToCodingSystemAndDisplay() {
    r4:Coding coding = msgToCoding({cm_msg1: "ADT", cm_msg2: "A01"});
    test:assertEquals(coding.system, "http://terminology.hl7.org/CodeSystem/v2-0003");
    test:assertEquals(coding.display, "ADT^A01");
}

@test:Config {}
function dtMsgToCodingCodeIsTriggerEvent() {
    test:assertEquals(msgToCoding({cm_msg1: "ADT", cm_msg2: "A01"}).code, "A01");
}

@test:Config {}
function dtMsgEmptyHasNoCodeOrDisplay() {
    r4:Coding coding = msgToCoding({});
    test:assertEquals(coding.code, ());
    test:assertEquals(coding.display, ());
}

@test:Config {}
function dtPtToMeta() {
    test:assertEquals(ptToMeta({pt1: "P", pt2: "T"}).toJson(), {
        tag: [
            {code: "P", system: "http://terminology.hl7.org/CodeSystem/v2-0103"},
            {code: "T", system: "http://terminology.hl7.org/CodeSystem/v2-0207"}
        ]
    });
    test:assertEquals(ptToMeta({pt1: "D"}).toJson(),
            {tag: [{code: "D", system: "http://terminology.hl7.org/CodeSystem/v2-0103"}]});
    test:assertEquals(ptToMeta({}).toJson(), {});
}

// ---------------------------------------------------------------------------------------------
// EI, ID conversions
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtEiConversions() {
    hl7v23:EI ei = {ei1: "MSG00001", ei2: "ADT1", ei3: "1.2.3", ei4: "ISO"};
    test:assertEquals(eiToIdentifier(ei).value, "MSG00001");
    test:assertEquals(eiToCoding(ei).toJson(), {code: "MSG00001", system: "ADT1"});
    test:assertEquals(eiToReferenceWithType(ei, "ServiceRequest").reference, "ServiceRequest/MSG00001");
    test:assertEquals(eiToIdentifier({}).toJson(), {});
    test:assertEquals(eiToCoding({}).toJson(), {});
    test:assertEquals(eiToReferenceWithType({}, "ServiceRequest").toJson(), {});
}

@test:Config {}
function dtIdConversions() {
    test:assertEquals(idToCoding("F").toJson(), {code: "F"});
    test:assertEquals(idToCoding("").toJson(), {});
    test:assertEquals(idToCodeableConcept("Y").toJson(), {coding: [{code: "Y"}]});
    test:assertEquals(idToCodeableConcept(""), ());
    test:assertEquals(idToCodeableConceptArray("CH").toJson(), [{coding: [{code: "CH"}]}]);
    test:assertEquals(idToCodeableConceptArray("").length(), 0);
}

// ---------------------------------------------------------------------------------------------
// Segment-level enums in helper_enums.bal (vocabulary concept maps)
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtIdToAddressTypeAndUseDirect() {
    test:assertEquals(idToAddressType("M"), "postal");
    test:assertEquals(idToAddressUse("H"), "home");
    test:assertEquals(idToAddressUse("O"), "work");
    test:assertEquals(idToAddressUse("B"), "work");
    test:assertEquals(idToAddressUse("ZZ"), ());
}

@test:Config {}
function dtAllergyTypeConceptMap() {
    test:assertEquals(isToAllergyIntoleranceType("DA"), "allergy");
    test:assertEquals(isToAllergyIntoleranceType("FA"), "allergy");
    test:assertEquals(isToAllergyIntoleranceType("EA"), "allergy");
}

@test:Config {}
function dtAllergyCategoryConceptMap() {
    test:assertEquals(isToAllergyIntoleranceCategory("DA"), "medication");
    test:assertEquals(isToAllergyIntoleranceCategory("FA"), "food");
    test:assertEquals(isToAllergyIntoleranceCategory("AA"), "biologic");
    test:assertEquals(isToAllergyIntoleranceCategory("EA"), "environment");
}

// ResultStatus[Non-Queries] concept map; unmapped codes fall back to "unknown" (status is mandatory)
@test:Config {}
function dtDiagnosticReportStatusConceptMap() {
    test:assertEquals(idToDiagnosticReportStatus("F"), "final");
    test:assertEquals(idToDiagnosticReportStatus("O"), "registered");
    test:assertEquals(idToDiagnosticReportStatus("P"), "preliminary");
    test:assertEquals(idToDiagnosticReportStatus("R"), "partial");
    test:assertEquals(idToDiagnosticReportStatus("C"), "corrected");
    test:assertEquals(idToDiagnosticReportStatus("X"), "cancelled");
    test:assertEquals(idToDiagnosticReportStatus("Y"), "unknown");
}

@test:Config {}
function dtServiceRequestPriorityConceptMap() {
    test:assertEquals(idToServiceRequestPriority("S"), "stat");
    test:assertEquals(idToServiceRequestPriority("A"), "asap");
    test:assertEquals(idToServiceRequestPriority("R"), "routine");
}

// ---------------------------------------------------------------------------------------------
// TS/DTM[dateTime] and date helpers in utilities.bal
// ---------------------------------------------------------------------------------------------

@test:Config {}
function dtHl7DateToFhirPartialDates() {
    test:assertEquals(hl7DateToFhir("1961"), "1961");
    test:assertEquals(hl7DateToFhir("196106"), "1961-06");
    test:assertEquals(hl7DateToFhir("19610615"), "1961-06-15");
}

@test:Config {}
function dtHl7DateToFhirDateTimes() {
    test:assertEquals(hl7DateToFhir("198808181126"), "1988-08-18T11:26:00Z");
    test:assertEquals(hl7DateToFhir("2023100512"), "2023-10-05T12:00:00Z");
    test:assertEquals(hl7DateToFhir("20231005123045"), "2023-10-05T12:30:45Z");
    test:assertEquals(hl7DateToFhir("20231005123045.1234"), "2023-10-05T12:30:45.1234Z");
}

@test:Config {}
function dtTsAndDtmToDateTime() {
    test:assertEquals(tsToDateTime({ts1: "19610615"}), "1961-06-15");
    test:assertEquals(tsToDateTime({ts1: "200708181123"}), "2007-08-18T11:23:00Z");
    test:assertEquals(tsToDateTime({}), ());
    test:assertEquals(dtmToDateTime("20070818"), "2007-08-18");
    test:assertEquals(dtmToDateTime(""), ());
}

@test:Config {}
function dtCxPeriodNotPresentInV23() {
    // CX.7 / CX.8 do not exist in v2.3; an open-record extra field must still be converted correctly.
    hl7v23:CX cx = {cx1: "A1"};
    cx["cx7"] = "20200101";
    cx["cx8"] = "20201231";
    test:assertEquals(cxToIdentifier(cx).period.toJson(), {'start: "2020-01-01", end: "2020-12-31"});
}

@test:Config {}
function dtHl7DateToFhirKeepsTimezone() {
    test:assertEquals(hl7DateToFhir("20231005123045+0530"), "2023-10-05T12:30:45+05:30");
    test:assertEquals(hl7DateToFhir("20231005123045-0500"), "2023-10-05T12:30:45-05:00");
    test:assertEquals(hl7DateToFhir("202310051230-0500"), "2023-10-05T12:30:00-05:00");
}

@test:Config {}
function dtHl7DateToFhirFractionWithTimezone() {
    test:assertEquals(hl7DateToFhir("20231005123045.123+0530"), "2023-10-05T12:30:45.123+05:30");
}

@test:Config {}
function dtTsToInstantConvertsFormat() {
    test:assertEquals(tsToInstant({ts1: "20231005123045"}), "2023-10-05T12:30:45Z");
    test:assertEquals(dtmToInstant("20231005123045"), "2023-10-05T12:30:45Z");
}

@test:Config {}
function dtTsToInstantEmpty() {
    test:assertEquals(tsToInstant({}), ());
}

// Malformed v2 dates (wrong length / non-digits) are rejected (nil) instead of being passed through.
@test:Config {}
function dtHl7DateToFhirRejectsInvalid() {
    string|() r1 = hl7DateToFhir("20231");
    string|() r2 = hl7DateToFhir("abc");
    test:assertNotEquals(r1, "20231");
    test:assertNotEquals(r2, "abc");
}

@test:Config {}
function dtHl7DateToFhirDoesNotPanicOnOddInput() {
    // must not panic on short / malformed input
    string? _ = hl7DateToFhir("");
    string? _ = hl7DateToFhir("20231");
    string? _ = hl7DateToFhir("2023-10-05");
    string? _ = hl7DateToFhir("abcdefgh12");
    test:assertTrue(true);
}

@test:Config {}
function dtCodingSystemToUriHl7Tables() {
    test:assertEquals(codingSystemToUri("HL70277"), "http://terminology.hl7.org/CodeSystem/v2-0277");
    test:assertEquals(codingSystemToUri("HL70001"), "http://terminology.hl7.org/CodeSystem/v2-0001");
    test:assertEquals(codingSystemToUri("LN"), "http://loinc.org");
    test:assertEquals(codingSystemToUri("LOCAL"), "LOCAL");
    test:assertEquals(codingSystemToUri(""), ());
}
