
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
# + cdm1 - Segment Record Field
# + cdm2 - Segment Record Field
# + cdm3 - Segment Record Field
# + cdm4 - Segment Record Field
# + cdm5 - Segment Record Field
# + cdm6 - Segment Record Field
# + cdm7 - Segment Record Field
# + cdm8 - Segment Record Field
# + cdm9 - Segment Record Field
# + cdm10 - Segment Record Field
# + cdm11 - Segment Record Field
# + cdm12 - Segment Record Field
# + cdm13 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "CDM",
    required: false,
    maxReps: 0,
    fields: {
        "cdm1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cdm2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cdm3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cdm4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cdm5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cdm6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cdm7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "cdm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "cdm9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cdm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "cdm11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "cdm12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "cdm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type CDM record {
    *hl7v2:Segment;
    string name = CDM_SEGMENT_NAME;
    CWE cdm1 = {};
    CWE[] cdm2 = [{}];
    ST cdm3 = "";
    ST cdm4 = "";
    CWE cdm5 = {};
    CWE[] cdm6 = [{}];
    CNE[] cdm7 = [{}];
    ID cdm8 = "";
    CWE[] cdm9 = [{}];
    NM cdm10 = "";
    CX[] cdm11 = [{}];
    XON[] cdm12 = [{}];
    ID cdm13 = "";
};

public const CDM_SEGMENT_NAME = "CDM";