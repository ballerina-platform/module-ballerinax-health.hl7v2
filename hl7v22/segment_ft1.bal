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

# FT1 segment. Financial Transaction The FT1 segment contains detail data necessary to post charges, payments, adjustments, etc. to patient accounting records.
# + name - Segment Name
# + ft11 - Set Id - Financial Transaction
# + ft12 - Transaction Id
# + ft13 - Transaction Batch Id
# + ft14 - Transaction Date
# + ft15 - Transaction Posting Date
# + ft16 - Transaction Type
# + ft17 - Transaction Code
# + ft18 - Transaction Description
# + ft19 - Transaction Description - Alternate
# + ft110 - Transaction Quantity
# + ft111 - Transaction Amount - Extended
# + ft112 - Transaction Amount - Unit
# + ft113 - Department Code
# + ft114 - Insurance Plan Id
# + ft115 - Insurance Amount
# + ft116 - Assigned Patient Location
# + ft117 - Fee Schedule
# + ft118 - Patient Type
# + ft119 - Diagnosis Code
# + ft120 - Performed By Code
# + ft121 - Ordered By Code
# + ft122 - Unit Cost
# + ft123 - Filler Order Number

@hl7v2:SegmentDefinition {
    name: "FT1",
    required: false,
    maxReps: 0,
    fields: {
        "ft11": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "ft12": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: ST
        },
        "ft13": {
            required: false,
            length: 10,
            maxReps: 1,
            dataType: ST
        },
        "ft14": {
            required: true,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "ft15": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "ft16": {
            required: true,
            length: 8,
            maxReps: 1,
            dataType: ID
        },
        "ft17": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: CE
        },
        "ft18": {
            required: false,
            length: 40,
            maxReps: 1,
            dataType: ST
        },
        "ft19": {
            required: false,
            length: 40,
            maxReps: 1,
            dataType: ST
        },
        "ft110": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "ft111": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "ft112": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "ft113": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "ft114": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: ID
        },
        "ft115": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "ft116": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_INTERNAL_LOCATION
        },
        "ft117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ft118": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "ft119": {
            required: false,
            length: 8,
            maxReps: -1,
            dataType: CE
        },
        "ft120": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "ft121": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "ft122": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "ft123": {
            required: false,
            length: 75,
            maxReps: 1,
            dataType: CM_FILLER
        }

    }
}
public type FT1 record {
    *hl7v2:Segment;
    string name = FT1_SEGMENT_NAME;
    SI ft11 = "";
    ST ft12 = "";
    ST ft13 = "";
    DT ft14 = "";
    DT ft15 = "";
    ID ft16 = "";
    CE ft17 = {};
    ST ft18 = "";
    ST ft19 = "";
    NM ft110 = "";
    NM ft111 = "";
    NM ft112 = "";
    CE ft113 = {};
    ID ft114 = "";
    NM ft115 = "";
    CM_INTERNAL_LOCATION ft116 = {};
    ID ft117 = "";
    ID ft118 = "";
    CE[] ft119 = [{}];
    CN_PERSON ft120 = {};
    CN_PERSON ft121 = {};
    NM ft122 = "";
    CM_FILLER ft123 = {};
};

public const FT1_SEGMENT_NAME = "FT1";
