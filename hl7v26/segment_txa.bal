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
# + txa1 - TXA-Segmentnummer
# + txa2 - Dokumenttyp
# + txa3 - Format des Dokumenteninhalts
# + txa4 - Zeitpunkt der dokumentierten Maßnahme
# + txa5 - Verantwortlicher der Maßnahme
# + txa6 - Zeitpunkt der Dokumentation
# + txa7 - Zeitpunkt der Niederschrift
# + txa8 - Zeitpunkt von Änderungen
# + txa9 - Autor
# + txa10 - Gegenzeichnungsberechtigte Person
# + txa11 - Schreibkraft
# + txa12 - Eindeutige Dokumentennummer
# + txa13 - Nummer des Bezugsdokuments
# + txa14 - Auftragsnummer des Auftraggebers / der auftraggebenden Stelle
# + txa15 - Bearbeitungsnummer der Leistungsstelle
# + txa16 - Eindeutiger Dokumentenname
# + txa17 - Bearbeitungsstatus des Dokuments
# + txa18 - Vertraulichkeitsstatus des Dokuments
# + txa19 - Verfügbarkeitstatus des Dokuments
# + txa20 - Archivierungsstatus des Dokuments
# + txa21 - Grund der Änderung des Dokuments
# + txa22 - Person und Zeitpunkt der Gegenzeichnung
# + txa23 - Empfänger einer Kopie
@hl7v2:SegmentDefinition {
    name: "TXA",
    required: false,
    maxReps: 0,
    fields: {
        "txa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "txa2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "txa3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "txa5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "txa7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "txa8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "txa9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "txa12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "txa13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "txa14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "txa15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "txa16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "txa17": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "txa21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "txa22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PPN
        },
        "txa23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        }
    }
}
public type TXA record {
    *hl7v2:Segment;
    string name = TXA_SEGMENT_NAME;
    SI txa1 = "";
    IS txa2 = "";
    ID txa3 = "";
    DTM txa4 = "";
    XCN[] txa5 = [{}];
    DTM txa6 = "";
    DTM txa7 = "";
    DTM[] txa8 = [""];
    XCN[] txa9 = [{}];
    XCN[] txa10 = [{}];
    XCN[] txa11 = [{}];
    EI txa12 = {};
    EI txa13 = {};
    EI[] txa14 = [{}];
    EI txa15 = {};
    ST txa16 = "";
    ID txa17 = "";
    ID txa18 = "";
    ID txa19 = "";
    ID txa20 = "";
    ST txa21 = "";
    PPN[] txa22 = [{}];
    XCN[] txa23 = [{}];
};

public const TXA_SEGMENT_NAME = "TXA";