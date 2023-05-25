
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
# + tcc1 - Segment Record Field
# + tcc2 - Segment Record Field
# + tcc3 - Segment Record Field
# + tcc4 - Segment Record Field
# + tcc5 - Segment Record Field
# + tcc6 - Segment Record Field
# + tcc7 - Segment Record Field
# + tcc8 - Segment Record Field
# + tcc9 - Segment Record Field
# + tcc10 - Segment Record Field
# + tcc11 - Segment Record Field
# + tcc12 - Segment Record Field
# + tcc13 - Segment Record Field
# + tcc14 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "TCC",
    required: false,
    maxReps: 0,
    fields: {
        "tcc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "tcc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "tcc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SPS
        },
        "tcc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "tcc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tcc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SN
        },
        "tcc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "tcc14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type TCC record {
    *hl7v2:Segment;
    string name = TCC_SEGMENT_NAME;
    CWE tcc1 = {};
    EI tcc2 = {};
    SPS tcc3 = {};
    SN tcc4 = {};
    SN tcc5 = {};
    SN tcc6 = {};
    SN tcc7 = {};
    NM tcc8 = "";
    ID tcc9 = "";
    ID tcc10 = "";
    ID tcc11 = "";
    SN tcc12 = {};
    CWE tcc13 = {};
    CWE tcc14 = {};
};

public const TCC_SEGMENT_NAME = "TCC";