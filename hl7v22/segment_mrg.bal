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

# MRG segment. Merge Patient Information The MRG segment provides receiving applications with information necessary to initiate the merging of patient data as well as groups of records. It is intended that this segment be used throughout the standard to allow the merging of regi...
# + name - Segment Name
# + mrg1 - Prior Patient Id - Internal
# + mrg2 - Prior Alternate Patient Id
# + mrg3 - Prior Patient Account Number
# + mrg4 - Prior Patient Id - External

@hl7v2:SegmentDefinition {
    name: "MRG",
    required: false,
    maxReps: 0,
    fields: {
        "mrg1": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: CM_PAT_ID
        },
        "mrg2": {
            required: false,
            length: 16,
            maxReps: 1,
            dataType: CM_PAT_ID
        },
        "mrg3": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CK
        },
        "mrg4": {
            required: false,
            length: 16,
            maxReps: 1,
            dataType: CK
        }

    }
}
public type MRG record {
    *hl7v2:Segment;
    string name = MRG_SEGMENT_NAME;
    CM_PAT_ID mrg1 = {};
    CM_PAT_ID mrg2 = {};
    CK mrg3 = {};
    CK mrg4 = {};
};

public const MRG_SEGMENT_NAME = "MRG";
