
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
# + gt11 - Segment Record Field
# + gt12 - Segment Record Field
# + gt13 - Segment Record Field
# + gt14 - Segment Record Field
# + gt15 - Segment Record Field
# + gt16 - Segment Record Field
# + gt17 - Segment Record Field
# + gt18 - Segment Record Field
# + gt19 - Segment Record Field
# + gt110 - Segment Record Field
# + gt111 - Segment Record Field
# + gt112 - Segment Record Field
# + gt113 - Segment Record Field
# + gt114 - Segment Record Field
# + gt115 - Segment Record Field
# + gt116 - Segment Record Field
# + gt117 - Segment Record Field
# + gt118 - Segment Record Field
# + gt119 - Segment Record Field
# + gt120 - Segment Record Field
# + gt121 - Segment Record Field
# + gt122 - Segment Record Field
# + gt123 - Segment Record Field
# + gt124 - Segment Record Field
# + gt125 - Segment Record Field
# + gt126 - Segment Record Field
# + gt127 - Segment Record Field
# + gt128 - Segment Record Field
# + gt129 - Segment Record Field
# + gt130 - Segment Record Field
# + gt131 - Segment Record Field
# + gt132 - Segment Record Field
# + gt133 - Segment Record Field
# + gt134 - Segment Record Field
# + gt135 - Segment Record Field
# + gt136 - Segment Record Field
# + gt137 - Segment Record Field
# + gt138 - Segment Record Field
# + gt139 - Segment Record Field
# + gt140 - Segment Record Field
# + gt141 - Segment Record Field
# + gt142 - Segment Record Field
# + gt143 - Segment Record Field
# + gt144 - Segment Record Field
# + gt145 - Segment Record Field
# + gt146 - Segment Record Field
# + gt147 - Segment Record Field
# + gt148 - Segment Record Field
# + gt149 - Segment Record Field
# + gt150 - Segment Record Field
# + gt151 - Segment Record Field
# + gt152 - Segment Record Field
# + gt153 - Segment Record Field
# + gt154 - Segment Record Field
# + gt155 - Segment Record Field
# + gt156 - Segment Record Field
# + gt157 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "GT1",
    required: false,
    maxReps: 0,
    fields: {
        "gt11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "gt12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt13": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "gt16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gt19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gt116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "gt118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt121": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "gt122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gt125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gt128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gt129": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt134": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "gt135": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gt136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt142": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt144": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gt145": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt146": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gt148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt149": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "gt151": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "gt152": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt154": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FC
        },
        "gt155": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gt156": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt157": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type GT1 record {
    *hl7v2:Segment;
    string name = GT1_SEGMENT_NAME;
    SI gt11 = "";
    CX[] gt12 = [{}];
    XPN[] gt13 = [{}];
    XPN[] gt14 = [{}];
    XAD[] gt15 = [{}];
    XTN[] gt16 = [{}];
    XTN[] gt17 = [{}];
    DTM gt18 = "";
    IS gt19 = "";
    IS gt110 = "";
    CWE gt111 = {};
    ST gt112 = "";
    DT gt113 = "";
    DT gt114 = "";
    NM gt115 = "";
    XPN[] gt116 = [{}];
    XAD[] gt117 = [{}];
    XTN[] gt118 = [{}];
    CX[] gt119 = [{}];
    IS gt120 = "";
    XON[] gt121 = [{}];
    ID gt122 = "";
    CWE gt123 = {};
    DTM gt124 = "";
    ID gt125 = "";
    CWE gt126 = {};
    CP gt127 = {};
    NM gt128 = "";
    CX[] gt129 = [{}];
    CWE gt130 = {};
    DT gt131 = "";
    DT gt132 = "";
    IS gt133 = "";
    IS[] gt134 = [""];
    CWE[] gt135 = [{}];
    CWE gt136 = {};
    IS gt137 = "";
    CWE gt138 = {};
    ID gt139 = "";
    IS gt140 = "";
    CWE gt141 = {};
    XPN[] gt142 = [{}];
    CWE gt143 = {};
    CWE[] gt144 = [{}];
    XPN[] gt145 = [{}];
    XTN[] gt146 = [{}];
    CWE gt147 = {};
    IS gt148 = "";
    ST gt149 = "";
    JCC gt150 = {};
    XON[] gt151 = [{}];
    IS gt152 = "";
    IS gt153 = "";
    FC gt154 = {};
    CWE[] gt155 = [{}];
    ST gt156 = "";
    IS gt157 = "";
};

public const GT1_SEGMENT_NAME = "GT1";