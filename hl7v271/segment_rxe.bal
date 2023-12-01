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
# + rxe1 - Withdrawn field
# + rxe2 - Verordnetes Medikament / Wirkstoff (Apotheke)
# + rxe3 - Verordnete (Mindest-) Dosis (Apotheke)
# + rxe4 - Verordnete Höchstdosis (Apotheke)
# + rxe5 - Maßeinheit (Apotheke)
# + rxe6 - Verordnete Verabreichungsform (Apotheke)
# + rxe7 - Verabreichungsanweisungen
# + rxe8 - Withdrawn field
# + rxe9 - Art der Substitution
# + rxe10 - Abgabemenge
# + rxe11 - Abgabeeinheit
# + rxe12 - Anzahl wiederholter Abgaben wie verordnet
# + rxe13 - Arztnummer des Verordnenden bei der DEA
# + rxe14 - Kennzeichen und Name des prüfenden Apothekers
# + rxe15 - Rezeptnummer
# + rxe16 - Anzahl verbleibender Abgaben
# + rxe17 - Anzahl erfolgter Abgaben
# + rxe18 - Zeitpunkt der letzten Abgabe
# + rxe19 - Tägliche Gesamtdosis
# + rxe20 - Besondere Anweisungen beachten
# + rxe21 - Spezielle Abgabe- / Verabreichungsanweisungen der Apotheke
# + rxe22 - Zeiteinheit für Verabreichung
# + rxe23 - Verabreichungsmenge pro Gabe
# + rxe24 - Maßeinheit für Verabreichungsmenge
# + rxe25 - Wirkstoffmenge der Verabreichung
# + rxe26 - Einheit zu Feld 25
# + rxe27 - Indikation zur Verabreichung
# + rxe28 - Menge pro Verpackung
# + rxe29 - Einheit zu Feld 28
# + rxe30 - Abgabemethode
# + rxe31 - zusätzlicher Code
# + rxe32 - Zeitpunkt des urspünglichen Auftrags
# + rxe33 - Lösungsvolumen des verabreichten Wirkstoffs
# + rxe34 - Maßeinheit des Lösungsvolumens
# + rxe35 - Klassifikation staatlich reglementierter Wirkstoffe (BTM)
# + rxe36 - Status in der Hausliste
# + rxe37 - Alternative Substanz
# + rxe38 - Apotheke der letzten Lieferung
# + rxe39 - Menge der Erstlieferung
# + rxe40 - Liefernde Apotheke
# + rxe41 - Adresse der liefernden Apotheke
# + rxe42 - Aufenthaltsort des Patienten zur Medikamentenlieferung
# + rxe43 - Adresse zur Medikamentenlieferung
# + rxe44 - Zusatzinformation Auftragslogistik
# + rxe45 - 2310XTNHL7Pharmacy Phone Number
@hl7v2:SegmentDefinition {
    name: "RXE",
    required: false,
    maxReps: 0,
    fields: {
        "rxe1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxe14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxe15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxe19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxe20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe31": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxe33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe37": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe39": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxe42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxe43": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxe44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe45": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type RXE record {
    *hl7v2:Segment;
    string name = RXE_SEGMENT_NAME;
    ST rxe1 = "";
    CWE rxe2 = {};
    NM rxe3 = "";
    NM rxe4 = "";
    CWE rxe5 = {};
    CWE rxe6 = {};
    CWE[] rxe7 = [{}];
    ST rxe8 = "";
    ID rxe9 = "";
    NM rxe10 = "";
    CWE rxe11 = {};
    NM rxe12 = "";
    XCN[] rxe13 = [{}];
    XCN[] rxe14 = [{}];
    ST rxe15 = "";
    NM rxe16 = "";
    NM rxe17 = "";
    DTM rxe18 = "";
    CQ rxe19 = {};
    ID rxe20 = "";
    CWE[] rxe21 = [{}];
    ST rxe22 = "";
    ST rxe23 = "";
    CWE rxe24 = {};
    NM rxe25 = "";
    CWE rxe26 = {};
    CWE[] rxe27 = [{}];
    NM rxe28 = "";
    CWE rxe29 = {};
    ID rxe30 = "";
    CWE[] rxe31 = [{}];
    DTM rxe32 = "";
    NM rxe33 = "";
    CWE rxe34 = {};
    CWE rxe35 = {};
    ID rxe36 = "";
    CWE[] rxe37 = [{}];
    CWE rxe38 = {};
    NM rxe39 = "";
    CWE rxe40 = {};
    XAD rxe41 = {};
    PL rxe42 = {};
    XAD rxe43 = {};
    ID rxe44 = "";
    XTN[] rxe45 = [{}];
};

public const RXE_SEGMENT_NAME = "RXE";
