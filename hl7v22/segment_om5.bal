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

# OM5 segment. Observation Batteries This segment contains information about batteries and supersets (a nature code of F, P or S, as described in OM119-nature of test/observation).
# + name - Segment Name
# + om51 - Segment Type Id
# + om52 - Sequence Number - Test/ Observation Master File
# + om53 - Tests / Observations Included Within An Ordered Test Battery
# + om54 - Observation Id Suffixes

@hl7v2:SegmentDefinition {
    name: "OM5",
    required: false,
    maxReps: 0,
    fields: {
        "om51": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "om52": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "om53": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "om54": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: ST
        }

    }
}
public type OM5 record {
    *hl7v2:Segment;
    string name = OM5_SEGMENT_NAME;
    ST om51 = "";
    NM om52 = "";
    CE[] om53 = [{}];
    ST om54 = "";
};

public const OM5_SEGMENT_NAME = "OM5";
