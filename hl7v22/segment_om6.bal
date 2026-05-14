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

# OM6 segment. Observations That Are Calculated From Other Obersvations This segment contains information about quantities that are derived from one or more other quantities or direct observations by mathematical or logical means
# + name - Segment Name
# + om61 - Segment Type Id
# + om62 - Sequence Number - Test/ Observation Master File
# + om63 - Derivation Rule

@hl7v2:SegmentDefinition {
    name: "OM6",
    required: false,
    maxReps: 0,
    fields: {
        "om61": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "om62": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "om63": {
            required: false,
            length: 10240,
            maxReps: 1,
            dataType: TX
        }

    }
}
public type OM6 record {
    *hl7v2:Segment;
    string name = OM6_SEGMENT_NAME;
    ST om61 = "";
    NM om62 = "";
    TX om63 = "";
};

public const OM6_SEGMENT_NAME = "OM6";
