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
# + pes1 - Sender Organization Name
# + pes2 - Sender Individual Name
# + pes3 - Sender Address
# + pes4 - Sender Telephone
# + pes5 - Sender Event Identifier
# + pes6 - Sender Sequence Number
# + pes7 - Sender Event Description
# + pes8 - Sender Comment
# + pes9 - Sender Aware Date/Time
# + pes10 - Event Report Date
# + pes11 - Event Report Timing/Type
# + pes12 - Event Report Source
# + pes13 - Event Reported To
@hl7v2:SegmentDefinition {
    name: "PES",
    required: false,
    maxReps: 0,
    fields: {
        "pes1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "pes2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pes3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "pes4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pes5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pes6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pes7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "pes8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "pes9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pes10": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pes11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "pes12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pes13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        }
    }
}
public type PES record {
    *hl7v2:Segment;
    string name = PES_SEGMENT_NAME;
    XON pes1 = {};
    XCN[] pes2 = [{}];
    XAD[] pes3 = [{}];
    XTN[] pes4 = [{}];
    EI pes5 = {};
    NM pes6 = "";
    FT[] pes7 = [""];
    FT pes8 = "";
    TS pes9 = {};
    TS pes10 = {};
    ID[] pes11 = [""];
    ID pes12 = "";
    ID[] pes13 = [""];
};

public const PES_SEGMENT_NAME = "PES";