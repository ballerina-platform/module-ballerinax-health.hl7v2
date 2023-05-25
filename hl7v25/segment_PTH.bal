
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
# + pth1 - Segment Record Field
# + pth2 - Segment Record Field
# + pth3 - Segment Record Field
# + pth4 - Segment Record Field
# + pth5 - Segment Record Field
# + pth6 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PTH",
    required: false,
    maxReps: 0,
    fields: {
        "pth1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pth2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pth3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pth4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pth5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pth6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type PTH record {
    *hl7v2:Segment;
    string name = PTH_SEGMENT_NAME;
    ID pth1 = "";
    CE pth2 = {};
    EI pth3 = {};
    TS pth4 = {};
    CE pth5 = {};
    TS pth6 = {};
};

public const PTH_SEGMENT_NAME = "PTH";