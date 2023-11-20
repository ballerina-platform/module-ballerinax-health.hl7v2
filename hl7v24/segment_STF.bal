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
# + stf2 - Staff ID Code
# + stf3 - Staff Name
# + stf4 - Staff Type
# + stf5 - Administrative Sex
# + stf6 - Date/Time Of Birth
# + stf7 - Active/Inactive Flag
# + stf8 - Department
# + stf9 - Hospital Service
# + stf10 - Phone
# + stf11 - Office/Home Address
# + stf12 - Institution Activation Date
# + stf13 - Institution Inactivation Date
# + stf14 - Backup Person ID
# + stf15 - E-Mail Address
# + stf16 - Preferred Method of Contact
# + stf17 - Marital Status
# + stf18 - Job Title
# + stf19 - Job Code/Class
# + stf20 - Employment Status Code
# + stf21 - Additional Insured on  Auto
# + stf22 - Driver's License Number - Staff
# + stf23 - Copy  Auto Ins
# + stf24 - Auto Ins. Expires
# + stf25 - Date Last DMV Review
# + stf26 - Date Next DMV Review
# + stf27 - Race
# + stf28 - Ethnic Group
# + stf29 - Re-activation Approval Indicator
@hl7v2:SegmentDefinition {
    name: "STF",
    required: false,
    maxReps: 0,
    fields: {
        "stf1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: IS
        },
        "stf5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "stf6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
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
            dataType: CE
        },
        "stf9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
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
            dataType: CE
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
            dataType: CE
        },
        "stf17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: CE
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
            dataType: CE
        },
        "stf28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "stf29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type STF record {
    *hl7v2:Segment;
    string name = STF_SEGMENT_NAME;
    CE stf1 = {};
    CX[] stf2 = [{}];
    XPN[] stf3 = [{}];
    IS[] stf4 = [""];
    IS stf5 = "";
    TS stf6 = {};
    ID stf7 = "";
    CE[] stf8 = [{}];
    CE[] stf9 = [{}];
    XTN[] stf10 = [{}];
    XAD[] stf11 = [{}];
    DIN[] stf12 = [{}];
    DIN[] stf13 = [{}];
    CE[] stf14 = [{}];
    ST[] stf15 = [""];
    CE stf16 = {};
    CE stf17 = {};
    ST stf18 = "";
    JCC stf19 = {};
    CE stf20 = {};
    ID stf21 = "";
    DLN stf22 = {};
    ID stf23 = "";
    DT stf24 = "";
    DT stf25 = "";
    DT stf26 = "";
    CE stf27 = {};
    CE stf28 = {};
    ID stf29 = "";
};

public const STF_SEGMENT_NAME = "STF";