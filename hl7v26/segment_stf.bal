
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
# + stf27 - Segment Record Field
# + stf28 - Segment Record Field
# + stf29 - Segment Record Field
# + stf30 - Segment Record Field
# + stf31 - Segment Record Field
# + stf32 - Segment Record Field
# + stf33 - Segment Record Field
# + stf34 - Segment Record Field
# + stf35 - Segment Record Field
# + stf36 - Segment Record Field
# + stf37 - Segment Record Field
# + stf38 - Segment Record Field
# + stf39 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "STF",
    required: false,
    maxReps: 0,
    fields: {
        "stf1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "stf3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "stf4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
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
            dataType: DTM
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
            dataType: CWE
        },
        "stf9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "stf11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "stf12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DIN
        },
        "stf13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DIN
        },
        "stf14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
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
            dataType: CWE
        },
        "stf17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
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
        },
        "stf27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf30": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "stf32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "stf35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf36": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type STF record {
    *hl7v2:Segment;
    string name = STF_SEGMENT_NAME;
    CWE stf1 = {};
    CX[] stf2 = [{}];
    XPN[] stf3 = [{}];
    IS[] stf4 = [""];
    IS stf5 = "";
    DTM stf6 = "";
    ID stf7 = "";
    CWE[] stf8 = [{}];
    CWE[] stf9 = [{}];
    XTN[] stf10 = [{}];
    XAD[] stf11 = [{}];
    DIN[] stf12 = [{}];
    DIN[] stf13 = [{}];
    CWE[] stf14 = [{}];
    ST[] stf15 = [""];
    CWE stf16 = {};
    CWE stf17 = {};
    ST stf18 = "";
    JCC stf19 = {};
    CWE stf20 = {};
    ID stf21 = "";
    DLN stf22 = {};
    ID stf23 = "";
    DT stf24 = "";
    DT stf25 = "";
    DT stf26 = "";
    CWE stf27 = {};
    CWE stf28 = {};
    ID stf29 = "";
    CWE[] stf30 = [{}];
    DTM stf31 = "";
    ID stf32 = "";
    CWE stf33 = {};
    DR stf34 = {};
    DT stf35 = "";
    CWE[] stf36 = [{}];
    ID stf37 = "";
    CWE stf38 = {};
    CWE[] stf39 = [{}];
};

public const STF_SEGMENT_NAME = "STF";