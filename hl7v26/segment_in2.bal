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
# + in21 - Personalnummer des Versicherungsnehmers
# + in22 - Sozialversicherungsnummer des Versicherungsnehmers
# + in23 - Arbeitgeber des Versicherten
# + in24 - nicht verwendet
# + in25 - Rechnungsempfänger
# + in26 - nicht mehr verwendet (s. IN1-49)
# + in27 - nicht verwendet
# + in28 - nicht verwendet
# + in29 - nicht verwendet
# + in210 - nicht verwendet
# + in211 - nicht verwendet
# + in212 - nicht verwendet
# + in213 - nicht verwendet
# + in214 - nicht verwendet
# + in215 - nicht verwendet
# + in216 - nicht verwendet
# + in217 - nicht verwendet
# + in218 - nicht verwendet
# + in219 - Kosten für Baby im Tagessatz enthalten
# + in220 - Kosten für Baby auf gleicher Rechnung
# + in221 - nicht verwendet
# + in222 - Person, die spezielle Kostenübernahmezusage erteilt
# + in223 - Titel dieser Person
# + in224 - Grund für Leistungsausschluß
# + in225 - nicht verwendet
# + in226 - nicht verwendet
# + in227 - Quelle der Kostenträgerangaben
# + in228 - Zimmertyp / Von der Versicherung getragener Kostenanteil
# + in229 - Art und Umfang der Versicherung
# + in230 - Verringerung des Erstattungsbetrages nach Tagen
# + in231 - Besondere Lebensabhängigkeiten
# + in232 - Mobilitätsstatus
# + in233 - Länderkennzeichen / Staatsangehörigkeit
# + in234 - Muttersprache
# + in235 - Besondere Lebensumstände
# + in236 - Auskunftsbeschränkung
# + in237 - Merkmal Vertrauensschutz
# + in238 - Studentenstatus
# + in239 - Religion
# + in240 - veraltet; korrespondierendes Namensfeld verwenden
# + in241 - Nationalität
# + in242 - Ethnische Zugehörigkeit
# + in243 - Familienstand
# + in244 - nicht verwendet
# + in245 - Endzeitpunkt des Arbeitsverhältnisses des Zahlungspflichtigen
# + in246 - Dienststellung
# + in247 - Berufsgruppe
# + in248 - Beruflicher Status
# + in249 - Name Kontaktperson Arbeitgeber
# + in250 - Telefonnummer Kontaktperson Arbeitgeber
# + in251 - Grund Kontaktaufnahme mit Arbeitgeber
# + in252 - Name Kontaktperson Versicherter
# + in253 - Telefonnummer Kontaktperson Versicherter
# + in254 - Grund Kontaktaufnahme mit Versicherten
# + in255 - Beziehung zum Patienten: gültig ab
# + in256 - Beziehung zum Patienten: gültig bis
# + in257 - Grund Kontaktaufnahme mit Versicherung
# + in258 - Telefonnummer Versicherung
# + in259 - Versicherungsumfang
# + in260 - Informationsquelle Versicherungspolice
# + in261 - Mitgliedsnummer
# + in262 - Beziehung Zahlungspflichtiger zum Versicherten
# + in263 - private Telefonnummer des Versicherten
# + in264 - Telefonnummer des Arbeitgebers des Versicherter
# + in265 - nicht verwendet
# + in266 - Merkmal Zahlungsaussetzung
# + in267 - Merkmal Zuzahlungslimit erreicht
# + in268 - nicht verwendet
# + in269 - Bezeichnung und ID der versicherten Organisation
# + in270 - Bezeichnung und ID der Organisation des Arbeitgebers
# + in271 - Rasse
# + in272 - Beziehung des Patienten zum Versicherten
@hl7v2:SegmentDefinition {
    name: "IN2",
    required: false,
    maxReps: 0,
    fields: {
        "in21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in29": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in213": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in215": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in216": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in217": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in218": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in219": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in220": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in221": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in222": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in223": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in224": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in225": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in226": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in227": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in228": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: RMC
        },
        "in229": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PTA
        },
        "in230": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DDI
        },
        "in231": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in232": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in233": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in234": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in235": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in236": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in237": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in238": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in239": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in240": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in241": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in242": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in243": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in244": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in245": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in246": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in247": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "in248": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in249": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in250": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in251": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in252": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in253": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in254": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in255": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in256": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DT
        },
        "in257": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in258": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in259": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in260": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in261": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "in262": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in263": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in264": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in265": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in266": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in267": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in268": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in269": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in270": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in271": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in272": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type IN2 record {
    *hl7v2:Segment;
    string name = IN2_SEGMENT_NAME;
    CX[] in21 = [{}];
    ST in22 = "";
    XCN[] in23 = [{}];
    IS in24 = "";
    IS[] in25 = [""];
    ST in26 = "";
    XPN[] in27 = [{}];
    ST in28 = "";
    XPN[] in29 = [{}];
    ST in210 = "";
    CWE in211 = {};
    ST in212 = "";
    ST in213 = "";
    IS in214 = "";
    IS in215 = "";
    IS in216 = "";
    DT in217 = "";
    ID in218 = "";
    ID in219 = "";
    ID in220 = "";
    ST in221 = "";
    XPN[] in222 = [{}];
    ST in223 = "";
    IS[] in224 = [""];
    CX[] in225 = [{}];
    CX[] in226 = [{}];
    IS in227 = "";
    RMC[] in228 = [{}];
    PTA[] in229 = [{}];
    DDI in230 = {};
    IS in231 = "";
    IS[] in232 = [""];
    CWE[] in233 = [{}];
    CWE in234 = {};
    IS in235 = "";
    CWE in236 = {};
    ID in237 = "";
    IS in238 = "";
    CWE in239 = {};
    XPN[] in240 = [{}];
    CWE in241 = {};
    CWE[] in242 = [{}];
    CWE[] in243 = [{}];
    DT in244 = "";
    DT in245 = "";
    ST in246 = "";
    JCC in247 = {};
    IS in248 = "";
    XPN[] in249 = [{}];
    XTN[] in250 = [{}];
    IS in251 = "";
    XPN[] in252 = [{}];
    XTN[] in253 = [{}];
    IS[] in254 = [""];
    DT in255 = "";
    DT[] in256 = [""];
    IS in257 = "";
    XTN[] in258 = [{}];
    IS in259 = "";
    IS in260 = "";
    CX in261 = {};
    CWE in262 = {};
    XTN[] in263 = [{}];
    XTN[] in264 = [{}];
    CWE in265 = {};
    ID in266 = "";
    ID in267 = "";
    ID in268 = "";
    XON[] in269 = [{}];
    XON[] in270 = [{}];
    CWE[] in271 = [{}];
    CWE in272 = {};
};

public const IN2_SEGMENT_NAME = "IN2";