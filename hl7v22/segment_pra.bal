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

# PRA segment. Practitioner Detail
# + name - Segment Name
# + pra1 - Pra - Primary Key Value
# + pra2 - Practitioner Group
# + pra3 - Practitioner Category
# + pra4 - Provider Billing
# + pra5 - Specialty
# + pra6 - Practitioner Id Numbers
# + pra7 - Privileges

@hl7v2:SegmentDefinition {
    name: "PRA",
    required: false,
    maxReps: 0,
    fields: {
        "pra1": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "pra2": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: CE
        },
        "pra3": {
            required: false,
            length: 3,
            maxReps: -1,
            dataType: ID
        },
        "pra4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pra5": {
            required: false,
            length: 100,
            maxReps: -1,
            dataType: CM_SPD
        },
        "pra6": {
            required: false,
            length: 100,
            maxReps: -1,
            dataType: CM_PLN
        },
        "pra7": {
            required: false,
            length: 20,
            maxReps: -1,
            dataType: CM_PIP
        }

    }
}
public type PRA record {
    *hl7v2:Segment;
    string name = PRA_SEGMENT_NAME;
    ST pra1 = "";
    CE[] pra2 = [{}];
    ID[] pra3 = [""];
    ID pra4 = "";
    CM_SPD[] pra5 = [{}];
    CM_PLN[] pra6 = [{}];
    CM_PIP[] pra7 = [{}];
};

public const PRA_SEGMENT_NAME = "PRA";
