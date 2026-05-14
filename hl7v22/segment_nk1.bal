// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# NK1 segment. Next Of Kin The NK1 segment contains information about the patient s other related parties. Any associated parties may be identified. Utilizing NK1-1-set ID, multiple NK1 segments can be sent to patient accounts
# + name - Segment Name
# + nk11 - Set Id - Next Of Kin
# + nk12 - Name
# + nk13 - Relationship
# + nk14 - Address
# + nk15 - Phone Number
# + nk16 - Business Phone Number
# + nk17 - Contact Role
# + nk18 - Start Date
# + nk19 - End Date
# + nk110 - Next Of Kin
# + nk111 - Next Of Kin Job Code / Class
# + nk112 - Next Of Kin Employee Number
# + nk113 - Organization Name

@hl7v2:SegmentDefinition {
    name: "NK1",
    required: false,
    maxReps: 0,
    fields: {
        "nk11": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "nk12": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "nk13": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "nk14": {
            required: false,
            length: 106,
            maxReps: 1,
            dataType: AD
        },
        "nk15": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "nk16": {
            required: false,
            length: 40,
            maxReps: 1,
            dataType: TN
        },
        "nk17": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "nk18": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "nk19": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "nk110": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: ST
        },
        "nk111": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CM_JOB_CODE
        },
        "nk112": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "nk113": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: ST
        }

    }
}
public type NK1 record {
    *hl7v2:Segment;
    string name = NK1_SEGMENT_NAME;
    SI nk11 = "";
    PN nk12 = {};
    CE nk13 = {};
    AD nk14 = {};
    TN nk15 = "";
    TN nk16 = "";
    CE nk17 = {};
    DT nk18 = "";
    DT nk19 = "";
    ST nk110 = "";
    CM_JOB_CODE nk111 = {};
    ST nk112 = "";
    ST nk113 = "";
};

public const NK1_SEGMENT_NAME = "NK1";
