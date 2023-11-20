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
# + cns1 - Starting Notification Reference Number
# + cns2 - Ending Notification Reference Number
# + cns3 - Starting Notification Date/Time
# + cns4 - Ending Notification Date/Time
# + cns5 - Starting Notification Code
# + cns6 - Ending Notification Code
@hl7v2:SegmentDefinition {
    name: "CNS",
    required: false,
    maxReps: 0,
    fields: {
        "cns1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "cns2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "cns3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cns4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cns5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cns6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type CNS record {
    *hl7v2:Segment;
    string name = CNS_SEGMENT_NAME;
    NM cns1 = "";
    NM cns2 = "";
    DTM cns3 = "";
    DTM cns4 = "";
    CWE cns5 = {};
    CWE cns6 = {};
};

public const CNS_SEGMENT_NAME = "CNS";