
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
# + bpo1 - Segment Record Field
# + bpo2 - Segment Record Field
# + bpo3 - Segment Record Field
# + bpo4 - Segment Record Field
# + bpo5 - Segment Record Field
# + bpo6 - Segment Record Field
# + bpo7 - Segment Record Field
# + bpo8 - Segment Record Field
# + bpo9 - Segment Record Field
# + bpo10 - Segment Record Field
# + bpo11 - Segment Record Field
# + bpo12 - Segment Record Field
# + bpo13 - Segment Record Field
# + bpo14 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "BPO",
    required: false,
    maxReps: 0,
    fields: {
        "bpo1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "bpo2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "bpo3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "bpo4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "bpo5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "bpo6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "bpo7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "bpo8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "bpo9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "bpo10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "bpo11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "bpo12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "bpo13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "bpo14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type BPO record {
    *hl7v2:Segment;
    string name = BPO_SEGMENT_NAME;
    SI bpo1 = "";
    CWE bpo2 = {};
    CWE[] bpo3 = [{}];
    NM bpo4 = "";
    NM bpo5 = "";
    CE bpo6 = {};
    TS bpo7 = {};
    PL bpo8 = {};
    XAD bpo9 = {};
    TS bpo10 = {};
    PL bpo11 = {};
    XAD bpo12 = {};
    CWE[] bpo13 = [{}];
    ID bpo14 = "";
};

public const BPO_SEGMENT_NAME = "BPO";