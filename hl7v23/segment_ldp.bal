
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
# + ldp1 - Segment Record Field
# + ldp2 - Segment Record Field
# + ldp3 - Segment Record Field
# + ldp4 - Segment Record Field
# + ldp5 - Segment Record Field
# + ldp6 - Segment Record Field
# + ldp7 - Segment Record Field
# + ldp8 - Segment Record Field
# + ldp9 - Segment Record Field
# + ldp10 - Segment Record Field
# + ldp11 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "LDP",
    required: false,
    maxReps: 0,
    fields: {
        "ldp1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "ldp2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ldp3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "ldp4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "ldp5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "ldp6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ldp7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "ldp8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "ldp9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ldp10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: VH
        },
        "ldp11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        }
    }
}
public type LDP record {
    *hl7v2:Segment;
    string name = LDP_SEGMENT_NAME;
    PL ldp1 = {};
    IS ldp2 = "";
    IS[] ldp3 = [""];
    CE[] ldp4 = [{}];
    ID[] ldp5 = [""];
    ID ldp6 = "";
    TS ldp7 = {};
    TS ldp8 = {};
    ST ldp9 = "";
    VH[] ldp10 = [{}];
    XTN ldp11 = {};
};

public const LDP_SEGMENT_NAME = "LDP";
