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

# ODS segment. Dietary Orders, Supplements, And Preferences The ORC sequence items of interest to ODS are ORC-1-order control,ORC-2-placer order number, ORC-3-filler order number, ORC-7-quantity/timing, ORC-9-date/time of transaction, ORC-10-entered by, and ORC-11verified by. Fo...
# + name - Segment Name
# + ods1 - Type
# + ods2 - Service Period
# + ods3 - Diet, Supplement, Or Preference Code
# + ods4 - Text Instruction

@hl7v2:SegmentDefinition {
    name: "ODS",
    required: false,
    maxReps: 0,
    fields: {
        "ods1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ods2": {
            required: false,
            length: 60,
            maxReps: 10,
            dataType: CE
        },
        "ods3": {
            required: true,
            length: 60,
            maxReps: 20,
            dataType: CE
        },
        "ods4": {
            required: false,
            length: 80,
            maxReps: 2,
            dataType: ST
        }

    }
}
public type ODS record {
    *hl7v2:Segment;
    string name = ODS_SEGMENT_NAME;
    ID ods1 = "";
    CE ods2 = {};
    CE ods3 = {};
    ST ods4 = "";
};

public const ODS_SEGMENT_NAME = "ODS";
