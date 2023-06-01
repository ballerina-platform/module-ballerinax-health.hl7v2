
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
# + pr11 - Segment Record Field
# + pr12 - Segment Record Field
# + pr13 - Segment Record Field
# + pr14 - Segment Record Field
# + pr15 - Segment Record Field
# + pr16 - Segment Record Field
# + pr17 - Segment Record Field
# + pr18 - Segment Record Field
# + pr19 - Segment Record Field
# + pr110 - Segment Record Field
# + pr111 - Segment Record Field
# + pr112 - Segment Record Field
# + pr113 - Segment Record Field
# + pr114 - Segment Record Field
# + pr115 - Segment Record Field
# + pr116 - Segment Record Field
# + pr117 - Segment Record Field
# + pr118 - Segment Record Field
# + pr119 - Segment Record Field
# + pr120 - Segment Record Field
# + pr121 - Segment Record Field
# + pr122 - Segment Record Field
# + pr123 - Segment Record Field
# + pr124 - Segment Record Field
# + pr125 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PR1",
    required: false,
    maxReps: 0,
    fields: {
        "pr11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pr12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pr13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "pr14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pr15": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pr16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pr18": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pr19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pr111": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pr112": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pr113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pr115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "pr117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pr119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pr120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pr121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pr123": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PL
        },
        "pr124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pr125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        }
    }
}
public type PR1 record {
    *hl7v2:Segment;
    string name = PR1_SEGMENT_NAME;
    SI pr11 = "";
    ST pr12 = "";
    CNE pr13 = {};
    ST pr14 = "";
    DTM pr15 = "";
    CWE pr16 = {};
    NM pr17 = "";
    ST pr18 = "";
    CWE pr19 = {};
    NM pr110 = "";
    ST pr111 = "";
    ST pr112 = "";
    CWE pr113 = {};
    NM pr114 = "";
    CWE pr115 = {};
    CNE[] pr116 = [{}];
    CWE pr117 = {};
    CWE[] pr118 = [{}];
    EI pr119 = {};
    ID pr120 = "";
    CWE pr121 = {};
    CWE pr122 = {};
    PL[] pr123 = [{}];
    ID pr124 = "";
    EI pr125 = {};
};

public const PR1_SEGMENT_NAME = "PR1";
