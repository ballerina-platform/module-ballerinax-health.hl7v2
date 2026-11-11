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

// Tests for message-control and event segment mappings:
// MSH[MessageHeader], MSH[Provenance-Operator], MSH[Provenance-Source], MSH[Provenance-Transformation],
// MSH[Bundle], MSA[MessageHeader] and EVN[Provenance].
// Spec: HL7 v2-to-FHIR IG mapping spreadsheets (segments/, datatypes/, codesystems/).

import ballerina/test;
import ballerinax/health.fhir.r4;
import ballerinax/health.fhir.r4.international401;

// A minimal ADT^A01 message where EVN-5 is NOT valued and MSH-4 IS valued (triggers MSH[Provenance-Operator]).
final string ctlAdtA01Msg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01|MSG00001|P|2.3||\rEVN|A01|200708181123||" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL||BATMAN^ADAM^A^III||19610615|M|" +
"\rPV1|1|I|2000^2012^01||||004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

// ADT^A01 message where EVN-5 IS valued (MSH[Provenance-Operator] must not be produced).
final string ctlAdtA01WithOperatorMsg = "MSH|^~\\&|ADT1|GOOD HEALTH HOSPITAL|GHH LAB, INC.|GOOD HEALTH HOSPITAL|" +
"198808181126|SECURITY|ADT^A01|MSG00002|P|2.3||\rEVN|A01|200708181123||01|OP123^SMITH^JOHN|200708181100" +
"\rPID|1||PATID1234^5^M11^ADT1^MR^GOOD HEALTH HOSPITAL||BATMAN^ADAM^A^III||19610615|M|" +
"\rPV1|1|I|2000^2012^01||||004777^ATTEND^AARON^A|||SUR||||ADM|A0|";

function ctlGetBundleEntriesOfType(json bundle, string resourceType) returns map<json>[]|error {
    map<json>[] matched = [];
    json entriesJson = check bundle.entry;
    if entriesJson is json[] {
        foreach json entry in entriesJson {
            json res = check entry.'resource;
            if res is map<json> && res["resourceType"] == resourceType {
                matched.push(res);
            }
        }
    }
    return matched;
}

// =====================================================================================
// MSH → MessageHeader
// =====================================================================================

// MSH-3 / HD[MessageHeader.source-endpoint]: HD.3 = ISO -> "urn:oid:"+HD.2
@test:Config {}
function ctlMshSourceEndpointIsoTest() {
    Msh msh = {msh3: {hd1: "ADT1", hd2: "1.2.840.114350", hd3: "ISO"}, msh9: {cm_msg1: "ADT", cm_msg2: "A01"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.'source.endpoint, "urn:oid:1.2.840.114350");
}

// HD[MessageHeader.source-endpoint]: HD.3 = UUID -> "urn:uuid:"+HD.2
@test:Config {}
function ctlMshSourceEndpointUuidTest() {
    Msh msh = {msh3: {hd1: "ADT1", hd2: "6f1c1b2e-6b0a-4e4e-9a51-0f8e3c6c1a11", hd3: "UUID"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.'source.endpoint, "urn:uuid:6f1c1b2e-6b0a-4e4e-9a51-0f8e3c6c1a11");
}

// HD[MessageHeader.source-endpoint]: HD.3 = DNS -> "urn:dns:"+HD.2
@test:Config {}
function ctlMshSourceEndpointDnsTest() {
    Msh msh = {msh3: {hd1: "ADT1", hd2: "adt.hospital.org", hd3: "DNS"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.'source.endpoint, "urn:dns:adt.hospital.org");
}

// HD[MessageHeader.source-endpoint]: HD.3 = URI -> "urn:uri:"+HD.2
@test:Config {}
function ctlMshSourceEndpointUriTest() {
    Msh msh = {msh3: {hd1: "ADT1", hd2: "http://hospital.org/adt", hd3: "URI"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.'source.endpoint, "urn:uri:http://hospital.org/adt");
}

// HD[MessageHeader.source-name]: HD.1 -> source.name
@test:Config {}
function ctlMshSourceNameOnlyNamespaceTest() {
    Msh msh = {msh3: {hd1: "ADT1"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.'source.name, "ADT1");
}

@test:Config {}
function ctlMshSourceNameAndSoftwareTest() {
    Msh msh = {msh3: {hd1: "ADT1", hd2: "1.2.840.114350", hd3: "ISO"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.'source.name, "ADT1");
    test:assertEquals(mh.'source.software, "1.2.840.114350");
}

// HD[MessageHeader.destination-endpoint]: HD.3 = ISO -> "urn:oid:"+HD.2, HD.1 -> name
@test:Config {}
function ctlMshDestinationEndpointIsoTest() {
    Msh msh = {msh5: {hd1: "GHH LAB", hd2: "2.16.840.1.113883.19", hd3: "ISO"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertEquals(dest.length(), 1);
    test:assertEquals(dest[0].endpoint, "urn:oid:2.16.840.1.113883.19");
}

// HD[MessageHeader.destination-endpoint]: HD.3 = UUID -> "urn:uuid:"+HD.2
@test:Config {}
function ctlMshDestinationEndpointUuidTest() {
    Msh msh = {msh5: {hd1: "GHH LAB", hd2: "0b8c8f5c-5f5f-4a4a-8d8d-1c1c1c1c1c1c", hd3: "UUID"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertEquals(dest[0].endpoint, "urn:uuid:0b8c8f5c-5f5f-4a4a-8d8d-1c1c1c1c1c1c");
}

// HD[MessageHeader.destination-endpoint]: HD.1 only -> destination.name
@test:Config {}
function ctlMshDestinationNameTest() {
    Msh msh = {msh5: {hd1: "GHH LAB, INC."}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertEquals(dest[0].name, "GHH LAB, INC.");
}

@test:Config {}
function ctlMshDestinationNameWithUniversalIdTest() {
    Msh msh = {msh5: {hd1: "GHH LAB", hd2: "2.16.840.1.113883.19", hd3: "ISO"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertEquals(dest[0].name, "GHH LAB");
}

@test:Config {}
function ctlMshDestinationEndpointDnsTest() {
    Msh msh = {msh5: {hd1: "GHH LAB", hd2: "lab.hospital.org", hd3: "DNS"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertEquals(dest[0].endpoint, "lab.hospital.org");
}

// MSG[Coding]: system = v2-0003, display = MSG.1^MSG.2 (v2.3 CM_MSG has no MSG.3)
@test:Config {}
function ctlMshEventCodingSystemAndDisplayTest() {
    Msh msh = {msh9: {cm_msg1: "ADT", cm_msg2: "A01"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    r4:Coding? coding = mh.eventCoding;
    if coding is () {
        test:assertFail("eventCoding expected");
    }
    test:assertEquals(coding.system, "http://terminology.hl7.org/CodeSystem/v2-0003");
    test:assertEquals(coding.display, "ADT^A01");
}

@test:Config {}
function ctlMshEventCodingCodeTest() {
    Msh msh = {msh9: {cm_msg1: "ADT", cm_msg2: "A01"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    r4:Coding? coding = mh.eventCoding;
    if coding is () {
        test:assertFail("eventCoding expected");
    }
    test:assertEquals(coding.code, "A01");
}

// MSH-19 -> language (CWE[code]; v2.3 type is CE): CE.1 -> code
@test:Config {}
function ctlMshLanguageTest() {
    Msh msh = {msh19: {ce1: "en", ce2: "English", ce3: "ISO639"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.language, "en");
}

// MSH-19 not valued -> language omitted
@test:Config {}
function ctlMshLanguageAbsentTest() {
    Msh msh = {msh3: {hd1: "ADT1"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.language, ());
}

@test:Config {}
function ctlMshLanguageAlternateIdentifierTest() {
    Msh msh = {msh19: {ce4: "fr", ce5: "French", ce6: "ISO639"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.language, "fr");
}

@test:Config {}
function ctlMshProcessingIdMetaTest() {
    Msh msh = {msh11: {pt1: "P", pt2: "T"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    r4:Meta? meta = mh.meta;
    if meta is () {
        test:assertFail("meta expected");
    }
    r4:Coding[]? tags = meta.tag;
    if tags is () {
        test:assertFail("meta.tag expected");
    }
    test:assertEquals(tags.length(), 2);
    test:assertEquals(tags[0].code, "P");
    test:assertEquals(tags[0].system, "http://terminology.hl7.org/CodeSystem/v2-0103");
    test:assertEquals(tags[1].code, "T");
    test:assertEquals(tags[1].system, "http://terminology.hl7.org/CodeSystem/v2-0207");
}

@test:Config {}
function ctlMshSecurityTest() {
    Msh msh = {msh8: "SECURITY"};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    r4:Meta? meta = mh.meta;
    if meta is () {
        test:assertFail("meta expected");
    }
    r4:Coding[]? security = meta.security;
    if security is () {
        test:assertFail("meta.security expected");
    }
    test:assertEquals(security[0].code, "SECURITY");
}

@test:Config {}
function ctlMshSenderTest() {
    Msh msh = {msh4: {hd1: "GOOD HEALTH HOSPITAL"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    r4:Reference? sender = mh.sender;
    if sender is () {
        test:assertFail("sender expected");
    }
    test:assertTrue(sender != {});
}

@test:Config {}
function ctlMshReceiverTest() {
    Msh msh = {msh5: {hd1: "GHH LAB"}, msh6: {hd1: "GOOD HEALTH HOSPITAL"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertTrue(dest[0].receiver is r4:Reference);
}

@test:Config {}
function ctlMshDestinationTargetTest() {
    Msh msh = {msh5: {hd1: "GHH LAB", hd2: "2.16.840.1.113883.19", hd3: "ISO"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertTrue(dest[0].target is r4:Reference);
}

// Empty MSH must not panic.
@test:Config {}
function ctlMshEmptyNoPanicTest() {
    Msh msh = {};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.resourceType, "MessageHeader");
    test:assertEquals(mh.language, ());
}

// BUG (upstream): with MSH-3 not valued the spec puts a data-absent-reason extension on source.endpoint, but
// international401:MessageHeaderSource is a closed record with a mandatory `endpoint` string, so "" is emitted.
// (MSH-5 not valued → destination is now omitted.)
@test:Config {enable: false}
function ctlMshEmptyNoEmptyFieldsTest() {
    Msh msh = {msh9: {cm_msg1: "ADT", cm_msg2: "A01"}};
    international401:MessageHeader mh = mshToMessageHeader(msh);
    test:assertEquals(mh.destination, ());
    test:assertFalse(containsEmptyFields(mh.toJson()), "MessageHeader contains empty fields");
}

// Full MSH from a parsed message: source/destination/eventCoding.
@test:Config {}
function ctlMshFromParsedMessageTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01Msg);
    map<json>[] headers = check ctlGetBundleEntriesOfType(bundle, "MessageHeader");
    test:assertEquals(headers.length(), 1);
    international401:MessageHeader mh = check headers[0].cloneWithType();
    test:assertEquals(mh.'source.name, "ADT1");
    international401:MessageHeaderDestination[]? dest = mh.destination;
    if dest is () {
        test:assertFail("destination expected");
    }
    test:assertEquals(dest[0].name, "GHH LAB, INC.");
    r4:Coding? coding = mh.eventCoding;
    if coding is () {
        test:assertFail("eventCoding expected");
    }
    test:assertEquals(coding.display, "ADT^A01");
}

// =====================================================================================
// MSA → MessageHeader
// =====================================================================================

// MSA-1 -> response.code, MSA-2 -> response.identifier
@test:Config {}
function ctlMsaAcceptTest() {
    Msa msa = {msa1: "AA", msa2: "MSG00001"};
    international401:MessageHeader mh = msaToMessageHeader(msa);
    international401:MessageHeaderResponse? resp = mh.response;
    if resp is () {
        test:assertFail("response expected");
    }
    test:assertEquals(resp.identifier, "MSG00001");
    test:assertEquals(resp.code, "ok");
}

// MSA-1 vocabulary (HL7 table 0008 -> response-code). The spec CSV defines no concept map; these assert the
// implemented translation (accept codes -> ok, error/reject codes -> error codes).
@test:Config {}
function ctlMsaResponseCodeTranslationTest() {
    map<string> expected = {
        "AA": "ok",
        "CA": "ok",
        "AE": "fatal-error",
        "AR": "fatal-error",
        "CE": "transient-error",
        "CR": "transient-error"
    };
    foreach [string, string] [ackCode, fhirCode] in expected.entries() {
        international401:MessageHeader mh = msaToMessageHeader({msa1: ackCode, msa2: "CTRL1"});
        international401:MessageHeaderResponse? resp = mh.response;
        if resp is () {
            test:assertFail("response expected for " + ackCode);
        }
        test:assertEquals(resp.code, fhirCode, "Wrong response.code for MSA-1 = " + ackCode);
        test:assertEquals(resp.identifier, "CTRL1");
    }
}

// MSA-2 with MSA-1 reject
@test:Config {}
function ctlMsaRejectIdentifierTest() {
    international401:MessageHeader mh = msaToMessageHeader({msa1: "AR", msa2: "ZZ9-0001", msa3: "Rejected"});
    international401:MessageHeaderResponse? resp = mh.response;
    if resp is () {
        test:assertFail("response expected");
    }
    test:assertEquals(resp.identifier, "ZZ9-0001");
}

// Empty MSA must not panic.
@test:Config {}
function ctlMsaEmptyNoPanicTest() {
    international401:MessageHeader mh = msaToMessageHeader({});
    test:assertEquals(mh.resourceType, "MessageHeader");
}

@test:Config {}
function ctlMsaEmptyNoEmptyFieldsTest() {
    international401:MessageHeader mh = msaToMessageHeader({msa1: "AA"});
    test:assertFalse(containsEmptyFields(mh.toJson()), "MessageHeader contains empty fields");
}

// =====================================================================================
// EVN → Provenance
// =====================================================================================

// EVN-2 -> recorded (instant)
@test:Config {}
function ctlEvnRecordedTest() {
    Evn evn = {evn1: "A01", evn2: {ts1: "20070818112330"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.recorded, "2007-08-18T11:23:30Z");
}

// EVN-2 at minute precision
@test:Config {}
function ctlEvnRecordedMinutePrecisionTest() {
    Evn evn = {evn2: {ts1: "200708181123"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.recorded, "2007-08-18T11:23:00Z");
}

@test:Config {}
function ctlEvnRecordedTimezoneTest() {
    Evn evn = {evn2: {ts1: "20070818112330+0530"}, evn6: {ts1: "20070818110000-0500"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.recorded, "2007-08-18T11:23:30+05:30");
    test:assertEquals(prov.occurredDateTime, "2007-08-18T11:00:00-05:00");
}

// EVN-6 -> occurredDateTime
@test:Config {}
function ctlEvnOccurredTest() {
    Evn evn = {evn2: {ts1: "20070818112330"}, evn6: {ts1: "20070818110000"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.occurredDateTime, "2007-08-18T11:00:00Z");
    test:assertEquals(prov.recorded, "2007-08-18T11:23:30Z");
}

// EVN-6 not valued -> occurredDateTime omitted
@test:Config {}
function ctlEvnOccurredAbsentTest() {
    Evn evn = {evn2: {ts1: "20070818112330"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.occurredDateTime, ());
}

// EVN-5 -> agent.who(Practitioner)
@test:Config {}
function ctlEvnOperatorAgentTest() {
    Evn evn = {evn2: {ts1: "20070818112330"}, evn5: {xcn1: "OP123", xcn2: "SMITH", xcn3: "JOHN"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.agent.length(), 1);
    test:assertEquals(prov.agent[0].who.reference, "Practitioner/OP123");
}

// EVN-4 not valued -> no reason
@test:Config {}
function ctlEvnReasonAbsentTest() {
    Evn evn = {evn2: {ts1: "20070818112330"}};
    international401:Provenance prov = evnToProvenance(evn);
    test:assertEquals(prov.reason, ());
}

@test:Config {}
function ctlEvnReasonVocabularyTest() {
    map<[string, string]> expected = {
        "01": ["PATRQT", "http://terminology.hl7.org/CodeSystem/v3-ActReason"],
        "02": ["TREAT", "http://terminology.hl7.org/CodeSystem/v3-ActReason"],
        "03": ["HOPERAT", "http://terminology.hl7.org/CodeSystem/v3-ActReason"],
        "O": ["O", "http://terminology.hl7.org/CodeSystem/v2-0062"]
    };
    foreach [string, [string, string]] [v2Code, [fhirCode, system]] in expected.entries() {
        international401:Provenance prov = evnToProvenance({evn2: {ts1: "20070818112330"}, evn4: v2Code});
        r4:CodeableConcept[]? reason = prov.reason;
        if reason is () {
            test:assertFail("reason expected for " + v2Code);
        }
        r4:Coding[]? coding = reason[0].coding;
        if coding is () {
            test:assertFail("reason.coding expected for " + v2Code);
        }
        test:assertEquals(coding[0].code, fhirCode);
        test:assertEquals(coding[0].system, system);
    }
}

@test:Config {}
function ctlEvnReasonUnknownTest() {
    international401:Provenance prov = evnToProvenance({evn2: {ts1: "20070818112330"}, evn4: "U"});
    r4:CodeableConcept[]? reason = prov.reason;
    if reason is () {
        test:assertFail("reason expected");
    }
    r4:Extension[]? ext = reason[0].extension;
    if ext is () {
        test:assertFail("reason.extension expected");
    }
    test:assertEquals(ext[0].url, "http://hl7.org/fhir/StructureDefinition/data-absent-reason");
}

// Empty EVN must not panic and must not produce empty strings/objects.
@test:Config {}
function ctlEvnEmptyTest() {
    international401:Provenance prov = evnToProvenance({});
    test:assertEquals(prov.resourceType, "Provenance");
    test:assertEquals(prov.occurredDateTime, ());
    test:assertEquals(prov.reason, ());
    test:assertFalse(containsEmptyFields(prov.toJson()), "Provenance contains empty fields");
}

// =====================================================================================
// MSH → Provenance (Operator)
// =====================================================================================

// MSH-4 -> agent.who(Organization); MSH-7 -> recorded
@test:Config {}
function ctlMshProvenanceOperatorTest() {
    Msh msh = {msh4: {hd1: "GOOD HEALTH HOSPITAL"}, msh7: {ts1: "198808181126"}};
    international401:Provenance prov = mshToProvenanceOperator(msh);
    test:assertEquals(prov.agent.length(), 1);
    test:assertEquals(prov.agent[0].who.display, "GOOD HEALTH HOSPITAL");
    test:assertEquals(prov.recorded, "1988-08-18T11:26:00Z");
}

@test:Config {}
function ctlMshProvenanceOperatorIdentifierTest() {
    Msh msh = {msh4: {hd1: "GHH", hd2: "2.16.840.1.113883.19.4.6", hd3: "ISO"}, msh7: {ts1: "198808181126"}};
    international401:Provenance prov = mshToProvenanceOperator(msh);
    r4:Identifier? identifier = prov.agent[0].who.identifier;
    if identifier is () {
        test:assertFail("agent.who.identifier expected");
    }
    test:assertEquals(identifier.value, "GHH");
}

@test:Config {}
function ctlMshProvenanceOperatorEmptyTest() {
    international401:Provenance prov = mshToProvenanceOperator({});
    test:assertFalse(containsEmptyFields(prov.toJson()), "Provenance contains empty fields");
}

// Empty MSH must not panic in mshToProvenanceOperator.
@test:Config {}
function ctlMshProvenanceOperatorEmptyNoPanicTest() {
    international401:Provenance prov = mshToProvenanceOperator({});
    test:assertEquals(prov.resourceType, "Provenance");
}

// =====================================================================================
// Message-level: Bundle / Provenance selection
// =====================================================================================

// IF EVN-5 NOT VALUED AND MSH-4 VALUED -> MSH[Provenance-Operator] is produced in addition to EVN[Provenance]
@test:Config {}
function ctlBundleProvenanceOperatorConditionTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01Msg);
    map<json>[] provs = ctlEventProvenances(check ctlGetBundleEntriesOfType(bundle, "Provenance"));
    test:assertEquals(provs.length(), 2);
    boolean hasFacilityAgent = false;
    foreach map<json> p in provs {
        international401:Provenance prov = check p.cloneWithType();
        foreach international401:ProvenanceAgent agent in prov.agent {
            if agent.who.display == "GOOD HEALTH HOSPITAL" {
                hasFacilityAgent = true;
            }
        }
    }
    test:assertTrue(hasFacilityAgent, "Sending facility operator Provenance expected");
}

// EVN-5 valued -> only EVN[Provenance]; EVN-4/EVN-5/EVN-6 come through the parser.
@test:Config {}
function ctlBundleEvnOperatorFromParsedMessageTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01WithOperatorMsg);
    map<json>[] provs = ctlEventProvenances(check ctlGetBundleEntriesOfType(bundle, "Provenance"));
    test:assertEquals(provs.length(), 1);
    international401:Provenance prov = check provs[0].cloneWithType();
    test:assertEquals(prov.agent[0].who.reference, "Practitioner/OP123");
    test:assertEquals(prov.recorded, "2007-08-18T11:23:00Z");
    test:assertEquals(prov.occurredDateTime, "2007-08-18T11:00:00Z");
}

@test:Config {}
function ctlBundleTypeTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01Msg);
    test:assertEquals(check bundle.'type, "message");
}

@test:Config {}
function ctlBundleTimestampAndIdentifierTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01Msg);
    r4:Bundle b = check bundle.cloneWithType();
    test:assertEquals(b.timestamp, "1988-08-18T11:26:00Z");
    r4:Identifier? identifier = b.identifier;
    if identifier is () {
        test:assertFail("Bundle.identifier expected");
    }
    test:assertEquals(identifier.value, "MSG00001");
}

@test:Config {}
function ctlBundleProvenanceTransformationTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01Msg);
    map<json>[] provs = check ctlGetBundleEntriesOfType(bundle, "Provenance");
    boolean found = false;
    foreach map<json> p in provs {
        international401:Provenance prov = check p.cloneWithType();
        r4:CodeableConcept? activity = prov.activity;
        if activity is r4:CodeableConcept {
            r4:Coding[]? coding = activity.coding;
            if coding is r4:Coding[] && coding.length() > 0 && coding[0].code == "v2-fhir-transformation" {
                test:assertEquals(coding[0].system,
                        "http://hl7.org/fhir/uv/v2mappings/CodeSystem/provenance-activity-type-v2-to-fhir");
                found = true;
            }
        }
    }
    test:assertTrue(found, "Transformation Provenance expected");
}

@test:Config {}
function ctlBundleProvenanceSourceTest() returns error? {
    json bundle = check v2ToFhir(ctlAdtA01Msg);
    map<json>[] provs = check ctlGetBundleEntriesOfType(bundle, "Provenance");
    boolean found = false;
    foreach map<json> p in provs {
        international401:Provenance prov = check p.cloneWithType();
        foreach international401:ProvenanceAgent agent in prov.agent {
            r4:CodeableConcept? agentType = agent.'type;
            if agentType is r4:CodeableConcept {
                r4:Coding[]? coding = agentType.coding;
                if coding is r4:Coding[] && coding.length() > 0 && coding[0].code == "author" {
                    test:assertEquals(prov.recorded, "1988-08-18T11:26:00Z");
                    found = true;
                }
            }
        }
    }
    test:assertTrue(found, "Source Provenance (author agent from MSH-4) expected");
}

// EVN[Provenance] / MSH[Provenance-Operator] only: excludes MSH[Provenance-Source] ("message - ..." activity)
// and MSH[Provenance-Transformation] (v2-fhir-transformation activity).
function ctlEventProvenances(map<json>[] provs) returns map<json>[] {
    return provs.filter(p => !p.toJsonString().includes("v2-fhir-transformation")
        && !p.toJsonString().includes("\"message - "));
}
