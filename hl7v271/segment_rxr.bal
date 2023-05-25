
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
# + rxr1 - Segment Record Field
# + rxr2 - Segment Record Field
# + rxr3 - Segment Record Field
# + rxr4 - Segment Record Field
# + rxr5 - Segment Record Field
# + rxr6 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RXR",
    required: false,
    maxReps: 0,
    fields: {
        "rxr1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxr4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxr6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type RXR record {
    *hl7v2:Segment;
    string name = RXR_SEGMENT_NAME;
    CWE rxr1 = {};
    CWE rxr2 = {};
    CWE rxr3 = {};
    CWE rxr4 = {};
    CWE rxr5 = {};
    CWE rxr6 = {};
};

public const RXR_SEGMENT_NAME = "RXR";