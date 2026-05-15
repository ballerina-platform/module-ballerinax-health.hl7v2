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

# OM4 segment. Observation That Require Specimens
# + name - Segment Name
# + om41 - Segment Type Id
# + om42 - Sequence Number - Test/ Observation Master File
# + om43 - Derived Specimen
# + om44 - Container Description
# + om45 - Container Volume
# + om46 - Container Units
# + om47 - Specimen
# + om48 - Additive
# + om49 - Preparation
# + om410 - Special Handling Requirements
# + om411 - Normal Collection Volume
# + om412 - Minimum Collection Volume
# + om413 - Specimen Requirements
# + om414 - Specimen Priorities
# + om415 - Specimen Retention Time

@hl7v2:SegmentDefinition {
    name: "OM4",
    required: false,
    maxReps: 0,
    fields: {
        "om41": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "om42": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "om43": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om44": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: TX
        },
        "om45": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "om46": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "om47": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "om48": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "om49": {
            required: false,
            length: 10240,
            maxReps: 1,
            dataType: TX
        },
        "om410": {
            required: false,
            length: 10240,
            maxReps: 1,
            dataType: TX
        },
        "om411": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CQ
        },
        "om412": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CQ
        },
        "om413": {
            required: false,
            length: 10240,
            maxReps: 1,
            dataType: TX
        },
        "om414": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: ID
        },
        "om415": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CQ
        }

    }
}
public type OM4 record {
    *hl7v2:Segment;
    string name = OM4_SEGMENT_NAME;
    ST om41 = "";
    NM om42 = "";
    ID om43 = "";
    TX om44 = "";
    NM om45 = "";
    CE om46 = {};
    CE om47 = {};
    CE om48 = {};
    TX om49 = "";
    TX om410 = "";
    CQ om411 = {};
    CQ om412 = {};
    TX om413 = "";
    ID[] om414 = [""];
    CQ om415 = {};
};

public const OM4_SEGMENT_NAME = "OM4";
