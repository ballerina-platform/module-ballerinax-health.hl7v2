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
# + ub11 - Set ID - UB1
# + ub12 - Blood Deductible  (43)
# + ub13 - Blood Furnished Pints Of (40)
# + ub14 - Blood Replaced Pints (41)
# + ub15 - Blood Not Replaced Pints(42)
# + ub16 - Co Insurance Days (25)
# + ub17 - Condition Code (35-39)
# + ub18 - Covered Days   (23)
# + ub19 - Non Covered Days   (24)
# + ub110 - Value Amount & Code (46-49)
# + ub111 - Number Of Grace Days (90)
# + ub112 - Spec Program Indicator (44)
# + ub113 - PSRO/UR Approval Indicator (87)
# + ub114 - PSRO/UR Approved Stay Fm (88)
# + ub115 - PSRO/UR Approved Stay To (89)
# + ub116 - Occurrence (28 32)
# + ub117 - Occurrence Span (33)
# + ub118 - Occur Span Start Date(33)
# + ub119 - Occur Span End Date (33)
# + ub120 - UB 82 Locator 2
# + ub121 - UB 82 Locator 9
# + ub122 - UB 82 Locator 27
# + ub123 - UB 82 Locator 45
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
            dataType: CE
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
            dataType: CE
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
    NM ub12 = "";
    NM ub13 = "";
    NM ub14 = "";
    NM ub15 = "";
    NM ub16 = "";
    IS[] ub17 = [""];
    NM ub18 = "";
    NM ub19 = "";
    CM_UVC[] ub110 = [{}];
    NM ub111 = "";
    CE ub112 = {};
    CE ub113 = {};
    DT ub114 = "";
    DT ub115 = "";
    CM_OCD[] ub116 = [{}];
    CE ub117 = {};
    DT ub118 = "";
    DT ub119 = "";
    ST ub120 = "";
    ST ub121 = "";
    ST ub122 = "";
    ST ub123 = "";
};

public const UB1_SEGMENT_NAME = "UB1";
