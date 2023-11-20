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
# + dmi1 - Diagnosegruppe
# + dmi2 - Hauptkategorie im DRG System
# + dmi3 - Untere und obere Prüfgrenzen
# + dmi4 - durchschnittliche Verweildauer
# + dmi5 - Relative Gewichtung
@hl7v2:SegmentDefinition {
    name: "DMI",
    required: false,
    maxReps: 0,
    fields: {
        "dmi1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "dmi2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "dmi3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NR
        },
        "dmi4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "dmi5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type DMI record {
    *hl7v2:Segment;
    string name = DMI_SEGMENT_NAME;
    CNE dmi1 = {};
    CNE dmi2 = {};
    NR dmi3 = {};
    NM dmi4 = "";
    NM dmi5 = "";
};

public const DMI_SEGMENT_NAME = "DMI";