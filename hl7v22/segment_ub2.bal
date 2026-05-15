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

# UB2 segment. Ub92 Data The UB2 segment contains data necessary to complete UB92 bills. Only UB92 data elements that do not exist in other HL7 defined segments will appear in this segment. Just as with the UB82 billing, Patient Name and Date of Birth are required, they are incl...
# + name - Segment Name
# + ub21 - Set Id - Ub92
# + ub22 - Co-insurance Days (9)
# + ub23 - Condition Code (24-30)
# + ub24 - Covered Days (7)
# + ub25 - Non-covered Days (8)
# + ub26 - Value Amount And Code (39-41)
# + ub27 - Occurrence Code And Date (32-35)
# + ub28 - Occurrence Span Code / Dates (36)
# + ub29 - Ub92 Locator 2 (state)
# + ub210 - Ub92 Locator 11 (state)
# + ub211 - Ub92 Locator 31 (national)
# + ub212 - Document Control Number (37)
# + ub213 - Ub92 Locator 49 (national)
# + ub214 - Ub92 Locator 56 (state)
# + ub215 - Ub92 Locator 57 (national)
# + ub216 - Ub92 Locator 78 (state)

@hl7v2:SegmentDefinition {
    name: "UB2",
    required: false,
    maxReps: 0,
    fields: {
        "ub21": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "ub22": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "ub23": {
            required: false,
            length: 2,
            maxReps: 7,
            dataType: ID
        },
        "ub24": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "ub25": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: ST
        },
        "ub26": {
            required: false,
            length: 11,
            maxReps: 12,
            dataType: CM_UVC
        },
        "ub27": {
            required: false,
            length: 11,
            maxReps: 8,
            dataType: CM_OCD
        },
        "ub28": {
            required: false,
            length: 28,
            maxReps: 2,
            dataType: CM_OSP
        },
        "ub29": {
            required: false,
            length: 29,
            maxReps: 2,
            dataType: ST
        },
        "ub210": {
            required: false,
            length: 12,
            maxReps: 2,
            dataType: ST
        },
        "ub211": {
            required: false,
            length: 5,
            maxReps: 1,
            dataType: ST
        },
        "ub212": {
            required: false,
            length: 23,
            maxReps: 3,
            dataType: ST
        },
        "ub213": {
            required: false,
            length: 4,
            maxReps: 23,
            dataType: ST
        },
        "ub214": {
            required: false,
            length: 14,
            maxReps: 5,
            dataType: ST
        },
        "ub215": {
            required: false,
            length: 27,
            maxReps: 1,
            dataType: ST
        },
        "ub216": {
            required: false,
            length: 2,
            maxReps: 2,
            dataType: ST
        }

    }
}
public type UB2 record {
    *hl7v2:Segment;
    string name = UB2_SEGMENT_NAME;
    SI ub21 = "";
    ST ub22 = "";
    ID ub23 = "";
    ST ub24 = "";
    ST ub25 = "";
    CM_UVC ub26 = {};
    CM_OCD ub27 = {};
    CM_OSP ub28 = {};
    ST ub29 = "";
    ST ub210 = "";
    ST ub211 = "";
    ST ub212 = "";
    ST ub213 = "";
    ST ub214 = "";
    ST ub215 = "";
    ST ub216 = "";
};

public const UB2_SEGMENT_NAME = "UB2";
