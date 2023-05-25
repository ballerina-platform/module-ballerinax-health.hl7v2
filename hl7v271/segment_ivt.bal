
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
# + ivt1 - Segment Record Field
# + ivt2 - Segment Record Field
# + ivt3 - Segment Record Field
# + ivt4 - Segment Record Field
# + ivt5 - Segment Record Field
# + ivt6 - Segment Record Field
# + ivt7 - Segment Record Field
# + ivt8 - Segment Record Field
# + ivt9 - Segment Record Field
# + ivt10 - Segment Record Field
# + ivt11 - Segment Record Field
# + ivt12 - Segment Record Field
# + ivt13 - Segment Record Field
# + ivt14 - Segment Record Field
# + ivt15 - Segment Record Field
# + ivt16 - Segment Record Field
# + ivt17 - Segment Record Field
# + ivt18 - Segment Record Field
# + ivt19 - Segment Record Field
# + ivt20 - Segment Record Field
# + ivt21 - Segment Record Field
# + ivt22 - Segment Record Field
# + ivt23 - Segment Record Field
# + ivt24 - Segment Record Field
# + ivt25 - Segment Record Field
# + ivt26 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "IVT",
    required: false,
    maxReps: 0,
    fields: {
        "ivt1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ivt2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivt4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivt6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "ivt8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivt14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivt19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "ivt20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        }
    }
}
public type IVT record {
    *hl7v2:Segment;
    string name = IVT_SEGMENT_NAME;
    SI ivt1 = "";
    EI ivt2 = {};
    ST ivt3 = "";
    EI ivt4 = {};
    ST ivt5 = "";
    CWE ivt6 = {};
    EI[] ivt7 = [{}];
    CWE ivt8 = {};
    CWE ivt9 = {};
    EI ivt10 = {};
    CNE ivt11 = {};
    CWE ivt12 = {};
    CP ivt13 = {};
    CWE ivt14 = {};
    CNE ivt15 = {};
    CNE ivt16 = {};
    CNE ivt17 = {};
    CP ivt18 = {};
    EI[] ivt19 = [{}];
    EI ivt20 = {};
    CWE ivt21 = {};
    NM ivt22 = "";
    NM ivt23 = "";
    NM ivt24 = "";
    NM ivt25 = "";
    CNE ivt26 = {};
};

public const IVT_SEGMENT_NAME = "IVT";