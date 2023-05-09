
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
# + ub11 - Segment Record Field
# + ub12 - Segment Record Field
# + ub13 - Segment Record Field
# + ub14 - Segment Record Field
# + ub15 - Segment Record Field
# + ub16 - Segment Record Field
# + ub17 - Segment Record Field
# + ub18 - Segment Record Field
# + ub19 - Segment Record Field
# + ub110 - Segment Record Field
# + ub111 - Segment Record Field
# + ub112 - Segment Record Field
# + ub113 - Segment Record Field
# + ub114 - Segment Record Field
# + ub115 - Segment Record Field
# + ub116 - Segment Record Field
# + ub117 - Segment Record Field
# + ub118 - Segment Record Field
# + ub119 - Segment Record Field
# + ub120 - Segment Record Field
# + ub121 - Segment Record Field
# + ub122 - Segment Record Field
# + ub123 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "UB1",
    required: false,
    maxReps: 0,
    fields: {
        "ub11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ub12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "ub18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_UVC
        },
        "ub111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ub112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ub113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ub114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "ub115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "ub116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_OCD
        },
        "ub117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ub118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "ub119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "ub120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type UB1 record {
    *hl7v2:Segment;
    string name = UB1_SEGMENT_NAME;
    SI ub11 = -1;
    NM ub12 = -1;
    NM ub13 = -1;
    NM ub14 = -1;
    NM ub15 = -1;
    NM ub16 = -1;
    IS[] ub17 = [""];
    NM ub18 = -1;
    NM ub19 = -1;
    CM_UVC[] ub110 = [{}];
    NM ub111 = -1;
    CE ub112 = {};
    ID ub113 = "";
    DT ub114 = "";
    DT ub115 = "";
    CM_OCD[] ub116 = [{}];
    ID ub117 = "";
    DT ub118 = "";
    DT ub119 = "";
    ST ub120 = "";
    ST ub121 = "";
    ST ub122 = "";
    ST ub123 = "";
};

public const UB1_SEGMENT_NAME = "UB1";
