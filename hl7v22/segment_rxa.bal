// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# RXA segment. Pharmacy Aadministration The ORC must have the filler order number and the order control code RE. As a site-specific variant, the RXO and associated RXCs and/or the RXE (and associated RXCs) may be present if the receiving application needs any of their data. The ...
# + name - Segment Name
# + rxa1 - Give Sub-id Counter
# + rxa2 - Administration Sub-id Counter
# + rxa3 - Date / Time Start Of Administration
# + rxa4 - Date / Time End Of Administration
# + rxa5 - Administered Code
# + rxa6 - Administered Amount
# + rxa7 - Administered Units
# + rxa8 - Administered Dosage Form
# + rxa9 - Administration Notes
# + rxa10 - Administering Provider
# + rxa11 - Administered-at Location
# + rxa12 - Administered Per (time Unit)

@hl7v2:SegmentDefinition {
    name: "RXA",
    required: false,
    maxReps: 0,
    fields: {
        "rxa1": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "rxa2": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "rxa3": {
            required: true,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "rxa4": {
            required: true,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "rxa5": {
            required: true,
            length: 100,
            maxReps: 1,
            dataType: CE
        },
        "rxa6": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxa7": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxa8": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxa9": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: ST
        },
        "rxa10": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "rxa11": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_LA1
        },
        "rxa12": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        }

    }
}
public type RXA record {
    *hl7v2:Segment;
    string name = RXA_SEGMENT_NAME;
    NM rxa1 = "";
    NM rxa2 = "";
    TS rxa3 = {};
    TS rxa4 = {};
    CE rxa5 = {};
    NM rxa6 = "";
    CE rxa7 = {};
    CE rxa8 = {};
    ST[] rxa9 = [""];
    CN_PERSON rxa10 = {};
    CM_LA1 rxa11 = {};
    ST rxa12 = "";
};

public const RXA_SEGMENT_NAME = "RXA";
