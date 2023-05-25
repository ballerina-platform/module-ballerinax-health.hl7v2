
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
# + dg11 - Segment Record Field
# + dg12 - Segment Record Field
# + dg13 - Segment Record Field
# + dg14 - Segment Record Field
# + dg15 - Segment Record Field
# + dg16 - Segment Record Field
# + dg17 - Segment Record Field
# + dg18 - Segment Record Field
# + dg19 - Segment Record Field
# + dg110 - Segment Record Field
# + dg111 - Segment Record Field
# + dg112 - Segment Record Field
# + dg113 - Segment Record Field
# + dg114 - Segment Record Field
# + dg115 - Segment Record Field
# + dg116 - Segment Record Field
# + dg117 - Segment Record Field
# + dg118 - Segment Record Field
# + dg119 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "DG1",
    required: false,
    maxReps: 0,
    fields: {
        "dg11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "dg12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "dg14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "dg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "dg16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "dg17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "dg18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "dg19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "dg111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "dg112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "dg113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "dg114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "dg115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "dg117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "dg118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type DG1 record {
    *hl7v2:Segment;
    string name = DG1_SEGMENT_NAME;
    SI dg11 = "";
    ID dg12 = "";
    CE dg13 = {};
    ST dg14 = "";
    TS dg15 = {};
    IS dg16 = "";
    CE dg17 = {};
    CE dg18 = {};
    ID dg19 = "";
    IS dg110 = "";
    CE dg111 = {};
    NM dg112 = "";
    CP dg113 = {};
    ST dg114 = "";
    ID dg115 = "";
    XCN[] dg116 = [{}];
    IS dg117 = "";
    ID dg118 = "";
    TS dg119 = {};
};

public const DG1_SEGMENT_NAME = "DG1";