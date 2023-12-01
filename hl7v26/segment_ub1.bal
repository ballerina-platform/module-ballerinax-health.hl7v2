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
# + ub11 - (Segment UB1 wird nicht verwendet)
# + ub12 - Withdrawn field
# + ub13 - nicht verwendet
# + ub14 - nicht verwendet
# + ub15 - nicht verwendet
# + ub16 - nicht verwendet
# + ub17 - nicht verwendet
# + ub18 - nicht verwendet
# + ub19 - nicht verwendet
# + ub110 - nicht verwendet
# + ub111 - nicht verwendet
# + ub112 - nicht verwendet
# + ub113 - nicht verwendet
# + ub114 - nicht verwendet
# + ub115 - nicht verwendet
# + ub116 - nicht verwendet
# + ub117 - nicht verwendet
# + ub118 - nicht verwendet
# + ub119 - nicht verwendet
# + ub120 - nicht verwendet
# + ub121 - nicht verwendet
# + ub122 - nicht verwendet
# + ub123 - nicht verwendet
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
            dataType: ST
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
            maxReps: 5,
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
            maxReps: 8,
            dataType: UVC
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
            dataType: CWE
        },
        "ub113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            maxReps: 5,
            dataType: OCD
        },
        "ub117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
    SI ub11 = "";
    ST ub12 = "";
    NM ub13 = "";
    NM ub14 = "";
    NM ub15 = "";
    NM ub16 = "";
    IS ub17 = "";
    NM ub18 = "";
    NM ub19 = "";
    UVC ub110 = {};
    NM ub111 = "";
    CWE ub112 = {};
    CWE ub113 = {};
    DT ub114 = "";
    DT ub115 = "";
    OCD ub116 = {};
    CWE ub117 = {};
    DT ub118 = "";
    DT ub119 = "";
    ST ub120 = "";
    ST ub121 = "";
    ST ub122 = "";
    ST ub123 = "";
};

public const UB1_SEGMENT_NAME = "UB1";