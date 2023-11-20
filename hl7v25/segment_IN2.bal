// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

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

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + in21 - Insured's Employee ID
# + in22 - Insured's Social Security Number
# + in23 - Insured's Employer's Name and ID
# + in24 - Employer Information Data
# + in25 - Mail Claim Party
# + in26 - Medicare Health Ins Card Number
# + in27 - Medicaid Case Name
# + in28 - Medicaid Case Number
# + in29 - Military Sponsor Name
# + in210 - Military ID Number
# + in211 - Dependent Of Military Recipient
# + in212 - Military Organization
# + in213 - Military Station
# + in214 - Military Service
# + in215 - Military Rank/Grade
# + in216 - Military Status
# + in217 - Military Retire Date
# + in218 - Military Non-Avail Cert On File
# + in219 - Baby Coverage
# + in220 - Combine Baby Bill
# + in221 - Blood Deductible
# + in222 - Special Coverage Approval Name
# + in223 - Special Coverage Approval Title
# + in224 - Non-Covered Insurance Code
# + in225 - Payor ID
# + in226 - Payor Subscriber ID
# + in227 - Eligibility Source
# + in228 - Room Coverage Type/Amount
# + in229 - Policy Type/Amount
# + in230 - Daily Deductible
# + in231 - Living Dependency
# + in232 - Ambulatory Status
# + in233 - Citizenship
# + in234 - Primary Language
# + in235 - Living Arrangement
# + in236 - Publicity Code
# + in237 - Protection Indicator
# + in238 - Student Indicator
# + in239 - Religion
# + in240 - Mother's Maiden Name
# + in241 - Nationality
# + in242 - Ethnic Group
# + in243 - Marital Status
# + in244 - Insured's Employment Start Date
# + in245 - Employment Stop Date
# + in246 - Job Title
# + in247 - Job Code/Class
# + in248 - Job Status
# + in249 - Employer Contact Person Name
# + in250 - Employer Contact Person Phone Number
# + in251 - Employer Contact Reason
# + in252 - Insured's Contact Person's Name
# + in253 - Insured's Contact Person Phone Number
# + in254 - Insured's Contact Person Reason
# + in255 - Relationship to the Patient Start Date
# + in256 - Relationship to the Patient Stop Date
# + in257 - Insurance Co. Contact Reason
# + in258 - Insurance Co Contact Phone Number
# + in259 - Policy Scope
# + in260 - Policy Source
# + in261 - Patient Member Number
# + in262 - Guarantor's Relationship To Insured
# + in263 - Insured's Phone Number - Home
# + in264 - Insured's Employer Phone Number
# + in265 - Military Handicapped Program
# + in266 - Suspend Flag
# + in267 - Copay Limit Flag
# + in268 - Stoploss Limit Flag
# + in269 - Insured Organization Name and ID
# + in270 - Insured Employer Organization Name and ID
# + in271 - Race
# + in272 - CMS Patient_s Relationship to Insured
@hl7v2:SegmentDefinition {
    name: "IN2",
    required: false,
    maxReps: 0,
    fields: {
        "in21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in29": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in213": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in215": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in216": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in217": {
            required: false,
            length: 1,
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
            dataType: ST
        },
        "in222": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in223": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in224": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in225": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in226": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in227": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in228": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: RMC
        },
        "in229": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PTA
        },
        "in230": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DDI
        },
        "in231": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in232": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in233": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "in234": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in235": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in236": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in237": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in238": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in239": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in240": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in241": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in242": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "in243": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "in244": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in245": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in246": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in247": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "in248": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in249": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in250": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in251": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in252": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in253": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in254": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in255": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in256": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DT
        },
        "in257": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in258": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "in259": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in260": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in261": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "in262": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in263": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in264": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in265": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in266": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in267": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in268": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in269": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in270": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in271": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "in272": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type IN2 record {
    *hl7v2:Segment;
    string name = IN2_SEGMENT_NAME;
    CX[] in21 = [{}];
    ST in22 = "";
    XCN[] in23 = [{}];
    IS in24 = "";
    IS[] in25 = [""];
    ST in26 = "";
    XPN[] in27 = [{}];
    ST in28 = "";
    XPN[] in29 = [{}];
    ST in210 = "";
    CE in211 = {};
    ST in212 = "";
    ST in213 = "";
    IS in214 = "";
    IS in215 = "";
    IS in216 = "";
    DT in217 = "";
    ID in218 = "";
    ID in219 = "";
    ID in220 = "";
    ST in221 = "";
    XPN[] in222 = [{}];
    ST in223 = "";
    IS[] in224 = [""];
    CX[] in225 = [{}];
    CX[] in226 = [{}];
    IS in227 = "";
    RMC[] in228 = [{}];
    PTA[] in229 = [{}];
    DDI in230 = {};
    IS in231 = "";
    IS[] in232 = [""];
    CE[] in233 = [{}];
    CE in234 = {};
    IS in235 = "";
    CE in236 = {};
    ID in237 = "";
    IS in238 = "";
    CE in239 = {};
    XPN[] in240 = [{}];
    CE in241 = {};
    CE[] in242 = [{}];
    CE[] in243 = [{}];
    DT in244 = "";
    DT in245 = "";
    ST in246 = "";
    JCC in247 = {};
    IS in248 = "";
    XPN[] in249 = [{}];
    XTN[] in250 = [{}];
    IS in251 = "";
    XPN[] in252 = [{}];
    XTN[] in253 = [{}];
    IS[] in254 = [""];
    DT in255 = "";
    DT[] in256 = [""];
    IS in257 = "";
    XTN in258 = {};
    IS in259 = "";
    IS in260 = "";
    CX in261 = {};
    CE in262 = {};
    XTN[] in263 = [{}];
    XTN[] in264 = [{}];
    CE in265 = {};
    ID in266 = "";
    ID in267 = "";
    ID in268 = "";
    XON[] in269 = [{}];
    XON[] in270 = [{}];
    CE[] in271 = [{}];
    CE in272 = {};
};

public const IN2_SEGMENT_NAME = "IN2";