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

# NPU segment. Bed Status Update The NPU segment allows the updating of census (bed status) data without sending patient specific data. For example: changing the status of a bed from housekeeping to unoccupied.
# + name - Segment Name
# + npu1 - Bed Location
# + npu2 - Bed Status

@hl7v2:SegmentDefinition {
    name: "NPU",
    required: false,
    maxReps: 0,
    fields: {
        "npu1": {
            required: true,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "npu2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type NPU record {
    *hl7v2:Segment;
    string name = NPU_SEGMENT_NAME;
    CM_INTERNAL_LOCATION npu1 = {};
    ID npu2 = "";
};

public const NPU_SEGMENT_NAME = "NPU";
