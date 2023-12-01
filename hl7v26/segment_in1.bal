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
# + in11 - IN1-Segmentnummer
# + in12 - Tarifbezeichnung des Kostenträgers
# + in13 - Institutionskennzeichen / Nummer des Kostenträgers
# + in14 - Bezeichnung des Kostenträgers
# + in15 - Anschrift des Kostenträgers
# + in16 - Ansprechpartner beim Kostenträger
# + in17 - Telefonnummer des Kostenträgers
# + in18 - Gruppennummer des Kostenträgers
# + in19 - Gruppenbezeichnung des Kostenträgers
# + in110 - nicht verwendet
# + in111 - nicht verwendet
# + in112 - Gültigkeitsbeginn des Tarifs aus IN1-2
# + in113 - Gültigkeitsende des Tarifs aus IN1-2
# + in114 - Aktenzeichen der Kostenübernahme
# + in115 - Versichertenstatus (GSG)
# + in116 - Name des Versicherungsnehmers
# + in117 - Beziehung des Versicherungsnehmers zum Patienten
# + in118 - Geburtsdatum des Versicherugnsnehmers
# + in119 - Anschrift des Versicherungsnehmers
# + in120 - Merkmal Rechnung an Kostenträger
# + in121 - Abstimmung mit anderen Versicherungsverhältnissen
# + in122 - Priorität dieses Versicherungsverhältnisses
# + in123 - Merkmal Aufnahmeanzeige an Kostenträger verschickt
# + in124 - Datum, wann Aufnahmeanzeige verschickt
# + in125 - Merkmal Kostenübernahme (GSG)
# + in126 - Datum der Kostenübernahmeerklärung
# + in127 - Freigabe von Patienteninformation
# + in128 - Aktenzeichen Zustimmung des Kostenträgers zur Aufnahme
# + in129 - Zeitpunkt des letzten Einlesens der Krankenversichertenkarte
# + in130 - eingelesen durch
# + in131 - nicht verwendet
# + in132 - Status der Rechnungsstellung
# + in133 - nicht verwendet
# + in134 - nicht verwendet
# + in135 - nicht verwendet
# + in136 - Versicherungspolicennummer / Vertragsnummer
# + in137 - Übernahmeanteil des Zahlungspflichtigen
# + in138 - Withdrawn field
# + in139 - Aufenthaltstage, die vom Kostenträger getragen werden
# + in140 - Withdrawn field
# + in141 - Withdrawn field
# + in142 - Arbeitsverhältnis des Versicherungsnehmers
# + in143 - Geschlecht des Versicherungsnehmers
# + in144 - Anschrift des Arbeitgebers
# + in145 - nicht verwendet
# + in146 - Bisherige Tarifbezeichnung des Kostenträgers (bei Änderungen)
# + in147 - Deckungsart
# + in148 - permanente Behinderung
# + in149 - Versichertennummer
# + in150 - Unterschriftenart
# + in151 - Datum der Unterschrift
# + in152 - Geburtsort des Versicherungsnehmers
# + in153 - VIP-Kennzeichen Versicherungsnehmers
@hl7v2:SegmentDefinition {
    name: "IN1",
    required: false,
    maxReps: 0,
    fields: {
        "in11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "in12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in13": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in111": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: AUI
        },
        "in115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "in119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "in130": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "in138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in144": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in145": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in146": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in149": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in151": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in152": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type IN1 record {
    *hl7v2:Segment;
    string name = IN1_SEGMENT_NAME;
    SI in11 = "";
    CWE in12 = {};
    CX[] in13 = [{}];
    XON[] in14 = [{}];
    XAD[] in15 = [{}];
    XPN[] in16 = [{}];
    XTN[] in17 = [{}];
    ST in18 = "";
    XON[] in19 = [{}];
    CX[] in110 = [{}];
    XON[] in111 = [{}];
    DT in112 = "";
    DT in113 = "";
    AUI in114 = {};
    IS in115 = "";
    XPN[] in116 = [{}];
    CWE in117 = {};
    DTM in118 = "";
    XAD[] in119 = [{}];
    IS in120 = "";
    IS in121 = "";
    ST in122 = "";
    ID in123 = "";
    DT in124 = "";
    ID in125 = "";
    DT in126 = "";
    IS in127 = "";
    ST in128 = "";
    DTM in129 = "";
    XCN[] in130 = [{}];
    IS in131 = "";
    IS in132 = "";
    NM in133 = "";
    NM in134 = "";
    IS in135 = "";
    ST in136 = "";
    CP in137 = {};
    ST in138 = "";
    NM in139 = "";
    ST in140 = "";
    ST in141 = "";
    CWE in142 = {};
    IS in143 = "";
    XAD[] in144 = [{}];
    ST in145 = "";
    IS in146 = "";
    IS in147 = "";
    IS in148 = "";
    CX[] in149 = [{}];
    IS in150 = "";
    DT in151 = "";
    ST in152 = "";
    IS in153 = "";
};

public const IN1_SEGMENT_NAME = "IN1";