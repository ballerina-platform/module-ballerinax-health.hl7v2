
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
# + bpx1 - Segment Record Field
# + bpx2 - Segment Record Field
# + bpx3 - Segment Record Field
# + bpx4 - Segment Record Field
# + bpx5 - Segment Record Field
# + bpx6 - Segment Record Field
# + bpx7 - Segment Record Field
# + bpx8 - Segment Record Field
# + bpx9 - Segment Record Field
# + bpx10 - Segment Record Field
# + bpx11 - Segment Record Field
# + bpx12 - Segment Record Field
# + bpx13 - Segment Record Field
# + bpx14 - Segment Record Field
# + bpx15 - Segment Record Field
# + bpx16 - Segment Record Field
# + bpx17 - Segment Record Field
# + bpx18 - Segment Record Field
# + bpx19 - Segment Record Field
# + bpx20 - Segment Record Field
# + bpx21 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "BPX",
    required: false,
    maxReps: 0,
    fields: {
        "bpx1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "bpx2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "bpx3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "bpx4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "bpx5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "bpx6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "bpx7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "bpx8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "bpx9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "bpx10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "bpx11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "bpx12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "bpx13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "bpx14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "bpx15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "bpx16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "bpx17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "bpx18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "bpx19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "bpx20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "bpx21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        }
    }
}
public type BPX record {
    *hl7v2:Segment;
    string name = BPX_SEGMENT_NAME;
    SI bpx1 = "";
    CWE bpx2 = {};
    ID bpx3 = "";
    TS bpx4 = {};
    EI bpx5 = {};
    CNE bpx6 = {};
    CNE bpx7 = {};
    CWE bpx8 = {};
    XON bpx9 = {};
    EI bpx10 = {};
    CNE bpx11 = {};
    CNE[] bpx12 = [{}];
    TS bpx13 = {};
    NM bpx14 = "";
    NM bpx15 = "";
    CE bpx16 = {};
    EI bpx17 = {};
    PL bpx18 = {};
    XAD bpx19 = {};
    XCN bpx20 = {};
    XCN bpx21 = {};
};

public const BPX_SEGMENT_NAME = "BPX";