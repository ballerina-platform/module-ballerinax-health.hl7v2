
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
# + vnd1 - Segment Record Field
# + vnd2 - Segment Record Field
# + vnd3 - Segment Record Field
# + vnd4 - Segment Record Field
# + vnd5 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "VND",
    required: false,
    maxReps: 0,
    fields: {
        "vnd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "vnd2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "vnd3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "vnd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "vnd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        }
    }
}
public type VND record {
    *hl7v2:Segment;
    string name = VND_SEGMENT_NAME;
    SI vnd1 = "";
    EI vnd2 = {};
    ST vnd3 = "";
    EI vnd4 = {};
    CNE vnd5 = {};
};

public const VND_SEGMENT_NAME = "VND";