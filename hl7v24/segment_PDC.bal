
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
# + pdc1 - Segment Record Field
# + pdc2 - Segment Record Field
# + pdc3 - Segment Record Field
# + pdc4 - Segment Record Field
# + pdc5 - Segment Record Field
# + pdc6 - Segment Record Field
# + pdc7 - Segment Record Field
# + pdc8 - Segment Record Field
# + pdc9 - Segment Record Field
# + pdc10 - Segment Record Field
# + pdc11 - Segment Record Field
# + pdc12 - Segment Record Field
# + pdc13 - Segment Record Field
# + pdc14 - Segment Record Field
# + pdc15 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PDC",
    required: false,
    maxReps: 0,
    fields: {
        "pdc1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pdc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pdc3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pdc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pdc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pdc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pdc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pdc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pdc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pdc14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "pdc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type PDC record {
    *hl7v2:Segment;
    string name = PDC_SEGMENT_NAME;
    XON[] pdc1 = [{}];
    CE pdc2 = {};
    ST pdc3 = "";
    ST pdc4 = "";
    CE pdc5 = {};
    ST[] pdc6 = [""];
    ST pdc7 = "";
    ST[] pdc8 = [""];
    CE pdc9 = {};
    ID pdc10 = "";
    ST pdc11 = "";
    CQ pdc12 = {};
    CQ pdc13 = {};
    TS pdc14 = {};
    TS pdc15 = {};
};

public const PDC_SEGMENT_NAME = "PDC";