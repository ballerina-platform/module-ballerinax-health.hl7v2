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

# MFI segment. Master File Identification
# + name - Segment Name
# + mfi1 - Master File Identifier
# + mfi2 - Master File Application Identifier
# + mfi3 - File-level Event Code
# + mfi4 - Entered Date / Time
# + mfi5 - Effective Date / Time
# + mfi6 - Response Level Code

@hl7v2:SegmentDefinition {
    name: "MFI",
    required: false,
    maxReps: 0,
    fields: {
        "mfi1": {
            required: true,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "mfi2": {
            required: false,
            length: 6,
            maxReps: 1,
            dataType: ID
        },
        "mfi3": {
            required: true,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "mfi4": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "mfi5": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "mfi6": {
            required: true,
            length: 2,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type MFI record {
    *hl7v2:Segment;
    string name = MFI_SEGMENT_NAME;
    CE mfi1 = {};
    ID mfi2 = "";
    ID mfi3 = "";
    TS mfi4 = {};
    TS mfi5 = {};
    ID mfi6 = "";
};

public const MFI_SEGMENT_NAME = "MFI";
