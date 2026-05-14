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

# IN1 segment. Insurance The IN1 segment contains insurance policy coverage information necessary to produce properly pro-rated and patient and insurance bills.
# + name - Segment Name
# + in11 - Set Id - Insurance
# + in12 - Insurance Plan Id
# + in13 - Insurance Company Id
# + in14 - Insurance Company Name
# + in15 - Insurance Company Address
# + in16 - Insurance Company Contact Pers
# + in17 - Insurance Company Phone Number
# + in18 - Group Number
# + in19 - Group Name
# + in110 - Insured s Group Employer Id
# + in111 - Insured s Group Employer Name
# + in112 - Plan Effective Date
# + in113 - Plan Expiration Date
# + in114 - Authorization Information
# + in115 - Plan Type
# + in116 - Name Of Insured
# + in117 - Insured s Relationship To Patient
# + in118 - Insured s Date Of Birth
# + in119 - Insured s Address
# + in120 - Assignment Of Benefits
# + in121 - Coordination Of Benefits
# + in122 - Coordination Of Benefits - Priority
# + in123 - Notice Of Admission Code
# + in124 - Notice Of Admission Date
# + in125 - Report Of Eligibility Code
# + in126 - Report Of Eligibility Date
# + in127 - Release Information Code
# + in128 - Pre-admit Certification (pac)
# + in129 - Verification Date / Time
# + in130 - Verification By
# + in131 - Type Of Agreement Code
# + in132 - Billing Status
# + in133 - Lifetime Reserve Days
# + in134 - Delay Before Lifetime Reserve Days
# + in135 - Company Plan Code
# + in136 - Policy Number
# + in137 - Policy Deductible
# + in138 - Policy Limit - Amount
# + in139 - Policy Limit - Days
# + in140 - Room Rate - Semi-private
# + in141 - Room Rate - Private
# + in142 - Insured s Employment Status
# + in143 - Insured s Sex
# + in144 - Insured s Employer Address
# + in145 - Verification Status
# + in146 - Prior Insurance Plan Id

@hl7v2:SegmentDefinition {
    name: "IN1",
    required: false,
    maxReps: 0,
    fields: {
        "in11": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "in12": {
            required: true,
            length: 8,
            maxReps: 1,
            dataType: ID
        },
        "in13": {
            required: true,
            length: 9,
            maxReps: 1,
            dataType: ST
        },
        "in14": {
            required: false,
            length: 45,
            maxReps: 1,
            dataType: ST
        },
        "in15": {
            required: false,
            length: 106,
            maxReps: 1,
            dataType: AD
        },
        "in16": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "in17": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "in18": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: ST
        },
        "in19": {
            required: false,
            length: 35,
            maxReps: 1,
            dataType: ST
        },
        "in110": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: ST
        },
        "in111": {
            required: false,
            length: 45,
            maxReps: 1,
            dataType: ST
        },
        "in112": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "in113": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "in114": {
            required: false,
            length: 55,
            maxReps: 1,
            dataType: CM_AUI
        },
        "in115": {
            required: false,
            length: 5,
            maxReps: 1,
            dataType: ID
        },
        "in116": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "in117": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in118": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "in119": {
            required: false,
            length: 106,
            maxReps: 1,
            dataType: AD
        },
        "in120": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in121": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in122": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ST
        },
        "in123": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in124": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "in125": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: ID
        },
        "in126": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "in127": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in128": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: ST
        },
        "in129": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "in130": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "in131": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in132": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in133": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "in134": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "in135": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: ID
        },
        "in136": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: ST
        },
        "in137": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "in138": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "in139": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "in140": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "in141": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: NM
        },
        "in142": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "in143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in144": {
            required: false,
            length: 106,
            maxReps: 1,
            dataType: AD
        },
        "in145": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ST
        },
        "in146": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type IN1 record {
    *hl7v2:Segment;
    string name = IN1_SEGMENT_NAME;
    SI in11 = "";
    ID in12 = "";
    ST in13 = "";
    ST in14 = "";
    AD in15 = {};
    PN in16 = {};
    TN in17 = "";
    ST in18 = "";
    ST in19 = "";
    ST in110 = "";
    ST in111 = "";
    DT in112 = "";
    DT in113 = "";
    CM_AUI in114 = {};
    ID in115 = "";
    PN in116 = {};
    ID in117 = "";
    DT in118 = "";
    AD in119 = {};
    ID in120 = "";
    ID in121 = "";
    ST in122 = "";
    ID in123 = "";
    DT in124 = "";
    ID in125 = "";
    DT in126 = "";
    ID in127 = "";
    ST in128 = "";
    TS in129 = {};
    CN_PERSON in130 = {};
    ID in131 = "";
    ID in132 = "";
    NM in133 = "";
    NM in134 = "";
    ID in135 = "";
    ST in136 = "";
    NM in137 = "";
    NM in138 = "";
    NM in139 = "";
    NM in140 = "";
    NM in141 = "";
    CE in142 = {};
    ID in143 = "";
    AD in144 = {};
    ST in145 = "";
    ID in146 = "";
};

public const IN1_SEGMENT_NAME = "IN1";
