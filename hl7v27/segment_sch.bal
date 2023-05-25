
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
# + sch1 - Segment Record Field
# + sch2 - Segment Record Field
# + sch3 - Segment Record Field
# + sch4 - Segment Record Field
# + sch5 - Segment Record Field
# + sch6 - Segment Record Field
# + sch7 - Segment Record Field
# + sch8 - Segment Record Field
# + sch10 - Segment Record Field
# + sch12 - Segment Record Field
# + sch13 - Segment Record Field
# + sch14 - Segment Record Field
# + sch15 - Segment Record Field
# + sch16 - Segment Record Field
# + sch17 - Segment Record Field
# + sch18 - Segment Record Field
# + sch19 - Segment Record Field
# + sch20 - Segment Record Field
# + sch21 - Segment Record Field
# + sch22 - Segment Record Field
# + sch23 - Segment Record Field
# + sch24 - Segment Record Field
# + sch25 - Segment Record Field
# + sch26 - Segment Record Field
# + sch27 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "SCH",
    required: false,
    maxReps: 0,
    fields: {
        "sch1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sch2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sch3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "sch4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sch5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sch6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sch7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sch8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sch10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "sch12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "sch13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "sch14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "sch15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "sch16": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "sch17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "sch18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "sch19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "sch20": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "sch21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "sch22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "sch23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sch24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "sch25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "sch26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "sch27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        }
    }
}
public type SCH record {
    *hl7v2:Segment;
    string name = SCH_SEGMENT_NAME;
    EI sch1 = {};
    EI sch2 = {};
    NM sch3 = "";
    EI sch4 = {};
    CWE sch5 = {};
    CWE sch6 = {};
    CWE sch7 = {};
    CWE sch8 = {};
    CNE sch10 = {};
    XCN[] sch12 = [{}];
    XTN sch13 = {};
    XAD[] sch14 = [{}];
    PL sch15 = {};
    XCN[] sch16 = [{}];
    XTN sch17 = {};
    XAD[] sch18 = [{}];
    PL sch19 = {};
    XCN[] sch20 = [{}];
    XTN[] sch21 = [{}];
    PL sch22 = {};
    EI sch23 = {};
    EI sch24 = {};
    CWE sch25 = {};
    EI[] sch26 = [{}];
    EI[] sch27 = [{}];
};

public const SCH_SEGMENT_NAME = "SCH";