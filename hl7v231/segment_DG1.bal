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
# + dg11 - Set ID - DG1
# + dg12 - Diagnosis Coding Method
# + dg13 - Diagnosis Code - DG1
# + dg14 - Diagnosis Description
# + dg15 - Diagnosis Date/Time
# + dg16 - Diagnosis Type
# + dg17 - Major Diagnostic Category
# + dg18 - Diagnostic Related Group
# + dg19 - DRG Approval Indicator
# + dg110 - DRG Grouper Review Code
# + dg111 - Outlier Type
# + dg112 - Outlier Days
# + dg113 - Outlier Cost
# + dg114 - Grouper Version And Type
# + dg115 - Diagnosis Priority
# + dg116 - Diagnosing Clinician
# + dg117 - Diagnosis Classification
# + dg118 - Confidential Indicator
# + dg119 - Attestation Date/Time
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