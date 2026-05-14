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

# URD segment. Results/update Definition The URD segment is used in sending unsolicited updates about orders and results. It s purpose is similar to that of the QRD segment, but from the results/unsolicited update point of view. Some of the fields have parallels in the QRD segment
# + name - Segment Name
# + urd1 - R/U Date / Time
# + urd2 - Report Priority
# + urd3 - R/U Who Subject Definition
# + urd4 - R/U What Subject Definition
# + urd5 - R/U What Department Code
# + urd6 - R/U Display / Print Locations
# + urd7 - R/U Results Level

@hl7v2:SegmentDefinition {
    name: "URD",
    required: false,
    maxReps: 0,
    fields: {
        "urd1": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "urd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "urd3": {
            required: true,
            length: 20,
            maxReps: -1,
            dataType: ST
        },
        "urd4": {
            required: false,
            length: 3,
            maxReps: -1,
            dataType: ID
        },
        "urd5": {
            required: false,
            length: 20,
            maxReps: -1,
            dataType: ST
        },
        "urd6": {
            required: false,
            length: 20,
            maxReps: -1,
            dataType: ST
        },
        "urd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type URD record {
    *hl7v2:Segment;
    string name = URD_SEGMENT_NAME;
    TS urd1 = {};
    ID urd2 = "";
    ST[] urd3 = [""];
    ID[] urd4 = [""];
    ST[] urd5 = [""];
    ST[] urd6 = [""];
    ID urd7 = "";
};

public const URD_SEGMENT_NAME = "URD";
