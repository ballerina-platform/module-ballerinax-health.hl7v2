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
# + rxa1 - Art der Substitution
# + rxa2 - Laufende Nummer der Verabreichung pro Verordnung (Station)
# + rxa3 - Verabreichungsbeginn
# + rxa4 - Verabreichungsende
# + rxa5 - Verabreichtes Medikament /  Wirkstoff
# + rxa6 - Verabreichte Menge
# + rxa7 - Maßeinheit
# + rxa8 - Tatsächliche Verabreichungsform
# + rxa9 - Verabreichungshinweise
# + rxa10 - Verabreichende Person / Mitarbeiter
# + rxa11 - Verabreichungsort (Adresse)
# + rxa12 - Zeiteinheit für Verabreichung
# + rxa13 - Verabreichte Wirkstoffmenge
# + rxa14 - Einheit zu Feld 13
# + rxa15 - Chargennummer der Substanz
# + rxa16 - Verfalldatum der Substanz
# + rxa17 - Hersteller der Substanz
# + rxa18 - Grund fur Ablehnung der Medikation/Behandlung
# + rxa19 - Indikation
# + rxa20 - Status der Medikation
# + rxa21 - Aktionscode - RXA
# + rxa22 - Erfassungszeitpunkt
# + rxa23 - Lösungsvolumen des verabreichten Wirkstoffs
# + rxa24 - Maßeinheit des Lösungsvolumens
# + rxa25 - Barcode-ID des verabreichten Medikaments
# + rxa26 - Zusatzinformation Auftragslogistik
# + rxa27 - Ort der Verabreichung
# + rxa28 - Adresse der Verabreichung
@hl7v2:SegmentDefinition {
    name: "RXA",
    required: false,
    maxReps: 0,
    fields: {
        "rxa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxa4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxa5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxa11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxa12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxa13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxa16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "rxa17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxa20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxa23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxa26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxa28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        }
    }
}
public type RXA record {
    *hl7v2:Segment;
    string name = RXA_SEGMENT_NAME;
    NM rxa1 = "";
    NM rxa2 = "";
    DTM rxa3 = "";
    DTM rxa4 = "";
    CWE rxa5 = {};
    NM rxa6 = "";
    CWE rxa7 = {};
    CWE rxa8 = {};
    CWE[] rxa9 = [{}];
    XCN[] rxa10 = [{}];
    LA2 rxa11 = {};
    ST rxa12 = "";
    NM rxa13 = "";
    CWE rxa14 = {};
    ST[] rxa15 = [""];
    DTM[] rxa16 = [""];
    CWE[] rxa17 = [{}];
    CWE[] rxa18 = [{}];
    CWE[] rxa19 = [{}];
    ID rxa20 = "";
    ID rxa21 = "";
    DTM rxa22 = "";
    NM rxa23 = "";
    CWE rxa24 = {};
    CWE rxa25 = {};
    ID rxa26 = "";
    PL rxa27 = {};
    XAD rxa28 = {};
};

public const RXA_SEGMENT_NAME = "RXA";