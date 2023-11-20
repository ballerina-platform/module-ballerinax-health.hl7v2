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
# + rxd1 - Laufende Nummer der Abgabe pro Verordnung
# + rxd2 - Abgegebenes Medikament / Wirkstoff
# + rxd3 - Zeitpunkt der Abgabe
# + rxd4 - Tatsächliche Abgabemenge
# + rxd5 - Tatsächliche Abgabeeinheit
# + rxd6 - Tatsächliche Verabreichungsform
# + rxd7 - Rezeptnummer
# + rxd8 - Anzahl verbleibender Abgaben
# + rxd9 - Anmerkungen zur Abgabe
# + rxd10 - Abgebende Person / Mitarbeiter
# + rxd11 - Art der Substitution
# + rxd12 - Tägliche Gesamtdosis
# + rxd13 - Lieferadresse
# + rxd14 - Besondere Anweisungen beachten
# + rxd15 - Spezielle Abgabe- / Verabreichungsanweisungen der Apotheke
# + rxd16 - Tatsächliche Wirkstoffmenge
# + rxd17 - Einheit zu Feld 16
# + rxd18 - Chargennummer der Substanz
# + rxd19 - Verfalldatum der Substanz
# + rxd20 - Hersteller der Substanz
# + rxd21 - Indikation
# + rxd22 - Menge pro Verpackung
# + rxd23 - Einheit zu Feld 28
# + rxd24 - Abgabemethode
# + rxd25 - zusätzlicher Code
# + rxd26 - ursprüngliche Stelle
# + rxd27 - verpackende/zusammenstellende Stelle
# + rxd28 - tatsächliches Lösungsvolumen
# + rxd29 - Einheit des Lösungsvolumens
# + rxd30 - Empfangende Apotheke
# + rxd31 - Adresse der empfangenden Apotheke
# + rxd32 - Zusatzinformation Auftragslogistik
# + rxd33 - Art der Liefermenge
@hl7v2:SegmentDefinition {
    name: "RXD",
    required: false,
    maxReps: 0,
    fields: {
        "rxd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxd4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxd10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxd11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxd13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxd19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "rxd20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxd32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type RXD record {
    *hl7v2:Segment;
    string name = RXD_SEGMENT_NAME;
    NM rxd1 = "";
    CWE rxd2 = {};
    DTM rxd3 = "";
    NM rxd4 = "";
    CWE rxd5 = {};
    CWE rxd6 = {};
    ST rxd7 = "";
    NM rxd8 = "";
    ST[] rxd9 = [""];
    XCN[] rxd10 = [{}];
    ID rxd11 = "";
    CQ rxd12 = {};
    LA2 rxd13 = {};
    ID rxd14 = "";
    CWE[] rxd15 = [{}];
    NM rxd16 = "";
    CWE rxd17 = {};
    ST[] rxd18 = [""];
    DTM[] rxd19 = [""];
    CWE[] rxd20 = [{}];
    CWE[] rxd21 = [{}];
    NM rxd22 = "";
    CWE rxd23 = {};
    ID rxd24 = "";
    CWE[] rxd25 = [{}];
    CWE rxd26 = {};
    CWE rxd27 = {};
    NM rxd28 = "";
    CWE rxd29 = {};
    CWE rxd30 = {};
    XAD rxd31 = {};
    ID rxd32 = "";
    CWE rxd33 = {};
};

public const RXD_SEGMENT_NAME = "RXD";