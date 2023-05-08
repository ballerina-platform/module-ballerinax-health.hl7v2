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

# The PID segment is used by all applications as the primary means of communicating patient identification information.
#
# + name - Segment name  
# + pid1 - Set ID - Patient ID  
# + pid2 - Patient ID (External ID)  
# + pid3 - Patient ID (Internal ID) 
# + pid4 - Alternate Patient ID  
# + pid5 - Patient Name  
# + pid6 - Mother's Maiden Name  
# + pid7 - Date of Birth  
# + pid8 - Sex  
# + pid9 - Patient Alias  
# + pid10 - Race  
# + pid11 - Patient Address  
# + pid12 - County Code  
# + pid13 - Phone Number - Home  
# + pid14 - Phone Number - Business  
# + pid15 - Primary Language  
# + pid16 - Marital Status  
# + pid17 - Religion  
# + pid18 - Patient Account Number  
# + pid19 - SSN Number - Patient  
# + pid20 - Driver's License Number  
# + pid21 - Mother's Identifier  
# + pid22 - Ethnic Group  
# + pid23 - Birth Place  
# + pid24 - Multiple Birth Indicator  
# + pid25 - Birth Order  
# + pid26 - Citizenship  
# + pid27 - Veterans Military Status  
# + pid28 - Nationality Code  
# + pid29 - Patient Death Date and Time  
# + pid30 - Patient Death Indicator
@hl7v2:SegmentDefinition {
    name: "PID",
    required: false,
    maxReps: 1,
    fields: {
        "pid1": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType:  SI
        },
        "pid2": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType:  CX
        },
        "pid3": {
            required: true,
            length: 20,
            maxReps: -1,
            dataType:  [CX]
        },
        "pid4": {
            required: false,
            length: 20,
            maxReps: -1,
            dataType:  CX
        },
        "pid5": {
            required: true,
            length: 48,
            maxReps: -1,
            dataType:  XPN
        },
        "pid6": {
            required: false,
            length: 48,
            maxReps: 1,
            dataType:  CX
        },
        "pid7": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType:  TS
        },
        "pid8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType:  IS
        },
        "pid9": {
            required: false,
            length: 48,
            maxReps: -1,
            dataType:  XPN
        },
        "pid10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType:  IS
        },
        "pid11": {
            required: false,
            length: 106,
            maxReps: -1,
            dataType:  XAD
        },
        "pid12": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType:  IS
        },
        "pid13": {
            required: false,
            length: 40,
            maxReps: -1,
            dataType:  XTN
        },
        "pid14": {
            required: false,
            length: 40,
            maxReps: -1,
            dataType:  XTN
        },
        "pid15": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType:  CE
        },
        "pid16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType:  IS
        },
        "pid17": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType:  IS
        },
        "pid18": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType:  CX
        },
        "pid19": {
            required: false,
            length: 16,
            maxReps: 1,
            dataType:  ST
        },
        "pid20": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType:  DLN
        },
        "pid21": {
            required: false,
            length: 20,
            maxReps: -1,
            dataType:  CX
        },
        "pid22": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType:  IS
        },
        "pid23": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType:  ST
        },
        "pid24": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType:  ID
        },
        "pid25": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType:  NM
        },
        "pid26": {
            required: false,
            length: 4,
            maxReps: -1,
            dataType:  IS
        },
        "pid27": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType:  CE
        },
        "pid28": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: CE
        },
        "pid29": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType:  TS
        },
        "pid30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType:  ID
        }
    }
}
public type PID record {
    *hl7v2:Segment;
    string name = PID_SEGMENT_NAME;
    SI pid1 = -1;
    CX pid2 = {};
    CX[] pid3 = [{}];
    CX[] pid4 = [{}];
    XPN[] pid5 = [{}];
    XPN pid6 = {};
    TS pid7 = {};
    IS pid8 = "";
    XPN[] pid9 = [{}];
    IS pid10 = "";
    XAD[] pid11 = [{}];
    IS pid12 = "";
    XTN[] pid13 = [{}];
    XTN[] pid14 = [{}];
    CE pid15 = {};
    IS pid16 = "";
    IS pid17 = "";
    CX pid18 = {};
    ST pid19 = "";
    DLN pid20 = {};
    CX[] pid21 = [{}];
    IS pid22 = "";
    ST pid23 = "";
    ID pid24 = "";
    NM pid25 = -1;
    IS[] pid26 = [""];
    CE pid27 = {};
    CE pid28 = {};
    TS pid29 = {};
    ID pid30 = "";
};

public const PID_SEGMENT_NAME = "PID";
