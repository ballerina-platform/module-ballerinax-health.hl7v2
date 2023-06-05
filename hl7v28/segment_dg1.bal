
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
# + dg115 - Segment Record Field
# + dg116 - Segment Record Field
# + dg117 - Segment Record Field
# + dg118 - Segment Record Field
# + dg119 - Segment Record Field
# + dg120 - Segment Record Field
# + dg121 - Segment Record Field
# + dg122 - Segment Record Field
# + dg123 - Segment Record Field
# + dg124 - Segment Record Field
# + dg125 - Segment Record Field
# + dg126 - Segment Record Field
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
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "dg13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "dg14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "dg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "dg16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "dg115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
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
            dataType: CWE
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
            dataType: DTM
        },
        "dg120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "dg121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "dg123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "dg124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "dg126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type DG1 record {
    *hl7v2:Segment;
    string name = DG1_SEGMENT_NAME;
    SI dg11 = "";
    ST dg12 = "";
    CWE dg13 = {};
    ST dg14 = "";
    DTM dg15 = "";
    CWE dg16 = {};
    NM dg115 = "";
    XCN[] dg116 = [{}];
    CWE dg117 = {};
    ID dg118 = "";
    DTM dg119 = "";
    EI dg120 = {};
    ID dg121 = "";
    EI dg122 = {};
    CWE dg123 = {};
    ID dg124 = "";
    CWE dg125 = {};
    CWE dg126 = {};
};

public const DG1_SEGMENT_NAME = "DG1";
