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
# + pid1 - Set ID - PID
# + pid2 - Withdrawn field
# + pid3 - Patient Identifier List
# + pid4 - Withdrawn field
# + pid5 - Patient Name
# + pid6 - Mother's Maiden Name
# + pid7 - Date/Time of Birth
# + pid8 - Administrative Sex
# + pid9 - Withdrawn field
# + pid10 - Race
# + pid11 - Patient Address
# + pid12 - Withdrawn field
# + pid13 - Phone Number - Home
# + pid14 - Phone Number - Business
# + pid15 - Primary Language
# + pid16 - Marital Status
# + pid17 - Religion
# + pid18 - Patient Account Number
# + pid19 - Withdrawn field
# + pid20 - Withdrawn field
# + pid21 - Mother's Identifier
# + pid22 - Ethnic Group
# + pid23 - Birth Place
# + pid24 - Multiple Birth Indicator
# + pid25 - Birth Order
# + pid26 - Citizenship
# + pid27 - Veterans Military Status
# + pid28 - Withdrawn field
# + pid29 - Patient Death Date and Time
# + pid30 - Patient Death Indicator
# + pid31 - Identity Unknown Indicator
# + pid32 - Identity Reliability Code
# + pid33 - Last Update Date/Time
# + pid34 - Last Update Facility
# + pid35 - Species Code
# + pid36 - Breed Code
# + pid37 - Strain
# + pid38 - Production Class Code
# + pid39 - Tribal Citizenship
# + pid40 - Patient Telecommunication Information
@hl7v2:SegmentDefinition {
    name: "PID",
    required: false,
    maxReps: 0,
    fields: {
        "pid1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pid2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid5": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pid8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "pid12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pid14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pid15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pid19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pid26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pid30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid32": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pid34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "pid35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid38": {
            required: false,
            length: 1,
            maxReps: 2,
            dataType: CWE
        },
        "pid39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid40": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type PID record {
    *hl7v2:Segment;
    string name = PID_SEGMENT_NAME;
    SI pid1 = "";
    ST pid2 = "";
    CX[] pid3 = [{}];
    ST pid4 = "";
    XPN[] pid5 = [{}];
    XPN[] pid6 = [{}];
    DTM pid7 = "";
    CWE pid8 = {};
    ST pid9 = "";
    CWE[] pid10 = [{}];
    XAD[] pid11 = [{}];
    ST pid12 = "";
    XTN[] pid13 = [{}];
    XTN[] pid14 = [{}];
    CWE pid15 = {};
    CWE pid16 = {};
    CWE pid17 = {};
    CX pid18 = {};
    ST pid19 = "";
    ST pid20 = "";
    CX[] pid21 = [{}];
    CWE[] pid22 = [{}];
    ST pid23 = "";
    ID pid24 = "";
    NM pid25 = "";
    CWE[] pid26 = [{}];
    CWE pid27 = {};
    ST pid28 = "";
    DTM pid29 = "";
    ID pid30 = "";
    ID pid31 = "";
    CWE[] pid32 = [{}];
    DTM pid33 = "";
    HD pid34 = {};
    CWE pid35 = {};
    CWE pid36 = {};
    ST pid37 = "";
    CWE pid38 = {};
    CWE[] pid39 = [{}];
    XTN[] pid40 = [{}];
};

public const PID_SEGMENT_NAME = "PID";
