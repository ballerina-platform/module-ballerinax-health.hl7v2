
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
# + abs1 - Segment Record Field
# + abs2 - Segment Record Field
# + abs3 - Segment Record Field
# + abs4 - Segment Record Field
# + abs5 - Segment Record Field
# + abs6 - Segment Record Field
# + abs7 - Segment Record Field
# + abs8 - Segment Record Field
# + abs9 - Segment Record Field
# + abs10 - Segment Record Field
# + abs11 - Segment Record Field
# + abs12 - Segment Record Field
# + abs13 - Segment Record Field
# + abs14 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ABS",
    required: false,
    maxReps: 0,
    fields: {
        "abs1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "abs2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "abs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "abs4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "abs5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "abs6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "abs7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "abs8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "abs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "abs10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "abs11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "abs12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "abs13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "abs14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type ABS record {
    *hl7v2:Segment;
    string name = ABS_SEGMENT_NAME;
    XCN abs1 = {};
    CE abs2 = {};
    CE abs3 = {};
    TS abs4 = {};
    XCN abs5 = {};
    CE abs6 = {};
    TS abs7 = {};
    XCN abs8 = {};
    CE abs9 = {};
    ID abs10 = "";
    CE abs11 = {};
    NM abs12 = "";
    CE abs13 = {};
    ID abs14 = "";
};

public const ABS_SEGMENT_NAME = "ABS";