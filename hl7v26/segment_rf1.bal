
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
# + rf11 - Segment Record Field
# + rf12 - Segment Record Field
# + rf13 - Segment Record Field
# + rf14 - Segment Record Field
# + rf15 - Segment Record Field
# + rf16 - Segment Record Field
# + rf17 - Segment Record Field
# + rf18 - Segment Record Field
# + rf19 - Segment Record Field
# + rf110 - Segment Record Field
# + rf111 - Segment Record Field
# + rf112 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RF1",
    required: false,
    maxReps: 0,
    fields: {
        "rf11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rf12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rf13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rf14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rf15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rf16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rf17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rf18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rf19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rf110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rf111": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "rf112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type RF1 record {
    *hl7v2:Segment;
    string name = RF1_SEGMENT_NAME;
    CWE rf11 = {};
    CWE rf12 = {};
    CWE rf13 = {};
    CWE[] rf14 = [{}];
    CWE rf15 = {};
    EI rf16 = {};
    DTM rf17 = "";
    DTM rf18 = "";
    DTM rf19 = "";
    CWE[] rf110 = [{}];
    EI[] rf111 = [{}];
    CWE rf112 = {};
};

public const RF1_SEGMENT_NAME = "RF1";