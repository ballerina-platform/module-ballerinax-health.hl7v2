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
# + obx1 - Set ID - OBX
# + obx2 - Value Type
# + obx3 - Observation Identifier
# + obx4 - Observation Sub-ID
# + obx5 - Observation Value
# + obx6 - Units
# + obx7 - References Range
# + obx8 - Abnormal Flags
# + obx9 - Probability
# + obx10 - Nature of Abnormal Test
# + obx11 - Observation Result Status
# + obx12 - Date Last Obs Normal Values
# + obx13 - User Defined Access Checks
# + obx14 - Date/Time of the Observation
# + obx15 - Producer's ID
# + obx16 - Responsible Observer
# + obx17 - Observation Method
@hl7v2:SegmentDefinition {
    name: "OBX",
    required: false,
    maxReps: 0,
    fields: {
        "obx1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "obx2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obx3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "obx4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obx5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: varies
        },
        "obx6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "obx7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obx8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "obx9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "obx10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obx11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obx12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obx13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "obx14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "obx15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "obx16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "obx17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type OBX record {
    *hl7v2:Segment;
    string name = OBX_SEGMENT_NAME;
    SI obx1 = "";
    ID obx2 = "";
    CE obx3 = {};
    ST obx4 = "";
    varies[] obx5 = [{}];
    CE obx6 = {};
    ST obx7 = "";
    ID[] obx8 = [""];
    NM[] obx9 = [""];
    ID obx10 = "";
    ID obx11 = "";
    TS obx12 = {};
    ST obx13 = "";
    TS obx14 = {};
    CE obx15 = {};
    XCN[] obx16 = [{}];
    CE[] obx17 = [{}];
};

public const OBX_SEGMENT_NAME = "OBX";