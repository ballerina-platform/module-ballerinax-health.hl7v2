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
# + rxg1 - Art der Substitution
# + rxg2 - Laufende Nummer der Abgabe pro Verordnung
# + rxg3 - Zeit / Menge / Häufigkeit / Priorität
# + rxg4 - Verordnetes Medikament / Wirkstoff (Apotheke)
# + rxg5 - Verordnete (Mindest-) Dosis (Apotheke)
# + rxg6 - Verordnete Höchstdosis (Apotheke)
# + rxg7 - Maßeinheit (Apotheke)
# + rxg8 - Verordnete Verabreichungsform (Apotheke)
# + rxg9 - Verabreichungshinweise
# + rxg10 - Art der Substitution
# + rxg11 - Lieferadresse
# + rxg12 - Besondere Anweisungen beachten
# + rxg13 - Spezielle Verabreichungsanweisungen der Apotheke
# + rxg14 - Zeiteinheit für Verabreichung
# + rxg15 - Verabreichungsmenge pro Gabe
# + rxg16 - Maßeinheit für Verabreichungsmenge
# + rxg17 - Wirkstoffmenge der Verabreichung
# + rxg18 - Einheit zu Feld 25
# + rxg19 - Chargennummer der Substanz
# + rxg20 - Verfalldatum der Substanz
# + rxg21 - Hersteller der Substanz
# + rxg22 - Indikation
# + rxg23 - Lösungsvolumen des verabreichten Wirkstoffs
# + rxg24 - Maßeinheit des Lösungsvolumens
# + rxg25 - Barcode-ID der Verabreichung
# + rxg26 - Zusatzinformation Auftragslogistik
# + rxg27 - Empfangende Apotheke
# + rxg28 - Adresse der empfangenden Apotheke
# + rxg29 - Aufenthaltsort des Patienten zur Medikamentenlieferung
# + rxg30 - Adresse zur Medikamentenlieferung
@hl7v2:SegmentDefinition {
    name: "RXG",
    required: false,
    maxReps: 0,
    fields: {
        "rxg1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "rxg4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxg10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxg11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxg12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxg13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxg14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxg16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxg20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "rxg21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxg22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxg23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxg27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxg28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxg29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxg30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        }
    }
}
public type RXG record {
    *hl7v2:Segment;
    string name = RXG_SEGMENT_NAME;
    NM rxg1 = "";
    NM rxg2 = "";
    TQ rxg3 = {};
    CWE rxg4 = {};
    NM rxg5 = "";
    NM rxg6 = "";
    CWE rxg7 = {};
    CWE rxg8 = {};
    CWE[] rxg9 = [{}];
    ID rxg10 = "";
    LA2 rxg11 = {};
    ID rxg12 = "";
    CWE[] rxg13 = [{}];
    ST rxg14 = "";
    ST rxg15 = "";
    CWE rxg16 = {};
    NM rxg17 = "";
    CWE rxg18 = {};
    ST[] rxg19 = [""];
    DTM[] rxg20 = [""];
    CWE[] rxg21 = [{}];
    CWE[] rxg22 = [{}];
    NM rxg23 = "";
    CWE rxg24 = {};
    CWE rxg25 = {};
    ID rxg26 = "";
    CWE rxg27 = {};
    XAD rxg28 = {};
    PL rxg29 = {};
    XAD rxg30 = {};
};

public const RXG_SEGMENT_NAME = "RXG";