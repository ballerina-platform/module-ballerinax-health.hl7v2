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
# + arq1 - ID der Terminanforderung
# + arq2 - ID der Terminvergabe
# + arq3 - Nummer der Wiederholung
# + arq4 - Auftragsgruppennummer
# + arq5 - ID des Terminplans
# + arq6 - Grund der Nachricht
# + arq7 - Grund der Terminanforderung
# + arq8 - Typ der Terminanforderung
# + arq9 - Dauer des Termin
# + arq10 - Einheit der Dauer des Termins
# + arq11 - Gewünschtes Zeitfenster für den Beginn
# + arq12 - nicht verwendet (veraltet; sechste Komponente von OBR-27 benutzen)
# + arq13 - Wiederholungsintervall
# + arq14 - Wiederholungszeitraum
# + arq15 - Ansprechpartner beim Auftraggeber
# + arq16 - Telefonnummer des Ansprechpartner beim Auftraggeber
# + arq17 - Adresse des Ansprechpartners
# + arq18 - Aufenthaltsort des Ansprechpartners
# + arq19 - Erfasser
# + arq20 - Telefonnummer des Erfassers
# + arq21 - Aufenthaltsort des Erfassers
# + arq22 - ID der übergeordneten Terminanforderung
# + arq23 - ID der übergeordneten Terminvergabe
# + arq24 - Auftragsnummer des Auftraggebers / der auftraggebenden Stelle
# + arq25 - Bearbeitungsnummer der Leistungsstelle
@hl7v2:SegmentDefinition {
    name: "ARQ",
    required: false,
    maxReps: 0,
    fields: {
        "arq1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "arq4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "arq6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "arq7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "arq8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "arq9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "arq10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "arq11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DR
        },
        "arq12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "arq13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: RI
        },
        "arq14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "arq15": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "arq16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "arq17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "arq18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "arq19": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "arq20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "arq21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "arq22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "arq25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        }
    }
}
public type ARQ record {
    *hl7v2:Segment;
    string name = ARQ_SEGMENT_NAME;
    EI arq1 = {};
    EI arq2 = {};
    NM arq3 = "";
    EI arq4 = {};
    CWE arq5 = {};
    CWE arq6 = {};
    CWE arq7 = {};
    CWE arq8 = {};
    NM arq9 = "";
    CNE arq10 = {};
    DR[] arq11 = [{}];
    ST arq12 = "";
    RI arq13 = {};
    ST arq14 = "";
    XCN[] arq15 = [{}];
    XTN[] arq16 = [{}];
    XAD[] arq17 = [{}];
    PL arq18 = {};
    XCN[] arq19 = [{}];
    XTN[] arq20 = [{}];
    PL arq21 = {};
    EI arq22 = {};
    EI arq23 = {};
    EI[] arq24 = [{}];
    EI[] arq25 = [{}];
};

public const ARQ_SEGMENT_NAME = "ARQ";