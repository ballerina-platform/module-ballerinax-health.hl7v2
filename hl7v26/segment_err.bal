
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
# + err1 - Segment Record Field
# + err2 - Segment Record Field
# + err3 - Segment Record Field
# + err4 - Segment Record Field
# + err5 - Segment Record Field
# + err6 - Segment Record Field
# + err7 - Segment Record Field
# + err8 - Segment Record Field
# + err9 - Segment Record Field
# + err10 - Segment Record Field
# + err11 - Segment Record Field
# + err12 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ERR",
    required: false,
    maxReps: 0,
    fields: {
        "err1": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ELD
        },
        "err2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ERL
        },
        "err3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "err4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "err5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "err6": {
            required: false,
            length: 1,
            maxReps: 10,
            dataType: ST
        },
        "err7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "err8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "err9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "err10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "err11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "err12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type ERR record {
    *hl7v2:Segment;
    string name = ERR_SEGMENT_NAME;
    ELD[] err1 = [{}];
    ERL[] err2 = [{}];
    CWE err3 = {};
    ID err4 = "";
    CWE err5 = {};
    ST err6 = "";
    TX err7 = "";
    TX err8 = "";
    IS[] err9 = [""];
    CWE err10 = {};
    CWE[] err11 = [{}];
    XTN[] err12 = [{}];
};

public const ERR_SEGMENT_NAME = "ERR";