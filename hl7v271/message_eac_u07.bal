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
public const EAC_U07_MESSAGE_TYPE = "EAC_U07";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + equ - EQU Segment
# + rol - ROL Segment
# + command - EAC_U07_COMMAND Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EQU": {name: "EQU", maxReps: 1, required: true, segmentType: EQU},
        "ROL": {name: "ROL", maxReps: 1, required: false, segmentType: ROL}
    }
    ,groups: {
        "EAC_U07_COMMAND": {
            maxReps: -1,
            required: true,
            segments: {
                "ECD": {name: "ECD", maxReps: 1, required: true, segmentType: typeof ECD},
                "TQ1": {name: "TQ1", maxReps: 1, required: false, segmentType: typeof TQ1},
                "EAC_U07_SPECIMEN_CONTAINER": {name: "EAC_U07_SPECIMEN_CONTAINER", maxReps: 1, required: false, segmentType: typeof EAC_U07_SPECIMEN_CONTAINER},
                "CNS": {name: "CNS", maxReps: 1, required: false, segmentType: typeof CNS}
            }
        }
    }
}
public type EAC_U07 record {
    *hl7v2:Message;
    string name = EAC_U07_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EQU equ;
    ROL rol?;
    EAC_U07_COMMAND[] command = [{ecd:{}}];
};