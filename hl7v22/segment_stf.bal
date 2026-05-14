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

# STF segment. Staff Identification Segment
# + name - Segment Name
# + stf1 - Stf - Primary Key Value
# + stf2 - Staff Id Code
# + stf3 - Staff Name
# + stf4 - Staff Type
# + stf5 - Sex
# + stf6 - Date Of Birth
# + stf7 - Active / Inactive
# + stf8 - Department
# + stf9 - Service
# + stf10 - Phone
# + stf11 - Office / Home Address
# + stf12 - Activation Date
# + stf13 - Inactivation Date
# + stf14 - Backup Person Id
# + stf15 - E-mail Address
# + stf16 - Preferred Method Of Contact

@hl7v2:SegmentDefinition {
    name: "STF",
    required: false,
    maxReps: 0,
    fields: {
        "stf1": {
            required: true,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "stf2": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: CE
        },
        "stf3": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "stf4": {
            required: false,
            length: 2,
            maxReps: -1,
            dataType: ID
        },
        "stf5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf6": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "stf7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf8": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "stf9": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "stf10": {
            required: false,
            length: 40,
            maxReps: -1,
            dataType: TN
        },
        "stf11": {
            required: false,
            length: 106,
            maxReps: 2,
            dataType: AD
        },
        "stf12": {
            required: false,
            length: 19,
            maxReps: -1,
            dataType: CM_DIN
        },
        "stf13": {
            required: false,
            length: 19,
            maxReps: -1,
            dataType: CM_DIN
        },
        "stf14": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: CE
        },
        "stf15": {
            required: false,
            length: 40,
            maxReps: -1,
            dataType: ST
        },
        "stf16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type STF record {
    *hl7v2:Segment;
    string name = STF_SEGMENT_NAME;
    CE stf1 = {};
    CE[] stf2 = [{}];
    PN stf3 = {};
    ID[] stf4 = [""];
    ID stf5 = "";
    TS stf6 = {};
    ID stf7 = "";
    CE[] stf8 = [{}];
    CE[] stf9 = [{}];
    TN[] stf10 = [""];
    AD stf11 = {};
    CM_DIN[] stf12 = [{}];
    CM_DIN[] stf13 = [{}];
    CE[] stf14 = [{}];
    ST[] stf15 = [""];
    ID stf16 = "";
};

public const STF_SEGMENT_NAME = "STF";
