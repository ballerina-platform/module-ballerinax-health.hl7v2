
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
# + stf1 - Segment Record Field
# + stf2 - Segment Record Field
# + stf3 - Segment Record Field
# + stf4 - Segment Record Field
# + stf5 - Segment Record Field
# + stf6 - Segment Record Field
# + stf7 - Segment Record Field
# + stf8 - Segment Record Field
# + stf9 - Segment Record Field
# + stf10 - Segment Record Field
# + stf11 - Segment Record Field
# + stf12 - Segment Record Field
# + stf13 - Segment Record Field
# + stf14 - Segment Record Field
# + stf15 - Segment Record Field
# + stf16 - Segment Record Field
# + stf17 - Segment Record Field
# + stf18 - Segment Record Field
# + stf19 - Segment Record Field
# + stf20 - Segment Record Field
# + stf21 - Segment Record Field
# + stf22 - Segment Record Field
# + stf23 - Segment Record Field
# + stf24 - Segment Record Field
# + stf25 - Segment Record Field
# + stf26 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "STF",
    required: false,
    maxReps: 0,
    fields: {
        "stf1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "stf2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "stf3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XPN
        },
        "stf4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "stf5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "stf6": {
            required: false,
            length: 1,
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
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "stf9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "stf10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TN
        },
        "stf11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: AD
        },
        "stf12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_DIN
        },
        "stf13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CM_DIN
        },
        "stf14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "stf15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "stf16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "stf17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "stf18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "stf19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "stf20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "stf21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DLN
        },
        "stf23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type STF record {
    *hl7v2:Segment;
    string name = STF_SEGMENT_NAME;
    CE stf1 = {};
    CE[] stf2 = [{}];
    XPN stf3 = {};
    ID[] stf4 = [""];
    IS stf5 = "";
    TS stf6 = {};
    ID stf7 = "";
    CE[] stf8 = [{}];
    CE[] stf9 = [{}];
    TN[] stf10 = [""];
    AD[] stf11 = [{}];
    CM_DIN[] stf12 = [{}];
    CM_DIN[] stf13 = [{}];
    CE[] stf14 = [{}];
    ST[] stf15 = [""];
    CE stf16 = {};
    IS[] stf17 = [""];
    ST stf18 = "";
    JCC stf19 = {};
    IS stf20 = "";
    ID stf21 = "";
    DLN stf22 = {};
    ID stf23 = "";
    DT stf24 = "";
    DT stf25 = "";
    DT stf26 = "";
};

public const STF_SEGMENT_NAME = "STF";
