
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
# + psh1 - Segment Record Field
# + psh2 - Segment Record Field
# + psh3 - Segment Record Field
# + psh4 - Segment Record Field
# + psh5 - Segment Record Field
# + psh6 - Segment Record Field
# + psh7 - Segment Record Field
# + psh8 - Segment Record Field
# + psh9 - Segment Record Field
# + psh10 - Segment Record Field
# + psh11 - Segment Record Field
# + psh12 - Segment Record Field
# + psh13 - Segment Record Field
# + psh14 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PSH",
    required: false,
    maxReps: 0,
    fields: {
        "psh1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psh2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psh3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "psh4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "psh5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "psh6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psh9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "psh10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psh12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "psh13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "psh14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        }
    }
}
public type PSH record {
    *hl7v2:Segment;
    string name = PSH_SEGMENT_NAME;
    ST psh1 = "";
    ST psh2 = "";
    TS psh3 = {};
    TS psh4 = {};
    TS psh5 = {};
    CQ psh6 = {};
    CQ psh7 = {};
    ID psh8 = "";
    FT psh9 = "";
    CQ psh10 = {};
    ID psh11 = "";
    FT psh12 = "";
    NM[] psh13 = [-1];
    NM[] psh14 = [-1];
};

public const PSH_SEGMENT_NAME = "PSH";
