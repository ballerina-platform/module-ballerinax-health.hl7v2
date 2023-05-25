
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
# + pra1 - Segment Record Field
# + pra2 - Segment Record Field
# + pra3 - Segment Record Field
# + pra4 - Segment Record Field
# + pra5 - Segment Record Field
# + pra6 - Segment Record Field
# + pra7 - Segment Record Field
# + pra8 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PRA",
    required: false,
    maxReps: 0,
    fields: {
        "pra1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pra2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "pra3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "pra4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pra5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: SPD
        },
        "pra6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PLN
        },
        "pra7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PIP
        },
        "pra8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type PRA record {
    *hl7v2:Segment;
    string name = PRA_SEGMENT_NAME;
    CE pra1 = {};
    CE[] pra2 = [{}];
    IS[] pra3 = [""];
    ID pra4 = "";
    SPD[] pra5 = [{}];
    PLN[] pra6 = [{}];
    PIP[] pra7 = [{}];
    DT pra8 = "";
};

public const PRA_SEGMENT_NAME = "PRA";