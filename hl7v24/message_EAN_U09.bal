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
public const EAN_U09_MESSAGE_TYPE = "EAN_U09";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + equ - EQU Segment
# + rol - ROL Segment
# + notification - EAN_U09_NOTIFICATION Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "EQU": {name: "EQU", maxReps: 1, required: true, segmentType: EQU},
        "ROL": {name: "ROL", maxReps: 1, required: false, segmentType: ROL}
    }
    ,groups: {
        "EAN_U09_NOTIFICATION": {
            maxReps: -1,
            required: true,
            segments: {
                "NDS": {name: "NDS", maxReps: 1, required: true, segmentType: typeof NDS},
                "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: typeof NTE}
            }
        }
    }
}
public type EAN_U09 record {
    *hl7v2:Message;
    string name = EAN_U09_MESSAGE_TYPE;
    MSH msh;
    EQU equ;
    ROL rol?;
    EAN_U09_NOTIFICATION[] notification = [{nds:{}}];
};