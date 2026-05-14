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

# EVN segment. Event Type The EVN segment is used to communicate necessary trigger event information to receiving applications. Valid event types for all chapters are contained in table 0003 - event type code
# + name - Segment Name
# + evn1 - Event Type Code
# + evn2 - Date / Time Of Event
# + evn3 - Date / Time Planned Event
# + evn4 - Event Reason Code
# + evn5 - Operator Id

@hl7v2:SegmentDefinition {
    name: "EVN",
    required: false,
    maxReps: 0,
    fields: {
        "evn1": {
            required: true,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "evn2": {
            required: true,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "evn3": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "evn4": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "evn5": {
            required: false,
            length: 5,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type EVN record {
    *hl7v2:Segment;
    string name = EVN_SEGMENT_NAME;
    ID evn1 = "";
    TS evn2 = {};
    TS evn3 = {};
    ID evn4 = "";
    ID evn5 = "";
};

public const EVN_SEGMENT_NAME = "EVN";
