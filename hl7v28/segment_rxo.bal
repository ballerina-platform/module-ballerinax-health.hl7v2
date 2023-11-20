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
# + rxo1 - Verordnetes Medikament / Wirkstoff
# + rxo2 - Verordnete (Mindest-) Dosis (z.B. "2")
# + rxo3 - Verordnete Höchstdosis (z.B. "3")
# + rxo4 - Maßeinheit der Verordnung (z.B. "Tablette")
# + rxo5 - Verordnete Verabreichungsform
# + rxo6 - Spezielle Anweisungen des Verordnenden an die Apotheke
# + rxo7 - Verabreichungsanweisungen
# + rxo8 - Lieferadresse
# + rxo9 - Substitutionsmöglichkeiten
# + rxo10 - Verordnete Abgabeform des Medikaments / Wirkstoffs
# + rxo11 - Verordnete Abgabemenge
# + rxo12 - Verordnete Abgabeeinheit
# + rxo13 - Anzahl wiederholter Abgaben wie verordnet
# + rxo14 - Arztnummer des Verordnenden bei der DEA
# + rxo15 - Kennzeichen und Name des prüfenden Apothekers
# + rxo16 - Besondere Anweisungen beachten
# + rxo17 - Verordnete Zeiteinheit für Verabreichung
# + rxo18 - Verordnete Menge pro Verabreichungseinheit (z.B. "250")
# + rxo19 - Einheit zu Feld 18 (z.B. "mg")
# + rxo20 - Indikation
# + rxo21 - Verordnete Verabreichungsrate
# + rxo22 - Einheit zu Feld 21
# + rxo23 - Tägliche Gesamtdosis
# + rxo24 - zusätzlicher Code
# + rxo25 - Lösungsvolumen des verordneten Wirkstoffs
# + rxo26 - Maßeinheit des Lösungsvolumens des verordneten Wirkstoffs
# + rxo27 - Zusatzinformation Auftragslogistik
# + rxo28 - minimales Lieferintervall
# + rxo29 - ID des Medikaments
# + rxo30 - ID des Segments (über Nachrichteninstanzen hinweg)
# + rxo31 - Mood-Code
# + rxo32 - Liefernde Apotheke
# + rxo33 - Adresse der liefernden Apotheke
# + rxo34 - Aufenthaltsort des Patienten zur Medikamentenlieferung
# + rxo35 - Adresse zur Medikamentenlieferung
# + rxo36 - 2309XTNHL7Pharmacy Phone Number
@hl7v2:SegmentDefinition {
    name: "RXO",
    required: false,
    maxReps: 0,
    fields: {
        "rxo1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA1
        },
        "rxo9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxo15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxo16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxo18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxo22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxo24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rxo30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rxo31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "rxo32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxo34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxo35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxo36": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type RXO record {
    *hl7v2:Segment;
    string name = RXO_SEGMENT_NAME;
    CWE rxo1 = {};
    NM rxo2 = "";
    NM rxo3 = "";
    CWE rxo4 = {};
    CWE rxo5 = {};
    CWE[] rxo6 = [{}];
    CWE[] rxo7 = [{}];
    LA1 rxo8 = {};
    ID rxo9 = "";
    CWE rxo10 = {};
    NM rxo11 = "";
    CWE rxo12 = {};
    NM rxo13 = "";
    XCN[] rxo14 = [{}];
    XCN[] rxo15 = [{}];
    ID rxo16 = "";
    ST rxo17 = "";
    NM rxo18 = "";
    CWE rxo19 = {};
    CWE[] rxo20 = [{}];
    ST rxo21 = "";
    CWE rxo22 = {};
    CQ rxo23 = {};
    CWE[] rxo24 = [{}];
    NM rxo25 = "";
    CWE rxo26 = {};
    ID rxo27 = "";
    NM rxo28 = "";
    EI rxo29 = {};
    EI rxo30 = {};
    CNE rxo31 = {};
    CWE rxo32 = {};
    XAD rxo33 = {};
    PL rxo34 = {};
    XAD rxo35 = {};
    XTN[] rxo36 = [{}];
};

public const RXO_SEGMENT_NAME = "RXO";