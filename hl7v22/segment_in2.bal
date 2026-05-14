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

# IN2 segment. Insurance Additional Info The IN2 segment contains additional insurance policy coverage and benefit information necessary for proper billing and reimbursement. Fields used by this segment are defined by HICFA or other regulatory agencies.
# + name - Segment Name
# + in21 - Insured s Employee Id
# + in22 - Insured s Social Security Number
# + in23 - Insured s Employer Name
# + in24 - Employer Information Data
# + in25 - Mail Claim Party
# + in26 - Medicare Health Insurance Card Number
# + in27 - Medicaid Case Name
# + in28 - Medicaid Case Number
# + in29 - Champus Sponsor Name
# + in210 - Champus Id Number
# + in211 - Dependent Of Champus Recipient
# + in212 - Champus Organization
# + in213 - Champus Station
# + in214 - Champus Service
# + in215 - Champus Rank / Grade
# + in216 - Champus Status
# + in217 - Champus Retire Date
# + in218 - Champus Non-availability Certification On File
# + in219 - Baby Coverage
# + in220 - Combine Baby Bill
# + in221 - Blood Deductible
# + in222 - Special Coverage Approval Name
# + in223 - Special Coverage Approval Title
# + in224 - Non-covered Insurance Code
# + in225 - Payor Id
# + in226 - Payor Subscriber Id
# + in227 - Eligibility Source
# + in228 - Room Coverage Type / Amount
# + in229 - Policy Type / Amount
# + in230 - Daily Deductible

@hl7v2:SegmentDefinition {
    name: "IN2",
    required: false,
    maxReps: 0,
    fields: {
        "in21": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: ST
        },
        "in22": {
            required: false,
            length: 9,
            maxReps: 1,
            dataType: NM
        },
        "in23": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "in24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in26": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: NM
        },
        "in27": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "in28": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: NM
        },
        "in29": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "in210": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "in211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in212": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: ST
        },
        "in213": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: ST
        },
        "in214": {
            required: false,
            length: 14,
            maxReps: 1,
            dataType: ID
        },
        "in215": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "in216": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "in217": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: DT
        },
        "in218": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in219": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in220": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in221": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "in222": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "in223": {
            required: false,
            length: 30,
            maxReps: 1,
            dataType: ST
        },
        "in224": {
            required: false,
            length: 8,
            maxReps: -1,
            dataType: ID
        },
        "in225": {
            required: false,
            length: 6,
            maxReps: 1,
            dataType: ST
        },
        "in226": {
            required: false,
            length: 6,
            maxReps: 1,
            dataType: ST
        },
        "in227": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in228": {
            required: false,
            length: 25,
            maxReps: -1,
            dataType: CM_RMC
        },
        "in229": {
            required: false,
            length: 25,
            maxReps: -1,
            dataType: CM_PTA
        },
        "in230": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: CM_DDI
        }

    }
}
public type IN2 record {
    *hl7v2:Segment;
    string name = IN2_SEGMENT_NAME;
    ST in21 = "";
    NM in22 = "";
    CN_PERSON in23 = {};
    ID in24 = "";
    ID in25 = "";
    NM in26 = "";
    PN in27 = {};
    NM in28 = "";
    PN in29 = {};
    NM in210 = "";
    ID in211 = "";
    ST in212 = "";
    ST in213 = "";
    ID in214 = "";
    ID in215 = "";
    ID in216 = "";
    DT in217 = "";
    ID in218 = "";
    ID in219 = "";
    ID in220 = "";
    NM in221 = "";
    PN in222 = {};
    ST in223 = "";
    ID[] in224 = [""];
    ST in225 = "";
    ST in226 = "";
    ID in227 = "";
    CM_RMC[] in228 = [{}];
    CM_PTA[] in229 = [{}];
    CM_DDI in230 = {};
};

public const IN2_SEGMENT_NAME = "IN2";
