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
# + inv1 - ID der Substanz
# + inv2 - Status der Substanz
# + inv3 - Art der Substanz
# + inv4 - Herstellerspezifische ID des Substanzbehälters
# + inv5 - ID des Trägers des Substanzbehälters
# + inv6 - Position auf dem Träger
# + inv7 - Urspüngliche Substanzmenge
# + inv8 - Momentane Substanzmenge
# + inv9 - Verfügbare Substanzmenge
# + inv10 - Verbrauchsmenge
# + inv11 - Einheit der Mengenangaben
# + inv12 - Zeitpunkt des Verfalls
# + inv13 - Zeitpunkt der ersten Benutzung
# + inv14 - Dauer der Stabilität der Substanz
# + inv15 - ID der Tests/Körperflüssigkeiten
# + inv16 - Chargennummer des Herstellers
# + inv17 - Herstellernummer und -name
# + inv18 - Lieferantennummer und -name
# + inv19 - Verwendbarkeitsdauer
# + inv20 - Zielwert
@hl7v2:SegmentDefinition {
    name: "INV",
    required: false,
    maxReps: 0,
    fields: {
        "inv1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv2": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "inv3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "inv13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "inv14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "inv15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "inv16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "inv17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "inv19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "inv20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        }
    }
}
public type INV record {
    *hl7v2:Segment;
    string name = INV_SEGMENT_NAME;
    CWE inv1 = {};
    CWE[] inv2 = [{}];
    CWE inv3 = {};
    CWE inv4 = {};
    CWE inv5 = {};
    CWE inv6 = {};
    NM inv7 = "";
    NM inv8 = "";
    NM inv9 = "";
    NM inv10 = "";
    CWE inv11 = {};
    DTM inv12 = "";
    DTM inv13 = "";
    TQ inv14 = {};
    CWE[] inv15 = [{}];
    ST inv16 = "";
    CWE inv17 = {};
    CWE inv18 = {};
    CQ inv19 = {};
    CQ inv20 = {};
};

public const INV_SEGMENT_NAME = "INV";