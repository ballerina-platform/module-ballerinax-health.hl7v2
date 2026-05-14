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

# NCK segment. System Clock the NCK segment is used to allow the various systems on the network to synchronize their system clocks (system date and time).
# + name - Segment Name
# + nck1 - System Date/Time

@hl7v2:SegmentDefinition {
    name: "NCK",
    required: false,
    maxReps: 0,
    fields: {
        "nck1": {
            required: true,
            length: 26,
            maxReps: 1,
            dataType: TS
        }

    }
}
public type NCK record {
    *hl7v2:Segment;
    string name = NCK_SEGMENT_NAME;
    TS nck1 = {};
};

public const NCK_SEGMENT_NAME = "NCK";
