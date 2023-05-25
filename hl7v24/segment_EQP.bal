
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
# + eqp1 - Segment Record Field
# + eqp2 - Segment Record Field
# + eqp3 - Segment Record Field
# + eqp4 - Segment Record Field
# + eqp5 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "EQP",
    required: false,
    maxReps: 0,
    fields: {
        "eqp1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "eqp2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "eqp3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "eqp4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "eqp5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: FT
        }
    }
}
public type EQP record {
    *hl7v2:Segment;
    string name = EQP_SEGMENT_NAME;
    CE eqp1 = {};
    ST eqp2 = "";
    TS eqp3 = {};
    TS eqp4 = {};
    FT eqp5 = "";
};

public const EQP_SEGMENT_NAME = "EQP";