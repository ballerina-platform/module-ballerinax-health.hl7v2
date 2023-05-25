
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
# + arq1 - Segment Record Field
# + arq2 - Segment Record Field
# + arq3 - Segment Record Field
# + arq4 - Segment Record Field
# + arq5 - Segment Record Field
# + arq6 - Segment Record Field
# + arq7 - Segment Record Field
# + arq8 - Segment Record Field
# + arq9 - Segment Record Field
# + arq10 - Segment Record Field
# + arq11 - Segment Record Field
# + arq12 - Segment Record Field
# + arq13 - Segment Record Field
# + arq14 - Segment Record Field
# + arq15 - Segment Record Field
# + arq16 - Segment Record Field
# + arq17 - Segment Record Field
# + arq18 - Segment Record Field
# + arq19 - Segment Record Field
# + arq20 - Segment Record Field
# + arq21 - Segment Record Field
# + arq22 - Segment Record Field
# + arq23 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ARQ",
    required: false,
    maxReps: 0,
    fields: {
        "arq1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "arq4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "arq6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "arq7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "arq8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "arq9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "arq10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "arq11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DR
        },
        "arq12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "arq13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: RI
        },
        "arq14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "arq15": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "arq16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "arq17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "arq18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "arq19": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "arq20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "arq21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "arq22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "arq23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        }
    }
}
public type ARQ record {
    *hl7v2:Segment;
    string name = ARQ_SEGMENT_NAME;
    EI arq1 = {};
    EI arq2 = {};
    NM arq3 = "";
    EI arq4 = {};
    CE arq5 = {};
    CE arq6 = {};
    CE arq7 = {};
    CE arq8 = {};
    NM arq9 = "";
    CE arq10 = {};
    DR[] arq11 = [{}];
    ST arq12 = "";
    RI arq13 = {};
    ST arq14 = "";
    XCN[] arq15 = [{}];
    XTN[] arq16 = [{}];
    XAD[] arq17 = [{}];
    PL arq18 = {};
    XCN[] arq19 = [{}];
    XTN[] arq20 = [{}];
    PL arq21 = {};
    EI arq22 = {};
    EI arq23 = {};
};

public const ARQ_SEGMENT_NAME = "ARQ";