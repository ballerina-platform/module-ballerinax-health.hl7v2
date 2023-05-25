
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
# + obx1 - Segment Record Field
# + obx2 - Segment Record Field
# + obx3 - Segment Record Field
# + obx4 - Segment Record Field
# + obx5 - Segment Record Field
# + obx6 - Segment Record Field
# + obx7 - Segment Record Field
# + obx8 - Segment Record Field
# + obx9 - Segment Record Field
# + obx10 - Segment Record Field
# + obx11 - Segment Record Field
# + obx12 - Segment Record Field
# + obx13 - Segment Record Field
# + obx14 - Segment Record Field
# + obx15 - Segment Record Field
# + obx16 - Segment Record Field
# + obx17 - Segment Record Field
# + obx18 - Segment Record Field
# + obx19 - Segment Record Field
# + obx20 - Segment Record Field
# + obx21 - Segment Record Field
# + obx22 - Segment Record Field
# + obx23 - Segment Record Field
# + obx24 - Segment Record Field
# + obx25 - Segment Record Field
# + obx26 - Segment Record Field
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
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "obx3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "obx4": {
            required: false,
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
            dataType: CWE
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
            dataType: CWE
        },
        "obx9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "obx10": {
            required: false,
            length: 1,
            maxReps: -1,
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
            dataType: DTM
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
            dataType: DTM
        },
        "obx15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
        },
        "obx18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "obx19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "obx20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "obx21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "obx22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "obx23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "obx24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "obx25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "obx26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type OBX record {
    *hl7v2:Segment;
    string name = OBX_SEGMENT_NAME;
    SI obx1 = "";
    ID obx2 = "";
    CWE obx3 = {};
    ST obx4 = "";
    varies[] obx5 = [{}];
    CWE obx6 = {};
    ST obx7 = "";
    CWE[] obx8 = [{}];
    NM obx9 = "";
    ID[] obx10 = [""];
    ID obx11 = "";
    DTM obx12 = "";
    ST obx13 = "";
    DTM obx14 = "";
    CWE obx15 = {};
    XCN[] obx16 = [{}];
    CWE[] obx17 = [{}];
    EI[] obx18 = [{}];
    DTM obx19 = "";
    CWE[] obx20 = [{}];
    EI obx21 = {};
    CNE obx22 = {};
    XON obx23 = {};
    XAD obx24 = {};
    XCN obx25 = {};
    ID obx26 = "";
};

public const OBX_SEGMENT_NAME = "OBX";