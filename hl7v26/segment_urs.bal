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
# + urs1 - Abteilung / System, auf die sich der Bericht bezieht
# + urs2 - Anfang des Berichtszeitraums
# + urs3 - Ende des Berichtszeitraums
# + urs4 - Benutzerspezifisches Kriterium
# + urs5 - Installationsspezifisches Kriterium
# + urs6 - Ereignisse, auf die sich der Bericht bezieht
# + urs7 - Status des Berichtsgegenstandes
# + urs8 - Berichtsumfang
# + urs9 - Zeitpunkt-/intervall-/Mengenfestlegung
@hl7v2:SegmentDefinition {
    name: "URS",
    required: false,
    maxReps: 0,
    fields: {
        "urs1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urs2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "urs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "urs4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urs5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urs6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "urs7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "urs8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "urs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        }
    }
}
public type URS record {
    *hl7v2:Segment;
    string name = URS_SEGMENT_NAME;
    ST[] urs1 = [""];
    DTM urs2 = "";
    DTM urs3 = "";
    ST[] urs4 = [""];
    ST[] urs5 = [""];
    ID[] urs6 = [""];
    ID[] urs7 = [""];
    ID[] urs8 = [""];
    TQ urs9 = {};
};

public const URS_SEGMENT_NAME = "URS";