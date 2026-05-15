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

# MFE segment. Master File Entry
# + name - Segment Name
# + mfe1 - Record-level Event Code
# + mfe2 - Mfn Control Id
# + mfe3 - Effective Date / Time
# + mfe4 - Primary Key Value

@hl7v2:SegmentDefinition {
    name: "MFE",
    required: false,
    maxReps: 0,
    fields: {
        "mfe1": {
            required: true,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "mfe2": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "mfe3": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "mfe4": {
            required: true,
            length: 60,
            maxReps: -1,
            dataType: CE
        }

    }
}
public type MFE record {
    *hl7v2:Segment;
    string name = MFE_SEGMENT_NAME;
    ID mfe1 = "";
    ST mfe2 = "";
    TS mfe3 = {};
    CE[] mfe4 = [{}];
};

public const MFE_SEGMENT_NAME = "MFE";
