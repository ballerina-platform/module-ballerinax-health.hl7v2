
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
# + pid1 - Segment Record Field
# + pid2 - Segment Record Field  
# + pid3 - Segment Record Field
# + pid4 - Segment Record Field  
# + pid5 - Segment Record Field  
# + pid6 - Segment Record Field  
# + pid7 - Segment Record Field  
# + pid8 - Segment Record Field  
# + pid9 - Field Description  
# + pid10 - Segment Record Field  
# + pid11 - Segment Record Field  
# + pid12 - Field Description  
# + pid13 - Segment Record Field  
# + pid14 - Segment Record Field  
# + pid15 - Segment Record Field  
# + pid16 - Segment Record Field  
# + pid17 - Segment Record Field  
# + pid18 - Segment Record Field  
# + pid19 - Field Description  
# + pid20 - Field Description  
# + pid21 - Segment Record Field  
# + pid22 - Segment Record Field  
# + pid23 - Segment Record Field  
# + pid24 - Segment Record Field  
# + pid25 - Segment Record Field  
# + pid26 - Segment Record Field  
# + pid27 - Segment Record Field
# + pid28 - Segment Record Field  
# + pid29 - Segment Record Field  
# + pid30 - Segment Record Field  
# + pid31 - Segment Record Field  
# + pid32 - Segment Record Field  
# + pid33 - Segment Record Field  
# + pid34 - Segment Record Field  
# + pid35 - Segment Record Field  
# + pid36 - Segment Record Field  
# + pid37 - Segment Record Field  
# + pid38 - Segment Record Field  
# + pid39 - Segment Record Field  
# + pid40 - Segment Record Field
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
            required: true,
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
            required: true,
            length: 1,
            maxReps: -1,
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
            required: true,
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
