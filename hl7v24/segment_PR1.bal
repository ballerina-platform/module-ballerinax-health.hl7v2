
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
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pr13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pr14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pr15": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pr16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pr17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pr18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pr19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pr110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pr111": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pr112": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pr113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pr114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pr115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pr116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "pr117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pr118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type PR1 record {
    *hl7v2:Segment;
    string name = PR1_SEGMENT_NAME;
    SI pr11 = "";
    IS pr12 = "";
    CE pr13 = {};
    ST pr14 = "";
    TS pr15 = {};
    IS pr16 = "";
    NM pr17 = "";
    XCN[] pr18 = [{}];
    IS pr19 = "";
    NM pr110 = "";
    XCN[] pr111 = [{}];
    XCN[] pr112 = [{}];
    CE pr113 = {};
    ID pr114 = "";
    CE pr115 = {};
    CE[] pr116 = [{}];
    IS pr117 = "";
    CE[] pr118 = [{}];
};

public const PR1_SEGMENT_NAME = "PR1";