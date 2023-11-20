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
# + fhs1 - Feldtrennzeichen
# + fhs2 - Weitere Trennzeichen
# + fhs3 - Sendende Anwendung / Sendender Bereich
# + fhs4 - Sendender Prozeß / Sendende Einrichtung innerhalb Bereich
# + fhs5 - Empfangende Anwendung / Empfangender Bereich
# + fhs6 - Empfangender Prozeß / Empfangende Einrichtung innerhalb Bereich
# + fhs7 - Zeitpunkt der Dateierstellung
# + fhs8 - Sicherheitsspezifikation
# + fhs9 - Dateiname / -kennung
# + fhs10 - Kommentar
# + fhs11 - Dateikontrollnummer
# + fhs12 - Kontrollnummer der Originaldatei (bei Übertragungsfehlern)
# + fhs13 - Netzwerkadresse Sender
# + fhs14 - Netzwerkadresse Empfänger
@hl7v2:SegmentDefinition {
    name: "FHS",
    required: false,
    maxReps: 0,
    fields: {
        "fhs1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "fhs4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "fhs5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "fhs6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "fhs7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "fhs8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "fhs14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        }
    }
}
public type FHS record {
    *hl7v2:Segment;
    string name = FHS_SEGMENT_NAME;
    ST fhs1 = "";
    ST fhs2 = "";
    HD fhs3 = {};
    HD fhs4 = {};
    HD fhs5 = {};
    HD fhs6 = {};
    DTM fhs7 = "";
    ST fhs8 = "";
    ST fhs9 = "";
    ST fhs10 = "";
    ST fhs11 = "";
    ST fhs12 = "";
    HD fhs13 = {};
    HD fhs14 = {};
};

public const FHS_SEGMENT_NAME = "FHS";