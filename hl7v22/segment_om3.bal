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

# OM3 segment. Categorical Test/observation This segment applies to free text and other non-numeric data types
# + name - Segment Name
# + om31 - Segment Type Id
# + om32 - Sequence Number - Test/ Observation Master File
# + om33 - Preferred Coding System
# + om34 - Valid Coded Answers
# + om35 - Normal Test Codes For Categorical Observations
# + om36 - Abnormal Test Codes For Categorical Observations
# + om37 - Critical Test Codes For Categorical Observations
# + om38 - Data Type

@hl7v2:SegmentDefinition {
    name: "OM3",
    required: false,
    maxReps: 0,
    fields: {
        "om31": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "om32": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "om33": {
            required: false,
            length: 5,
            maxReps: 1,
            dataType: ID
        },
        "om34": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "om35": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "om36": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om37": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om38": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type OM3 record {
    *hl7v2:Segment;
    string name = OM3_SEGMENT_NAME;
    ST om31 = "";
    NM om32 = "";
    ID om33 = "";
    CE om34 = {};
    CE[] om35 = [{}];
    CE om36 = {};
    CE om37 = {};
    ID om38 = "";
};

public const OM3_SEGMENT_NAME = "OM3";
