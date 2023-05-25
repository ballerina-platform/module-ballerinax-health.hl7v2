
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
# + sft1 - Segment Record Field
# + sft2 - Segment Record Field
# + sft3 - Segment Record Field
# + sft4 - Segment Record Field
# + sft5 - Segment Record Field
# + sft6 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "SFT",
    required: false,
    maxReps: 0,
    fields: {
        "sft1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "sft2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sft3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sft4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sft5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "sft6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type SFT record {
    *hl7v2:Segment;
    string name = SFT_SEGMENT_NAME;
    XON sft1 = {};
    ST sft2 = "";
    ST sft3 = "";
    ST sft4 = "";
    TX sft5 = "";
    TS sft6 = {};
};

public const SFT_SEGMENT_NAME = "SFT";