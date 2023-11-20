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
# + ldp1 - Primary Key Value - LDP
# + ldp2 - Location Department
# + ldp3 - Location Service
# + ldp4 - Specialty Type
# + ldp5 - Valid Patient Classes
# + ldp6 - Active/Inactive Flag
# + ldp7 - Activation Date  LDP
# + ldp8 - Inactivation Date - LDP
# + ldp9 - Inactivated Reason
# + ldp10 - Visiting Hours
# + ldp11 - Contact Phone
# + ldp12 - Location Cost Center
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
            dataType: CE
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
            dataType: IS
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
        },
        "ldp12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type LDP record {
    *hl7v2:Segment;
    string name = LDP_SEGMENT_NAME;
    PL ldp1 = {};
    CE ldp2 = {};
    IS[] ldp3 = [""];
    CE[] ldp4 = [{}];
    IS[] ldp5 = [""];
    ID ldp6 = "";
    TS ldp7 = {};
    TS ldp8 = {};
    ST ldp9 = "";
    VH[] ldp10 = [{}];
    XTN ldp11 = {};
    CE ldp12 = {};
};

public const LDP_SEGMENT_NAME = "LDP";