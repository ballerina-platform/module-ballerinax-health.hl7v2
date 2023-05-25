
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
# + ipc1 - Segment Record Field
# + ipc2 - Segment Record Field
# + ipc3 - Segment Record Field
# + ipc4 - Segment Record Field
# + ipc5 - Segment Record Field
# + ipc6 - Segment Record Field
# + ipc7 - Segment Record Field
# + ipc8 - Segment Record Field
# + ipc9 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "IPC",
    required: false,
    maxReps: 0,
    fields: {
        "ipc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipc3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipc4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ipc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "ipc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ipc8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "ipc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type IPC record {
    *hl7v2:Segment;
    string name = IPC_SEGMENT_NAME;
    EI ipc1 = {};
    EI ipc2 = {};
    EI ipc3 = {};
    EI ipc4 = {};
    CWE ipc5 = {};
    CWE[] ipc6 = [{}];
    EI ipc7 = {};
    CWE[] ipc8 = [{}];
    ST ipc9 = "";
};

public const IPC_SEGMENT_NAME = "IPC";