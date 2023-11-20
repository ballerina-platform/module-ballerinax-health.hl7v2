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
import ballerinax/health.hl7v2;

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + nk11 - NK1-Segmentnummer
# + nk12 - Name der Kontaktperson
# + nk13 - Beziehung der Kontaktperson zum Patienten
# + nk14 - Anschrift der Kontaktperson
# + nk15 - Telefonnummer der Kontaktperson
# + nk16 - Telefonnummer der Kontaktperson (dienstlich)
# + nk17 - Art der Beziehung zum Ansprechpartner  (Rolle)
# + nk18 - Beginn dieser Zuordnung (siehe NK1-7)
# + nk19 - Ende dieser Zuordnung (siehe NK1-7)
# + nk110 - Titel / Anrede der Kontaktperson
# + nk111 - Berufsbezeichnung der Kontaktperson
# + nk112 - Arbeitnehmernummer der Kontaktperson
# + nk113 - Organisationsbezeichnung
# + nk114 - Familienstand
# + nk115 - Geschlecht
# + nk116 - Geburtszeitpunkt
# + nk117 - Besondere Lebensabhängigkeiten
# + nk118 - Mobilitätsstatus
# + nk119 - Länderkennzeichen / Staatsangehörigkeit
# + nk120 - Muttersprache
# + nk121 - Besondere Lebensumstände
# + nk122 - Auskunftsbeschränkung
# + nk123 - Merkmal Vertrauensschutz
# + nk124 - Studentenstatus
# + nk125 - Religion
# + nk126 - veraltet; korrespondierendes Namensfeld verwenden
# + nk127 - Nationalität
# + nk128 - Ethnische Zugehörigkeit
# + nk129 - Grund für eine Kontaktaufnahme
# + nk130 - Ansprechpartner falls NK1 Organisation
# + nk131 - Telefonnummer des Ansprechpartners
# + nk132 - Adresse der Kontaktperson
# + nk133 - Identifikatoren der Bezugsperson
# + nk134 - Beruflicher Status
# + nk135 - Rasse
# + nk136 - permanente Behinderung
# + nk137 - Sozialversicherungsnummer der Kontaktperson
# + nk138 - Geburtsort der Kontaktperson
# + nk139 - VIP
@hl7v2:SegmentDefinition {
    name: "NK1",
    required: false,
    maxReps: 0,
    fields: {
        "nk11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "nk12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "nk15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "nk19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "nk110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "nk112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "nk113": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "nk114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "nk117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "nk118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "nk119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "nk124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nk128": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk129": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk130": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "nk131": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "nk132": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "nk133": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "nk134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk135": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "nk136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "nk137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "nk139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type NK1 record {
    *hl7v2:Segment;
    string name = NK1_SEGMENT_NAME;
    SI nk11 = "";
    XPN[] nk12 = [{}];
    CWE nk13 = {};
    XAD[] nk14 = [{}];
    XTN[] nk15 = [{}];
    XTN[] nk16 = [{}];
    CWE nk17 = {};
    DT nk18 = "";
    DT nk19 = "";
    ST nk110 = "";
    JCC nk111 = {};
    CX nk112 = {};
    XON[] nk113 = [{}];
    CWE nk114 = {};
    IS nk115 = "";
    DTM nk116 = "";
    IS[] nk117 = [""];
    IS[] nk118 = [""];
    CWE[] nk119 = [{}];
    CWE nk120 = {};
    IS nk121 = "";
    CWE nk122 = {};
    ID nk123 = "";
    IS nk124 = "";
    CWE nk125 = {};
    XPN[] nk126 = [{}];
    CWE nk127 = {};
    CWE[] nk128 = [{}];
    CWE[] nk129 = [{}];
    XPN[] nk130 = [{}];
    XTN[] nk131 = [{}];
    XAD[] nk132 = [{}];
    CX[] nk133 = [{}];
    IS nk134 = "";
    CWE[] nk135 = [{}];
    IS nk136 = "";
    ST nk137 = "";
    ST nk138 = "";
    IS nk139 = "";
};

public const NK1_SEGMENT_NAME = "NK1";