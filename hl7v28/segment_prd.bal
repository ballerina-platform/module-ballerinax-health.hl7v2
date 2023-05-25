
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
# + prd1 - Segment Record Field
# + prd2 - Segment Record Field
# + prd3 - Segment Record Field
# + prd4 - Segment Record Field
# + prd5 - Segment Record Field
# + prd6 - Segment Record Field
# + prd7 - Segment Record Field
# + prd8 - Segment Record Field
# + prd9 - Segment Record Field
# + prd10 - Segment Record Field
# + prd11 - Segment Record Field
# + prd12 - Segment Record Field
# + prd13 - Segment Record Field
# + prd14 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PRD",
    required: false,
    maxReps: 0,
    fields: {
        "prd1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prd2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "prd3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "prd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "prd5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "prd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prd7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PLN
        },
        "prd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prd9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "prd10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "prd11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "prd12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PL
        },
        "prd13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "prd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type PRD record {
    *hl7v2:Segment;
    string name = PRD_SEGMENT_NAME;
    CWE[] prd1 = [{}];
    XPN[] prd2 = [{}];
    XAD[] prd3 = [{}];
    PL prd4 = {};
    XTN[] prd5 = [{}];
    CWE prd6 = {};
    PLN[] prd7 = [{}];
    DTM prd8 = "";
    DTM[] prd9 = [""];
    XON prd10 = {};
    XAD[] prd11 = [{}];
    PL[] prd12 = [{}];
    XTN[] prd13 = [{}];
    CWE prd14 = {};
};

public const PRD_SEGMENT_NAME = "PRD";