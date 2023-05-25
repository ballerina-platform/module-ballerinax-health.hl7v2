
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
# + drg1 - Segment Record Field
# + drg2 - Segment Record Field
# + drg3 - Segment Record Field
# + drg4 - Segment Record Field
# + drg5 - Segment Record Field
# + drg6 - Segment Record Field
# + drg7 - Segment Record Field
# + drg8 - Segment Record Field
# + drg9 - Segment Record Field
# + drg10 - Segment Record Field
# + drg11 - Segment Record Field
# + drg12 - Segment Record Field
# + drg13 - Segment Record Field
# + drg14 - Segment Record Field
# + drg15 - Segment Record Field
# + drg16 - Segment Record Field
# + drg17 - Segment Record Field
# + drg18 - Segment Record Field
# + drg19 - Segment Record Field
# + drg20 - Segment Record Field
# + drg21 - Segment Record Field
# + drg22 - Segment Record Field
# + drg23 - Segment Record Field
# + drg24 - Segment Record Field
# + drg25 - Segment Record Field
# + drg26 - Segment Record Field
# + drg27 - Segment Record Field
# + drg28 - Segment Record Field
# + drg29 - Segment Record Field
# + drg30 - Segment Record Field
# + drg31 - Segment Record Field
# + drg32 - Segment Record Field
# + drg33 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "DRG",
    required: false,
    maxReps: 0,
    fields: {
        "drg1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "drg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "drg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "drg4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "drg8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "drg10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "drg11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XPN
        },
        "drg13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "drg19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "drg20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "drg33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type DRG record {
    *hl7v2:Segment;
    string name = DRG_SEGMENT_NAME;
    CNE drg1 = {};
    DTM drg2 = "";
    ID drg3 = "";
    IS drg4 = "";
    CWE drg5 = {};
    NM drg6 = "";
    CP drg7 = {};
    IS drg8 = "";
    CP drg9 = {};
    ID drg10 = "";
    IS drg11 = "";
    XPN drg12 = {};
    CWE drg13 = {};
    CWE drg14 = {};
    NM drg15 = "";
    MO drg16 = {};
    IS drg17 = "";
    ST drg18 = "";
    ST drg19 = "";
    IS drg20 = "";
    MO drg21 = {};
    MO drg22 = {};
    MO drg23 = {};
    MO drg24 = {};
    NM drg25 = "";
    IS drg26 = "";
    IS drg27 = "";
    IS drg28 = "";
    IS drg29 = "";
    IS drg30 = "";
    IS drg31 = "";
    IS drg32 = "";
    IS drg33 = "";
};

public const DRG_SEGMENT_NAME = "DRG";