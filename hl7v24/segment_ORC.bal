
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
# + orc1 - Segment Record Field
# + orc2 - Segment Record Field
# + orc3 - Segment Record Field
# + orc4 - Segment Record Field
# + orc5 - Segment Record Field
# + orc6 - Segment Record Field
# + orc7 - Segment Record Field
# + orc8 - Segment Record Field
# + orc9 - Segment Record Field
# + orc10 - Segment Record Field
# + orc11 - Segment Record Field
# + orc12 - Segment Record Field
# + orc13 - Segment Record Field
# + orc14 - Segment Record Field
# + orc15 - Segment Record Field
# + orc16 - Segment Record Field
# + orc17 - Segment Record Field
# + orc18 - Segment Record Field
# + orc19 - Segment Record Field
# + orc20 - Segment Record Field
# + orc21 - Segment Record Field
# + orc22 - Segment Record Field
# + orc23 - Segment Record Field
# + orc24 - Segment Record Field
# + orc25 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ORC",
    required: false,
    maxReps: 0,
    fields: {
        "orc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "orc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "orc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "orc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "orc7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TQ
        },
        "orc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EIP
        },
        "orc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "orc10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "orc14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "orc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "orc16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "orc17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "orc18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "orc19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "orc20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "orc21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "orc22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "orc23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "orc24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "orc25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type ORC record {
    *hl7v2:Segment;
    string name = ORC_SEGMENT_NAME;
    ID orc1 = "";
    EI orc2 = {};
    EI orc3 = {};
    EI orc4 = {};
    ID orc5 = "";
    ID orc6 = "";
    TQ[] orc7 = [{}];
    EIP orc8 = {};
    TS orc9 = {};
    XCN[] orc10 = [{}];
    XCN[] orc11 = [{}];
    XCN[] orc12 = [{}];
    PL orc13 = {};
    XTN[] orc14 = [{}];
    TS orc15 = {};
    CE orc16 = {};
    CE orc17 = {};
    CE orc18 = {};
    XCN[] orc19 = [{}];
    CE orc20 = {};
    XON[] orc21 = [{}];
    XAD[] orc22 = [{}];
    XTN[] orc23 = [{}];
    XAD[] orc24 = [{}];
    CWE orc25 = {};
};

public const ORC_SEGMENT_NAME = "ORC";