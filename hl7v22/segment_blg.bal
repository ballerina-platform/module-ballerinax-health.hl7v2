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

# BLG segment. Billing The BLG segment is used to provide billing information, on the ordered service, to the filling application
# + name - Segment Name
# + blg1 - When To Charge
# + blg2 - Charge Type
# + blg3 - Account Id

@hl7v2:SegmentDefinition {
    name: "BLG",
    required: false,
    maxReps: 0,
    fields: {
        "blg1": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: CM_CCD
        },
        "blg2": {
            required: false,
            length: 50,
            maxReps: 1,
            dataType: ID
        },
        "blg3": {
            required: false,
            length: 100,
            maxReps: 1,
            dataType: CK
        }

    }
}
public type BLG record {
    *hl7v2:Segment;
    string name = BLG_SEGMENT_NAME;
    CM_CCD blg1 = {};
    ID blg2 = "";
    CK blg3 = {};
};

public const BLG_SEGMENT_NAME = "BLG";
