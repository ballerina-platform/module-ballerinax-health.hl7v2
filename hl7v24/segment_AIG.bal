
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
# + aig1 - Segment Record Field
# + aig2 - Segment Record Field
# + aig3 - Segment Record Field
# + aig4 - Segment Record Field
# + aig5 - Segment Record Field
# + aig6 - Segment Record Field
# + aig7 - Segment Record Field
# + aig8 - Segment Record Field
# + aig9 - Segment Record Field
# + aig10 - Segment Record Field
# + aig11 - Segment Record Field
# + aig12 - Segment Record Field
# + aig13 - Segment Record Field
# + aig14 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "AIG",
    required: false,
    maxReps: 0,
    fields: {
        "aig1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "aig2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "aig3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aig4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aig5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "aig6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aig7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aig8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "aig9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aig10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aig11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aig12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aig13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "aig14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type AIG record {
    *hl7v2:Segment;
    string name = AIG_SEGMENT_NAME;
    SI aig1 = "";
    ID aig2 = "";
    CE aig3 = {};
    CE aig4 = {};
    CE[] aig5 = [{}];
    NM aig6 = "";
    CE aig7 = {};
    TS aig8 = {};
    NM aig9 = "";
    CE aig10 = {};
    NM aig11 = "";
    CE aig12 = {};
    IS aig13 = "";
    CE aig14 = {};
};

public const AIG_SEGMENT_NAME = "AIG";