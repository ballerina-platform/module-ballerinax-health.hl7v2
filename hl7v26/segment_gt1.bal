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
# + gt11 - GT1-Segmentnummer
# + gt12 - Identifikationsnummer des Zahlungspflichtigen
# + gt13 - Name des Zahlungspflichtigen
# + gt14 - Ehegatte des Zahlungspflichtigen
# + gt15 - Anschrift des Zahlungspflichtigen
# + gt16 - Telefonnummer des Zahlungspflichtigen (privat)
# + gt17 - Telefonnummer des Zahlungspflichtigen (dienstlich)
# + gt18 - Geburtsdatum des Zahlungspflichtigen
# + gt19 - Geschlecht des Zahlungspflichtigen
# + gt110 - Art des Zahlungspflichtigen
# + gt111 - Beziehung des Zahlungspflichtigen zum Patienten
# + gt112 - Sozialversicherungsnummer des Zahlungspflichtigen
# + gt113 - Beginn der Kostenübernahme durch den Zahlungspflichtigen
# + gt114 - Ende der Kostenübernahme durch den Zahlungspflichtigen
# + gt115 - Rangfolge der Zahlungspflichtigen
# + gt116 - Arbeitgeber des Zahlungspflichtigen - Name
# + gt117 - Arbeitgeber des Zahlungspflichtigen - Anschrift
# + gt118 - Arbeitgeber des Zahlungspflichtigen - Telefonnummer
# + gt119 - Personalnummer des Zahlungspflichtigen
# + gt120 - Arbeitsverhältnis des Zahlungspflichtigen
# + gt121 - Name der Organisation des Zahlungspflichtigen
# + gt122 - Merkmal Rechnungsdruck verhindern
# + gt123 - Kreditwürdigkeit des Zahlungspflichtigen
# + gt124 - Todeszeitpunkt des Zahlungspflichtigen
# + gt125 - Merkmal Tod des Zahlungspflichtigen
# + gt126 - Sonderkonditionen für den Zahlungspflichtigen
# + gt127 - Jahresgehalt des Zahlungspflichtigen
# + gt128 - Haushaltsgröße des Zahlungspflichtigen
# + gt129 - ID des Arbeitgebers des Zahlungspflichtigen
# + gt130 - Familienstand des Zahlungspflichtigen
# + gt131 - Beginn des Arbeitsverhältnisses des Zahlungspflichtigen
# + gt132 - Endzeitpunkt des Arbeitsverhältnisses des Zahlungspflichtigen
# + gt133 - Besondere Lebensabhängigkeiten
# + gt134 - Mobilitätsstatus
# + gt135 - Länderkennzeichen / Staatsangehörigkeit
# + gt136 - Muttersprache
# + gt137 - Besondere Lebensumstände
# + gt138 - Auskunftsbeschränkung
# + gt139 - Merkmal Vertrauensschutz
# + gt140 - Studentenstatus
# + gt141 - Religion
# + gt142 - veraltet; korrespondierendes Namensfeld verwenden
# + gt143 - Nationalität
# + gt144 - Ethnische Zugehörigkeit
# + gt145 - Ansprechpartner falls NK1 Organisation
# + gt146 - Telefonnummer des Ansprechpartners
# + gt147 - Grund für eine Kontaktaufnahme
# + gt148 - Beziehung des Zahlungspflichtigen zur Kontaktperson
# + gt149 - Dienststellung
# + gt150 - Berufsgruppe
# + gt151 - Arbeitgeber des Zahlungspflichtigen
# + gt152 - permanente Behinderung
# + gt153 - Beruflicher Status
# + gt154 - nicht verwendet
# + gt155 - nicht verwendet
# + gt156 - Geburtsort des Zahlungspflichtigen
# + gt157 - VIP
@hl7v2:SegmentDefinition {
    name: "GT1",
    required: false,
    maxReps: 0,
    fields: {
        "gt11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "gt12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt13": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "gt16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gt19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gt116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "gt118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt121": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "gt122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gt125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gt128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gt129": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt134": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "gt135": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gt136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt142": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt144": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gt145": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt146": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt149": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "gt151": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "gt152": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt154": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FC
        },
        "gt155": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gt156": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt157": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type GT1 record {
    *hl7v2:Segment;
    string name = GT1_SEGMENT_NAME;
    SI gt11 = "";
    CX[] gt12 = [{}];
    XPN[] gt13 = [{}];
    XPN[] gt14 = [{}];
    XAD[] gt15 = [{}];
    XTN[] gt16 = [{}];
    XTN[] gt17 = [{}];
    DTM gt18 = "";
    IS gt19 = "";
    IS gt110 = "";
    CWE gt111 = {};
    ST gt112 = "";
    DT gt113 = "";
    DT gt114 = "";
    NM gt115 = "";
    XPN[] gt116 = [{}];
    XAD[] gt117 = [{}];
    XTN[] gt118 = [{}];
    CX[] gt119 = [{}];
    IS gt120 = "";
    XON[] gt121 = [{}];
    ID gt122 = "";
    CWE gt123 = {};
    DTM gt124 = "";
    ID gt125 = "";
    CWE gt126 = {};
    CP gt127 = {};
    NM gt128 = "";
    CX[] gt129 = [{}];
    CWE gt130 = {};
    DT gt131 = "";
    DT gt132 = "";
    IS gt133 = "";
    IS[] gt134 = [""];
    CWE[] gt135 = [{}];
    CWE gt136 = {};
    IS gt137 = "";
    CWE gt138 = {};
    ID gt139 = "";
    IS gt140 = "";
    CWE gt141 = {};
    XPN[] gt142 = [{}];
    CWE gt143 = {};
    CWE[] gt144 = [{}];
    XPN[] gt145 = [{}];
    XTN[] gt146 = [{}];
    CWE gt147 = {};
    IS gt148 = "";
    ST gt149 = "";
    JCC gt150 = {};
    XON[] gt151 = [{}];
    IS gt152 = "";
    IS gt153 = "";
    FC gt154 = {};
    CWE[] gt155 = [{}];
    ST gt156 = "";
    IS gt157 = "";
};

public const GT1_SEGMENT_NAME = "GT1";