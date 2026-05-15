// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# DG1 segment. Diagnosis The DG1 segment contains patient diagnosis information of various types. For example: Admitting, Current, Primary, Final, etc. Coding methodologies are also defined
# + name - Segment Name
# + dg11 - Set Id - Diagnosis
# + dg12 - Diagnosis Coding Method
# + dg13 - Diagnosis Code
# + dg14 - Diagnosis Description
# + dg15 - Diagnosis Date / Time
# + dg16 - Diagnosis / Drg Type
# + dg17 - Major Diagnostic Category
# + dg18 - Diagnostic Related Group
# + dg19 - Drg Approval Indicator
# + dg110 - Drg Grouper Review Code
# + dg111 - Outlier Type
# + dg112 - Outlier Days
# + dg113 - Outlier Cost
# + dg114 - Grouper Version And Type
# + dg115 - Diagnosis / Drg Priority
# + dg116 - Diagnosing Clinician

@hl7v2:SegmentDefinition {
    name: "DG1",
    required: false,
    maxReps: 0,
    fields: {
        "dg11": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "dg12": {
            required: true,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "dg13": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: ID
        },
        "dg14": {
            required: false,
            length: 40,
            maxReps: 1,
            dataType: ST
        },
        "dg15": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "dg16": {
            required: true,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "dg17": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "dg18": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: ID
        },
        "dg19": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "dg110": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "dg111": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: ID
        },
        "dg112": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: NM
        },
        "dg113": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "dg114": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: ST
        },
        "dg115": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: NM
        },
        "dg116": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        }

    }
}
public type DG1 record {
    *hl7v2:Segment;
    string name = DG1_SEGMENT_NAME;
    SI dg11 = "";
    ID dg12 = "";
    ID dg13 = "";
    ST dg14 = "";
    TS dg15 = {};
    ID dg16 = "";
    CE dg17 = {};
    ID dg18 = "";
    ID dg19 = "";
    ID dg110 = "";
    ID dg111 = "";
    NM dg112 = "";
    NM dg113 = "";
    ST dg114 = "";
    NM dg115 = "";
    CN_PERSON dg116 = {};
};

public const DG1_SEGMENT_NAME = "DG1";
