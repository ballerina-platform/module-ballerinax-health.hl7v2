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
# + equ1 - Equipment Instance Identifier
# + equ2 - Event Date/Time
# + equ3 - Equipment State
# + equ4 - Local/Remote Control State
# + equ5 - Alert Level
@hl7v2:SegmentDefinition {
    name: "EQU",
    required: false,
    maxReps: 0,
    fields: {
        "equ1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "equ2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "equ3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "equ4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "equ5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type EQU record {
    *hl7v2:Segment;
    string name = EQU_SEGMENT_NAME;
    EI equ1 = {};
    DTM equ2 = "";
    CWE equ3 = {};
    CWE equ4 = {};
    CWE equ5 = {};
};

public const EQU_SEGMENT_NAME = "EQU";