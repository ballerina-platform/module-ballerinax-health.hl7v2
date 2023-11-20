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
# + gt11 - Set ID - GT1
# + gt12 - Guarantor Number
# + gt13 - Guarantor Name
# + gt14 - Guarantor Spouse Name
# + gt15 - Guarantor Address
# + gt16 - Guarantor Ph Num - Home
# + gt17 - Guarantor Ph Num - Business
# + gt18 - Guarantor Date/Time Of Birth
# + gt19 - Guarantor Administrative Sex
# + gt110 - Guarantor Type
# + gt111 - Guarantor Relationship
# + gt112 - Guarantor SSN
# + gt113 - Guarantor Date - Begin
# + gt114 - Guarantor Date - End
# + gt115 - Guarantor Priority
# + gt116 - Guarantor Employer Name
# + gt117 - Guarantor Employer Address
# + gt118 - Guarantor Employer Phone Number
# + gt119 - Guarantor Employee ID Number
# + gt120 - Guarantor Employment Status
# + gt121 - Guarantor Organization Name
# + gt122 - Guarantor Billing Hold Flag
# + gt123 - Guarantor Credit Rating Code
# + gt124 - Guarantor Death Date And Time
# + gt125 - Guarantor Death Flag
# + gt126 - Guarantor Charge Adjustment Code
# + gt127 - Guarantor Household Annual Income
# + gt128 - Guarantor Household Size
# + gt129 - Guarantor Employer ID Number
# + gt130 - Guarantor Marital Status Code
# + gt131 - Guarantor Hire Effective Date
# + gt132 - Employment Stop Date
# + gt133 - Living Dependency
# + gt134 - Ambulatory Status
# + gt135 - Citizenship
# + gt136 - Primary Language
# + gt137 - Living Arrangement
# + gt138 - Publicity Code
# + gt139 - Protection Indicator
# + gt140 - Student Indicator
# + gt141 - Religion
# + gt142 - Mother's Maiden Name
# + gt143 - Nationality
# + gt144 - Ethnic Group
# + gt145 - Contact Person's Name
# + gt146 - Contact Person's Telephone Number
# + gt147 - Contact Reason
# + gt148 - Contact Relationship
# + gt149 - Job Title
# + gt150 - Job Code/Class
# + gt151 - Guarantor Employer's Organization Name
# + gt152 - Handicap
# + gt153 - Job Status
# + gt154 - Guarantor Financial Class
# + gt155 - Guarantor Race
# + gt156 - Guarantor Birth Place
# + gt157 - VIP Indicator
@hl7v2:SegmentDefinition {
    name: "GT1",
    required: false,
    maxReps: 0,
    fields: {
        "gt11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "gt12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt13": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "gt16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gt19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gt116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "gt118": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt121": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "gt122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gt125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gt128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gt129": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "gt130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "gt133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt134": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "gt135": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "gt136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gt140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt142": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt144": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "gt145": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gt146": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "gt147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gt148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt149": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "gt151": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "gt152": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gt154": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FC
        },
        "gt155": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "gt156": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "gt157": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type GT1 record {
    *hl7v2:Segment;
    string name = GT1_SEGMENT_NAME;
    SI gt11 = "";
    CX[] gt12 = [{}];
    XPN[] gt13 = [{}];
    XPN[] gt14 = [{}];
    XAD[] gt15 = [{}];
    XTN[] gt16 = [{}];
    XTN[] gt17 = [{}];
    TS gt18 = {};
    IS gt19 = "";
    IS gt110 = "";
    CE gt111 = {};
    ST gt112 = "";
    DT gt113 = "";
    DT gt114 = "";
    NM gt115 = "";
    XPN[] gt116 = [{}];
    XAD[] gt117 = [{}];
    XTN[] gt118 = [{}];
    CX[] gt119 = [{}];
    IS gt120 = "";
    XON[] gt121 = [{}];
    ID gt122 = "";
    CE gt123 = {};
    TS gt124 = {};
    ID gt125 = "";
    CE gt126 = {};
    CP gt127 = {};
    NM gt128 = "";
    CX[] gt129 = [{}];
    CE gt130 = {};
    DT gt131 = "";
    DT gt132 = "";
    IS gt133 = "";
    IS[] gt134 = [""];
    CE[] gt135 = [{}];
    CE gt136 = {};
    IS gt137 = "";
    CE gt138 = {};
    ID gt139 = "";
    IS gt140 = "";
    CE gt141 = {};
    XPN[] gt142 = [{}];
    CE gt143 = {};
    CE[] gt144 = [{}];
    XPN[] gt145 = [{}];
    XTN[] gt146 = [{}];
    CE gt147 = {};
    IS gt148 = "";
    ST gt149 = "";
    JCC gt150 = {};
    XON[] gt151 = [{}];
    IS gt152 = "";
    IS gt153 = "";
    FC gt154 = {};
    CE[] gt155 = [{}];
    ST gt156 = "";
    IS gt157 = "";
};

public const GT1_SEGMENT_NAME = "GT1";