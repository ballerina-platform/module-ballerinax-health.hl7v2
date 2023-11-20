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
# + stf1 - Primary Key Value - STF
# + stf2 - Staff Identifier List
# + stf3 - Staff Name
# + stf4 - Staff Type
# + stf5 - Administrative Sex
# + stf6 - Date/Time of Birth
# + stf7 - Active/Inactive Flag
# + stf8 - Department
# + stf9 - Hospital Service - STF
# + stf10 - Phone
# + stf11 - Office/Home Address/Birthplace
# + stf12 - Institution Activation Date
# + stf13 - Institution Inactivation Date
# + stf14 - Backup Person ID
# + stf15 - E-Mail Address
# + stf16 - Preferred Method of Contact
# + stf17 - Marital Status
# + stf18 - Job Title
# + stf19 - Job Code/Class
# + stf20 - Employment Status Code
# + stf21 - Additional Insured on Auto
# + stf22 - Driver's License Number - Staff
# + stf23 - Copy Auto Ins
# + stf24 - Auto Ins Expires
# + stf25 - Date Last DMV Review
# + stf26 - Date Next DMV Review
# + stf27 - Race
# + stf28 - Ethnic Group
# + stf29 - Re-activation Approval Indicator
# + stf30 - Citizenship
# + stf31 - Date/Time of Death
# + stf32 - Death Indicator
# + stf33 - Institution Relationship Type Code
# + stf34 - Institution Relationship Period
# + stf35 - Expected Return Date
# + stf36 - Cost Center Code
# + stf37 - Generic Classification Indicator
# + stf38 - Inactive Reason Code
# + stf39 - Generic resource type or category
# + stf40 - Religion
# + stf41 - Signature
@hl7v2:SegmentDefinition {
    name: "STF",
    required: false,
    maxReps: 0,
    fields: {
        "stf1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "stf3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "stf4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "stf7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "stf11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "stf12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DIN
        },
        "stf13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DIN
        },
        "stf14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "stf16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "stf19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "stf20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DLN
        },
        "stf23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf30": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "stf32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "stf35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "stf36": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "stf38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "stf40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "stf41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ED
        }
    }
}
public type STF record {
    *hl7v2:Segment;
    string name = STF_SEGMENT_NAME;
    CWE stf1 = {};
    CX[] stf2 = [{}];
    XPN[] stf3 = [{}];
    CWE[] stf4 = [{}];
    CWE stf5 = {};
    DTM stf6 = "";
    ID stf7 = "";
    CWE[] stf8 = [{}];
    CWE[] stf9 = [{}];
    XTN[] stf10 = [{}];
    XAD[] stf11 = [{}];
    DIN[] stf12 = [{}];
    DIN[] stf13 = [{}];
    CWE[] stf14 = [{}];
    ST[] stf15 = [""];
    CWE stf16 = {};
    CWE stf17 = {};
    ST stf18 = "";
    JCC stf19 = {};
    CWE stf20 = {};
    ID stf21 = "";
    DLN stf22 = {};
    ID stf23 = "";
    DT stf24 = "";
    DT stf25 = "";
    DT stf26 = "";
    CWE stf27 = {};
    CWE stf28 = {};
    ID stf29 = "";
    CWE[] stf30 = [{}];
    DTM stf31 = "";
    ID stf32 = "";
    CWE stf33 = {};
    DR stf34 = {};
    DT stf35 = "";
    CWE[] stf36 = [{}];
    ID stf37 = "";
    CWE stf38 = {};
    CWE[] stf39 = [{}];
    CWE stf40 = {};
    ED stf41 = {};
};

public const STF_SEGMENT_NAME = "STF";