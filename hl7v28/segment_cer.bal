
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
# + cer1 - Segment Record Field
# + cer2 - Segment Record Field
# + cer3 - Segment Record Field
# + cer4 - Segment Record Field
# + cer5 - Segment Record Field
# + cer6 - Segment Record Field
# + cer7 - Segment Record Field
# + cer8 - Segment Record Field
# + cer9 - Segment Record Field
# + cer10 - Segment Record Field
# + cer11 - Segment Record Field
# + cer12 - Segment Record Field
# + cer13 - Segment Record Field
# + cer14 - Segment Record Field
# + cer15 - Segment Record Field
# + cer16 - Segment Record Field
# + cer17 - Segment Record Field
# + cer18 - Segment Record Field
# + cer19 - Segment Record Field
# + cer20 - Segment Record Field
# + cer21 - Segment Record Field
# + cer22 - Segment Record Field
# + cer23 - Segment Record Field
# + cer24 - Segment Record Field
# + cer25 - Segment Record Field
# + cer26 - Segment Record Field
# + cer27 - Segment Record Field
# + cer28 - Segment Record Field
# + cer29 - Segment Record Field
# + cer30 - Segment Record Field
# + cer31 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "CER",
    required: false,
    maxReps: 0,
    fields: {
        "cer1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "cer2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cer3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cer4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "cer5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "cer6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ED
        },
        "cer7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "cer8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "cer13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cer14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cer15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "cer18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cer19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "cer20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cer23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "cer30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cer31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type CER record {
    *hl7v2:Segment;
    string name = CER_SEGMENT_NAME;
    SI cer1 = "";
    ST cer2 = "";
    ST cer3 = "";
    XON cer4 = {};
    XCN cer5 = {};
    ED cer6 = {};
    ID cer7 = "";
    CWE cer8 = {};
    CWE cer9 = {};
    CWE cer10 = {};
    CWE cer11 = {};
    EI cer12 = {};
    ST cer13 = "";
    CWE[] cer14 = [{}];
    CWE cer15 = {};
    CWE cer16 = {};
    ID cer17 = "";
    CWE[] cer18 = [{}];
    ID cer19 = "";
    CWE cer20 = {};
    CWE cer21 = {};
    CWE[] cer22 = [{}];
    DTM cer23 = "";
    DTM cer24 = "";
    DTM cer25 = "";
    DTM cer26 = "";
    DTM cer27 = "";
    DTM cer28 = "";
    DTM cer29 = "";
    CWE cer30 = {};
    CWE cer31 = {};
};

public const CER_SEGMENT_NAME = "CER";