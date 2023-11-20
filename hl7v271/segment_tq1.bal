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
# + tq11 - TQ1-Segmentnummer
# + tq12 - Menge
# + tq13 - Wiederholungsmuster
# + tq14 - genaue Zeitangabe
# + tq15 - relative Zeitangabe
# + tq16 - Dauer des Tests/der Untersuchung
# + tq17 - Startzeitpunkt
# + tq18 - Endzeitpunkt
# + tq19 - Priorität
# + tq110 - Bedingung
# + tq111 - Handlungsanweisung
# + tq112 - Beziehung zu nächstem TQ1-Segment
# + tq113 - Dauer f. einzelnen Test/Untersuchung
# + tq114 - Gesamtanzahl dieser Tests/Untersuchungen
@hl7v2:SegmentDefinition {
    name: "TQ1",
    required: false,
    maxReps: 0,
    fields: {
        "tq11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "tq12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "tq13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: RPT
        },
        "tq14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TM
        },
        "tq15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CQ
        },
        "tq16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "tq17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "tq18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "tq19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "tq110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "tq111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "tq112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tq113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "tq114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type TQ1 record {
    *hl7v2:Segment;
    string name = TQ1_SEGMENT_NAME;
    SI tq11 = "";
    CQ tq12 = {};
    RPT[] tq13 = [{}];
    TM[] tq14 = [""];
    CQ[] tq15 = [{}];
    CQ tq16 = {};
    DTM tq17 = "";
    DTM tq18 = "";
    CWE[] tq19 = [{}];
    TX tq110 = "";
    TX tq111 = "";
    ID tq112 = "";
    CQ tq113 = {};
    NM tq114 = "";
};

public const TQ1_SEGMENT_NAME = "TQ1";