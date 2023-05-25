
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
# + iam1 - Segment Record Field
# + iam2 - Segment Record Field
# + iam3 - Segment Record Field
# + iam4 - Segment Record Field
# + iam5 - Segment Record Field
# + iam6 - Segment Record Field
# + iam7 - Segment Record Field
# + iam8 - Segment Record Field
# + iam9 - Segment Record Field
# + iam10 - Segment Record Field
# + iam11 - Segment Record Field
# + iam12 - Segment Record Field
# + iam13 - Segment Record Field
# + iam14 - Segment Record Field
# + iam15 - Segment Record Field
# + iam16 - Segment Record Field
# + iam17 - Segment Record Field
# + iam18 - Segment Record Field
# + iam19 - Segment Record Field
# + iam20 - Segment Record Field
# + iam21 - Segment Record Field
# + iam22 - Segment Record Field
# + iam23 - Segment Record Field
# + iam24 - Segment Record Field
# + iam25 - Segment Record Field
# + iam26 - Segment Record Field
# + iam27 - Segment Record Field
# + iam28 - Segment Record Field
# + iam29 - Segment Record Field
# + iam30 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "IAM",
    required: false,
    maxReps: 0,
    fields: {
        "iam1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "iam2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "iam6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "iam7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "iam8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "iam9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "iam12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "iam13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iam14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XPN
        },
        "iam15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "iam19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "iam20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iam21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "iam22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iam23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "iam24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iam25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "iam26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "iam27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "iam28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "iam29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "iam30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        }
    }
}
public type IAM record {
    *hl7v2:Segment;
    string name = IAM_SEGMENT_NAME;
    SI iam1 = "";
    CWE iam2 = {};
    CWE iam3 = {};
    CWE iam4 = {};
    ST[] iam5 = [""];
    CNE iam6 = {};
    EI iam7 = {};
    ST iam8 = "";
    CWE iam9 = {};
    CWE iam10 = {};
    DT iam11 = "";
    ST iam12 = "";
    DTM iam13 = "";
    XPN iam14 = {};
    CWE iam15 = {};
    CWE iam16 = {};
    CWE iam17 = {};
    XCN iam18 = {};
    XON iam19 = {};
    DTM iam20 = "";
    XCN iam21 = {};
    DTM iam22 = "";
    XCN iam23 = {};
    DTM iam24 = "";
    XCN iam25 = {};
    DTM iam26 = "";
    CWE iam27 = {};
    XON iam28 = {};
    XON iam29 = {};
    XON iam30 = {};
};

public const IAM_SEGMENT_NAME = "IAM";