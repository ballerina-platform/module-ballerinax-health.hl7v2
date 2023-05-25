
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
# + prc1 - Segment Record Field
# + prc2 - Segment Record Field
# + prc3 - Segment Record Field
# + prc4 - Segment Record Field
# + prc5 - Segment Record Field
# + prc6 - Segment Record Field
# + prc7 - Segment Record Field
# + prc8 - Segment Record Field
# + prc9 - Segment Record Field
# + prc10 - Segment Record Field
# + prc11 - Segment Record Field
# + prc12 - Segment Record Field
# + prc13 - Segment Record Field
# + prc14 - Segment Record Field
# + prc15 - Segment Record Field
# + prc16 - Segment Record Field
# + prc17 - Segment Record Field
# + prc18 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PRC",
    required: false,
    maxReps: 0,
    fields: {
        "prc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prc2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prc3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prc4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prc5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CP
        },
        "prc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "prc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "prc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "prc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prc14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prc16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prc17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "prc18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type PRC record {
    *hl7v2:Segment;
    string name = PRC_SEGMENT_NAME;
    CWE prc1 = {};
    CWE[] prc2 = [{}];
    CWE[] prc3 = [{}];
    CWE[] prc4 = [{}];
    CP[] prc5 = [{}];
    ST[] prc6 = [""];
    NM prc7 = "";
    NM prc8 = "";
    MO prc9 = {};
    MO prc10 = {};
    DTM prc11 = "";
    DTM prc12 = "";
    CWE prc13 = {};
    CWE[] prc14 = [{}];
    ID prc15 = "";
    ID prc16 = "";
    MO prc17 = {};
    CWE prc18 = {};
};

public const PRC_SEGMENT_NAME = "PRC";