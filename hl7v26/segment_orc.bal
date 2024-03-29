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
# + orc1 - Auftragssteuerung
# + orc2 - Auftragsnummer des Auftraggebers / der auftraggebenden Stelle
# + orc3 - Bearbeitungsnummer der Leistungsstelle
# + orc4 - Auftragsgruppennummer
# + orc5 - Auftragsstatus
# + orc6 - Gewünschter Umfang der Ergebnismeldung
# + orc7 - Zeit / Menge / Häufigkeit / Priorität
# + orc8 - Verweis auf Hauptauftrag
# + orc9 - Zeitpunkt der Auftragseingabe bzw. -änderung
# + orc10 - Eingegeben durch
# + orc11 - Geprüft / bestätigt durch
# + orc12 - Verantwortlicher Auftraggeber
# + orc13 - Abteilung des Eingebenden
# + orc14 - Telefonnummer für Rückrufe
# + orc15 - Zeitpunkt der Wirksamkeit einer Änderung des Auftrages
# + orc16 - Begründung des Auftrags bzw. der Auftragsänderung
# + orc17 - Eingebende Institution
# + orc18 - Eingabegerät (Name / Maschinenadresse)
# + orc19 - Verantwortlicher für Auftragsänderung
# + orc20 - Hinweis zur Zuzahlung
# + orc21 - Name der auftraggebenden Einrichtung
# + orc22 - Adresse der auftraggebenden Einrichtung
# + orc23 - Telefonnummer der auftraggebenden Einrichtung
# + orc24 - Adresse des verantwortlichen Auftraggebers
# + orc25 - Modifikator des Auftragsstatus
# + orc26 - Grund für Nichtvorliegen der Zuzahlungserklärung
# + orc27 - voraussichtlicher Zeitpunkt der Auftragserfüllung
# + orc28 - Vertraulichkeitscode
# + orc29 - Patientenstatus bezogen auf Auftrag
# + orc30 - Art der Authorisierung des Auftragserfassers
# + orc31 - Leistungsidentifikation des Hauptauftrags
@hl7v2:SegmentDefinition {
    name: "ORC",
    required: false,
    maxReps: 0,
    fields: {
        "orc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "orc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "orc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "orc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TQ
        },
        "orc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EIP
        },
        "orc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "orc10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "orc14": {
            required: false,
            length: 1,
            maxReps: 2,
            dataType: XTN
        },
        "orc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "orc16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "orc22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "orc23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "orc24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "orc25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "orc28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "orc30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "orc31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type ORC record {
    *hl7v2:Segment;
    string name = ORC_SEGMENT_NAME;
    ID orc1 = "";
    EI orc2 = {};
    EI orc3 = {};
    EI orc4 = {};
    ID orc5 = "";
    ID orc6 = "";
    TQ[] orc7 = [{}];
    EIP orc8 = {};
    DTM orc9 = "";
    XCN[] orc10 = [{}];
    XCN[] orc11 = [{}];
    XCN[] orc12 = [{}];
    PL orc13 = {};
    XTN orc14 = {};
    DTM orc15 = "";
    CWE orc16 = {};
    CWE orc17 = {};
    CWE orc18 = {};
    XCN[] orc19 = [{}];
    CWE orc20 = {};
    XON[] orc21 = [{}];
    XAD[] orc22 = [{}];
    XTN[] orc23 = [{}];
    XAD[] orc24 = [{}];
    CWE orc25 = {};
    CWE orc26 = {};
    DTM orc27 = "";
    CWE orc28 = {};
    CWE orc29 = {};
    CNE orc30 = {};
    CWE orc31 = {};
};

public const ORC_SEGMENT_NAME = "ORC";