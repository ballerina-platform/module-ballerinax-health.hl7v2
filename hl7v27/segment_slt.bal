
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
# + slt1 - Segment Record Field
# + slt2 - Segment Record Field
# + slt3 - Segment Record Field
# + slt4 - Segment Record Field
# + slt5 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "SLT",
    required: false,
    maxReps: 0,
    fields: {
        "slt1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "slt2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "slt3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "slt4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "slt5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type SLT record {
    *hl7v2:Segment;
    string name = SLT_SEGMENT_NAME;
    EI slt1 = {};
    ST slt2 = "";
    EI slt3 = {};
    EI slt4 = {};
    ST slt5 = "";
};

public const SLT_SEGMENT_NAME = "SLT";