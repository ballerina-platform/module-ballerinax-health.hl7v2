
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
# + ft11 - Segment Record Field
# + ft12 - Segment Record Field
# + ft13 - Segment Record Field
# + ft14 - Segment Record Field
# + ft15 - Segment Record Field
# + ft16 - Segment Record Field
# + ft17 - Segment Record Field
# + ft18 - Segment Record Field
# + ft19 - Segment Record Field
# + ft110 - Segment Record Field
# + ft111 - Segment Record Field
# + ft112 - Segment Record Field
# + ft113 - Segment Record Field
# + ft114 - Segment Record Field
# + ft115 - Segment Record Field
# + ft116 - Segment Record Field
# + ft117 - Segment Record Field
# + ft118 - Segment Record Field
# + ft119 - Segment Record Field
# + ft120 - Segment Record Field
# + ft121 - Segment Record Field
# + ft122 - Segment Record Field
# + ft123 - Segment Record Field
# + ft124 - Segment Record Field
# + ft125 - Segment Record Field
# + ft126 - Segment Record Field
# + ft127 - Segment Record Field
# + ft128 - Segment Record Field
# + ft129 - Segment Record Field
# + ft130 - Segment Record Field
# + ft131 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "FT1",
    required: false,
    maxReps: 0,
    fields: {
        "ft11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ft12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "ft15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "ft16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ft17": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ft18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ft111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ft114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ft115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "ft117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ft118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ft119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "ft120": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "ft121": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "ft122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ft124": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "ft125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ft126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "ft127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ft128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ft130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "ft131": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: SI
        }
    }
}
public type FT1 record {
    *hl7v2:Segment;
    string name = FT1_SEGMENT_NAME;
    SI ft11 = "";
    ST ft12 = "";
    ST ft13 = "";
    DR ft14 = {};
    TS ft15 = {};
    IS ft16 = "";
    CE ft17 = {};
    ST ft18 = "";
    ST ft19 = "";
    NM ft110 = "";
    CP ft111 = {};
    CP ft112 = {};
    CE ft113 = {};
    CE ft114 = {};
    CP ft115 = {};
    PL ft116 = {};
    IS ft117 = "";
    IS ft118 = "";
    CE[] ft119 = [{}];
    XCN[] ft120 = [{}];
    XCN[] ft121 = [{}];
    CP ft122 = {};
    EI ft123 = {};
    XCN[] ft124 = [{}];
    CE ft125 = {};
    CE[] ft126 = [{}];
    CE ft127 = {};
    CWE ft128 = {};
    CNE ft129 = {};
    CX ft130 = {};
    SI[] ft131 = [""];
};

public const FT1_SEGMENT_NAME = "FT1";