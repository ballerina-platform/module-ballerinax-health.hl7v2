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

# GT1 segment. Guarantor The GT1 segment contains guarantor (e.g., person with financial responsibility for payment of a patient account) data for patient and insurance billing applications
# + name - Segment Name
# + gt11 - Set Id - Guarantor
# + gt12 - Guarantor Number
# + gt13 - Guarantor Name
# + gt14 - Guarantor Spouse Name
# + gt15 - Guarantor Address
# + gt16 - Guarantor Phone Number - Home
# + gt17 - Guarantor Phone Number - Business
# + gt18 - Guarantor Date Of Birth
# + gt19 - Guarantor Sex
# + gt110 - Guarantor Type
# + gt111 - Guarantor Relationship
# + gt112 - Guarantor Social Security Number
# + gt113 - Guarantor Date - Begin
# + gt114 - Guarantor Date - End
# + gt115 - Guarantor Priority
# + gt116 - Guarantor Employer Name
# + gt117 - Guarantor Employer Address
# + gt118 - Guarantor Employ Phone Number
# + gt119 - Guarantor Employee Id Number
# + gt120 - Guarantor Employment Status
# + gt121 - Guarantor Organization

@hl7v2:SegmentDefinition {
    name: "GT1",
    required: false,
    maxReps: 0,
    fields: {
        "gt11": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "gt12": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: COMP_ID_DIGIT
        },
        "gt13": {
            required: true,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "gt14": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "gt15": {
            required: false,
            length: 106,
            maxReps: 1,
            dataType: AD
        },
        "gt16": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "gt17": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "gt18": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "gt19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt110": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "gt111": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "gt112": {
            required: false,
            length: 11,
            maxReps: 1,
            dataType: ST
        },
        "gt113": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "gt114": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "gt115": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: NM
        },
        "gt116": {
            required: false,
            length: 45,
            maxReps: 1,
            dataType: ST
        },
        "gt117": {
            required: false,
            length: 106,
            maxReps: 1,
            dataType: AD
        },
        "gt118": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "gt119": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "gt120": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "gt121": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: ST
        }

    }
}
public type GT1 record {
    *hl7v2:Segment;
    string name = GT1_SEGMENT_NAME;
    SI gt11 = "";
    COMP_ID_DIGIT gt12 = "";
    PN gt13 = {};
    PN gt14 = {};
    AD gt15 = {};
    TN gt16 = "";
    TN gt17 = "";
    DT gt18 = "";
    ID gt19 = "";
    ID gt110 = "";
    ID gt111 = "";
    ST gt112 = "";
    DT gt113 = "";
    DT gt114 = "";
    NM gt115 = "";
    ST gt116 = "";
    AD gt117 = {};
    TN gt118 = "";
    ST gt119 = "";
    ID gt120 = "";
    ST gt121 = "";
};

public const GT1_SEGMENT_NAME = "GT1";
