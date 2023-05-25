
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
# + itm1 - Segment Record Field
# + itm2 - Segment Record Field
# + itm3 - Segment Record Field
# + itm4 - Segment Record Field
# + itm5 - Segment Record Field
# + itm6 - Segment Record Field
# + itm7 - Segment Record Field
# + itm8 - Segment Record Field
# + itm9 - Segment Record Field
# + itm10 - Segment Record Field
# + itm11 - Segment Record Field
# + itm12 - Segment Record Field
# + itm13 - Segment Record Field
# + itm14 - Segment Record Field
# + itm15 - Segment Record Field
# + itm16 - Segment Record Field
# + itm17 - Segment Record Field
# + itm18 - Segment Record Field
# + itm19 - Segment Record Field
# + itm20 - Segment Record Field
# + itm21 - Segment Record Field
# + itm22 - Segment Record Field
# + itm23 - Segment Record Field
# + itm24 - Segment Record Field
# + itm25 - Segment Record Field
# + itm26 - Segment Record Field
# + itm27 - Segment Record Field
# + itm28 - Segment Record Field
# + itm29 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "ITM",
    required: false,
    maxReps: 0,
    fields: {
        "itm1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "itm14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "itm17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "itm19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "itm21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "itm22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "itm29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type ITM record {
    *hl7v2:Segment;
    string name = ITM_SEGMENT_NAME;
    EI itm1 = {};
    ST itm2 = "";
    CWE itm3 = {};
    CWE itm4 = {};
    CWE itm5 = {};
    CNE itm6 = {};
    EI itm7 = {};
    ST itm8 = "";
    ST itm9 = "";
    CWE itm10 = {};
    CNE itm11 = {};
    CWE itm12 = {};
    CP itm13 = {};
    CNE itm14 = {};
    CWE itm15 = {};
    XON[] itm16 = [{}];
    CNE itm17 = {};
    CWE[] itm18 = [{}];
    CWE itm19 = {};
    NM itm20 = "";
    MO itm21 = {};
    CNE itm22 = {};
    CNE itm23 = {};
    CNE itm24 = {};
    EI itm25 = {};
    CNE itm26 = {};
    CNE itm27 = {};
    CNE[] itm28 = [{}];
    CWE itm29 = {};
};

public const ITM_SEGMENT_NAME = "ITM";