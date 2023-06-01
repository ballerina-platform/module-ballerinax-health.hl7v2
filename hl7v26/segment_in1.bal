
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
# + in11 - Segment Record Field
# + in12 - Segment Record Field
# + in13 - Segment Record Field
# + in14 - Segment Record Field
# + in15 - Segment Record Field
# + in16 - Segment Record Field
# + in17 - Segment Record Field
# + in18 - Segment Record Field
# + in19 - Segment Record Field
# + in110 - Segment Record Field
# + in111 - Segment Record Field
# + in112 - Segment Record Field
# + in113 - Segment Record Field
# + in114 - Segment Record Field
# + in115 - Segment Record Field
# + in116 - Segment Record Field
# + in117 - Segment Record Field
# + in118 - Segment Record Field
# + in119 - Segment Record Field
# + in120 - Segment Record Field
# + in121 - Segment Record Field
# + in122 - Segment Record Field
# + in123 - Segment Record Field
# + in124 - Segment Record Field
# + in125 - Segment Record Field
# + in126 - Segment Record Field
# + in127 - Segment Record Field
# + in128 - Segment Record Field
# + in129 - Segment Record Field
# + in130 - Segment Record Field
# + in131 - Segment Record Field
# + in132 - Segment Record Field
# + in133 - Segment Record Field
# + in134 - Segment Record Field
# + in135 - Segment Record Field
# + in136 - Segment Record Field
# + in137 - Segment Record Field
# + in138 - Segment Record Field
# + in139 - Segment Record Field
# + in140 - Segment Record Field
# + in141 - Segment Record Field
# + in142 - Segment Record Field
# + in143 - Segment Record Field
# + in144 - Segment Record Field
# + in145 - Segment Record Field
# + in146 - Segment Record Field
# + in147 - Segment Record Field
# + in148 - Segment Record Field
# + in149 - Segment Record Field
# + in150 - Segment Record Field
# + in151 - Segment Record Field
# + in152 - Segment Record Field
# + in153 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "IN1",
    required: false,
    maxReps: 0,
    fields: {
        "in11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "in12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in13": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in111": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: AUI
        },
        "in115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "in119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "in130": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "in138": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in140": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in141": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in144": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "in145": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in146": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in149": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in151": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in152": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type IN1 record {
    *hl7v2:Segment;
    string name = IN1_SEGMENT_NAME;
    SI in11 = "";
    CWE in12 = {};
    CX[] in13 = [{}];
    XON[] in14 = [{}];
    XAD[] in15 = [{}];
    XPN[] in16 = [{}];
    XTN[] in17 = [{}];
    ST in18 = "";
    XON[] in19 = [{}];
    CX[] in110 = [{}];
    XON[] in111 = [{}];
    DT in112 = "";
    DT in113 = "";
    AUI in114 = {};
    IS in115 = "";
    XPN[] in116 = [{}];
    CWE in117 = {};
    DTM in118 = "";
    XAD[] in119 = [{}];
    IS in120 = "";
    IS in121 = "";
    ST in122 = "";
    ID in123 = "";
    DT in124 = "";
    ID in125 = "";
    DT in126 = "";
    IS in127 = "";
    ST in128 = "";
    DTM in129 = "";
    XCN[] in130 = [{}];
    IS in131 = "";
    IS in132 = "";
    NM in133 = "";
    NM in134 = "";
    IS in135 = "";
    ST in136 = "";
    CP in137 = {};
    ST in138 = "";
    NM in139 = "";
    ST in140 = "";
    ST in141 = "";
    CWE in142 = {};
    IS in143 = "";
    XAD[] in144 = [{}];
    ST in145 = "";
    IS in146 = "";
    IS in147 = "";
    IS in148 = "";
    CX[] in149 = [{}];
    IS in150 = "";
    DT in151 = "";
    ST in152 = "";
    IS in153 = "";
};

public const IN1_SEGMENT_NAME = "IN1";
