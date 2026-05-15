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

# PID segment. Patient Identification The PID segment is used by all applications as the primary means of communicating patient identification information. This segment contains permanent patient identifying, and demographic information that, for the most part, is not likely to ...
# + name - Segment Name
# + pid1 - Set Id - Patient Id
# + pid2 - Patient Id (external Id)
# + pid3 - Patient Id (internal Id)
# + pid4 - Alternate Patient Id
# + pid5 - Patient Name
# + pid6 - Mother s Maiden Name
# + pid7 - Date Of Birth
# + pid8 - Sex
# + pid9 - Patient Alias
# + pid10 - Race
# + pid11 - Patient Address
# + pid12 - County Code
# + pid13 - Phone Number - Home
# + pid14 - Phone Number - Business
# + pid15 - Language - Patient
# + pid16 - Marital Status
# + pid17 - Religion
# + pid18 - Patient Account Number
# + pid19 - Social Security Number - Patient
# + pid20 - Driver s License Number - Patient
# + pid21 - Mother s Identifier
# + pid22 - Ethnic Group
# + pid23 - Birth Place
# + pid24 - Multiple Birth Indicator
# + pid25 - Birth Order
# + pid26 - Citizenship
# + pid27 - Veterans Military Status

@hl7v2:SegmentDefinition {
    name: "PID",
    required: false,
    maxReps: 0,
    fields: {
        "pid1": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: SI
        },
        "pid2": {
            required: false,
            length: 16,
            maxReps: 1,
            dataType: CK
        },
        "pid3": {
            required: true,
            length: 20,
            maxReps: -1,
            dataType: CM_PAT_ID
        },
        "pid4": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: ST
        },
        "pid5": {
            required: true,
            length: 48,
            maxReps: 1,
            dataType: PN
        },
        "pid6": {
            required: false,
            length: 30,
            maxReps: 1,
            dataType: ST
        },
        "pid7": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "pid8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid9": {
            required: false,
            length: 48,
            maxReps: -1,
            dataType: PN
        },
        "pid10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid11": {
            required: false,
            length: 106,
            maxReps: 3,
            dataType: AD
        },
        "pid12": {
            required: false,
            length: 4,
            maxReps: 1,
            dataType: ST
        },
        "pid13": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "pid14": {
            required: false,
            length: 40,
            maxReps: 3,
            dataType: TN
        },
        "pid15": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: ST
        },
        "pid16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid17": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: ID
        },
        "pid18": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CK
        },
        "pid19": {
            required: false,
            length: 16,
            maxReps: 1,
            dataType: ST
        },
        "pid20": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: CM_LICENSE_NO
        },
        "pid21": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: CK
        },
        "pid22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid23": {
            required: false,
            length: 25,
            maxReps: 1,
            dataType: ST
        },
        "pid24": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "pid25": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: NM
        },
        "pid26": {
            required: false,
            length: 3,
            maxReps: -1,
            dataType: ID
        },
        "pid27": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        }

    }
}
public type PID record {
    *hl7v2:Segment;
    string name = PID_SEGMENT_NAME;
    SI pid1 = "";
    CK pid2 = {};
    CM_PAT_ID[] pid3 = [{}];
    ST pid4 = "";
    PN pid5 = {};
    ST pid6 = "";
    TS pid7 = {};
    ID pid8 = "";
    PN[] pid9 = [{}];
    ID pid10 = "";
    AD pid11 = {};
    ST pid12 = "";
    TN pid13 = "";
    TN pid14 = "";
    ST pid15 = "";
    ID pid16 = "";
    ID pid17 = "";
    CK pid18 = {};
    ST pid19 = "";
    CM_LICENSE_NO pid20 = {};
    CK pid21 = {};
    ID pid22 = "";
    ST pid23 = "";
    ID pid24 = "";
    NM pid25 = "";
    ID[] pid26 = [""];
    CE pid27 = {};
};

public const PID_SEGMENT_NAME = "PID";
