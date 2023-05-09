
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
# + cm01 - Segment Record Field
# + cm02 - Segment Record Field
# + cm03 - Segment Record Field
# + cm04 - Segment Record Field
# + cm05 - Segment Record Field
# + cm06 - Segment Record Field
# + cm07 - Segment Record Field
# + cm08 - Segment Record Field
# + cm09 - Segment Record Field
# + cm010 - Segment Record Field
# + cm011 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "CM0",
    required: false,
    maxReps: 0,
    fields: {
        "cm01": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "cm02": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "cm03": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "cm04": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cm05": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "cm06": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "cm07": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "cm08": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "cm09": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "cm010": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "cm011": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        }
    }
}
public type CM0 record {
    *hl7v2:Segment;
    string name = CM0_SEGMENT_NAME;
    SI cm01 = -1;
    EI cm02 = {};
    CE[] cm03 = [{}];
    ST cm04 = "";
    XCN cm05 = {};
    DT cm06 = "";
    NM cm07 = -1;
    DT cm08 = "";
    XCN cm09 = {};
    XTN cm010 = {};
    XAD cm011 = {};
};

public const CM0_SEGMENT_NAME = "CM0";
