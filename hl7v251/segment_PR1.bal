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
# + pr11 - Set ID - PR1
# + pr12 - Procedure Coding Method
# + pr13 - Procedure Code
# + pr14 - Procedure Description
# + pr15 - Procedure Date/Time
# + pr16 - Procedure Functional Type
# + pr17 - Procedure Minutes
# + pr18 - Anesthesiologist
# + pr19 - Anesthesia Code
# + pr110 - Anesthesia Minutes
# + pr111 - Surgeon
# + pr112 - Procedure Practitioner
# + pr113 - Consent Code
# + pr114 - Procedure Priority
# + pr115 - Associated Diagnosis Code
# + pr116 - Procedure Code Modifier
# + pr117 - Procedure DRG Type
# + pr118 - Tissue Type Code
# + pr119 - Procedure Identifier
# + pr120 - Procedure Action Code
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
    EI pr119 = {};
    ID pr120 = "";
};

public const PR1_SEGMENT_NAME = "PR1";