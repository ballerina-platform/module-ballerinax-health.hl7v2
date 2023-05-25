
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
# + arv1 - Segment Record Field
# + arv2 - Segment Record Field
# + arv3 - Segment Record Field
# + arv4 - Segment Record Field
# + arv5 - Segment Record Field
# + arv6 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ARV",
    required: false,
    maxReps: 0,
    fields: {
        "arv1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "arv2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "arv3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "arv4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "arv5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "arv6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        }
    }
}
public type ARV record {
    *hl7v2:Segment;
    string name = ARV_SEGMENT_NAME;
    SI arv1 = "";
    CNE arv2 = {};
    CWE arv3 = {};
    CWE[] arv4 = [{}];
    ST[] arv5 = [""];
    DR arv6 = {};
};

public const ARV_SEGMENT_NAME = "ARV";