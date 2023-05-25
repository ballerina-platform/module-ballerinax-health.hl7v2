
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
# + prb1 - Segment Record Field
# + prb2 - Segment Record Field
# + prb3 - Segment Record Field
# + prb4 - Segment Record Field
# + prb5 - Segment Record Field
# + prb6 - Segment Record Field
# + prb7 - Segment Record Field
# + prb8 - Segment Record Field
# + prb9 - Segment Record Field
# + prb10 - Segment Record Field
# + prb11 - Segment Record Field
# + prb12 - Segment Record Field
# + prb13 - Segment Record Field
# + prb14 - Segment Record Field
# + prb15 - Segment Record Field
# + prb16 - Segment Record Field
# + prb17 - Segment Record Field
# + prb18 - Segment Record Field
# + prb19 - Segment Record Field
# + prb20 - Segment Record Field
# + prb21 - Segment Record Field
# + prb22 - Segment Record Field
# + prb23 - Segment Record Field
# + prb24 - Segment Record Field
# + prb25 - Segment Record Field
# + prb26 - Segment Record Field
# + prb27 - Segment Record Field
# + prb28 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PRB",
    required: false,
    maxReps: 0,
    fields: {
        "prb1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prb2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "prb5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "prb6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prb7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prb12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "prb18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prb21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "prb25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        }
    }
}
public type PRB record {
    *hl7v2:Segment;
    string name = PRB_SEGMENT_NAME;
    ID prb1 = "";
    DTM prb2 = "";
    CWE prb3 = {};
    EI prb4 = {};
    EI prb5 = {};
    NM prb6 = "";
    DTM prb7 = "";
    DTM prb8 = "";
    DTM prb9 = "";
    CWE prb10 = {};
    CWE[] prb11 = [{}];
    CWE prb12 = {};
    CWE prb13 = {};
    CWE prb14 = {};
    DTM prb15 = "";
    DTM prb16 = "";
    ST prb17 = "";
    CWE prb18 = {};
    CWE prb19 = {};
    NM prb20 = "";
    CWE prb21 = {};
    CWE prb22 = {};
    CWE prb23 = {};
    ST prb24 = "";
    CWE prb25 = {};
    CWE prb26 = {};
    CWE prb27 = {};
    CNE prb28 = {};
};

public const PRB_SEGMENT_NAME = "PRB";