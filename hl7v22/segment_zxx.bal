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

# Zxx segment. Any Z Segment
# + name - Segment Name
# + zxx1 - Zxx.1

@hl7v2:SegmentDefinition {
    name: "Zxx",
    required: false,
    maxReps: 0,
    fields: {
        "zxx1": {
            required: false,
            length: 0,
            maxReps: 1,
            dataType: ST
        }

    }
}
public type Zxx record {
    *hl7v2:Segment;
    string name = Zxx_SEGMENT_NAME;
    ST zxx1 = "";
};

public const Zxx_SEGMENT_NAME = "Zxx";
