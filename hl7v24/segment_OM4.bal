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
# + om41 - Sequence Number - Test/ Observation Master File
# + om42 - Derived Specimen
# + om43 - Container Description
# + om44 - Container Volume
# + om45 - Container Units
# + om46 - Specimen
# + om47 - Additive
# + om48 - Preparation
# + om49 - Special Handling Requirements
# + om410 - Normal Collection Volume
# + om411 - Minimum Collection Volume
# + om412 - Specimen Requirements
# + om413 - Specimen Priorities
# + om414 - Specimen Retention Time
@hl7v2:SegmentDefinition {
    name: "OM4",
    required: false,
    maxReps: 0,
    fields: {
        "om41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om43": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om45": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "om46": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "om47": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "om48": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om49": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om410": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "om411": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "om412": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om413": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "om414": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        }
    }
}
public type OM4 record {
    *hl7v2:Segment;
    string name = OM4_SEGMENT_NAME;
    NM om41 = "";
    ID om42 = "";
    TX om43 = "";
    NM om44 = "";
    CE om45 = {};
    CE om46 = {};
    CE om47 = {};
    TX om48 = "";
    TX om49 = "";
    CQ om410 = {};
    CQ om411 = {};
    TX om412 = "";
    ID[] om413 = [""];
    CQ om414 = {};
};

public const OM4_SEGMENT_NAME = "OM4";