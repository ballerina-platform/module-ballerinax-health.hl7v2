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
public const SSU_U03_MESSAGE_TYPE = "SSU_U03";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + equ - EQU Segment
# + rol - ROL Segment
# + specimen_container - SSU_U03_SPECIMEN_CONTAINER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EQU": {name: "EQU", maxReps: 1, required: true, segmentType: EQU},
        "ROL": {name: "ROL", maxReps: 1, required: false, segmentType: ROL}
    }
    ,groups: {
        "SSU_U03_SPECIMEN_CONTAINER": {
            maxReps: -1,
            required: true,
            segments: {
                "SAC": {name: "SAC", maxReps: 1, required: true, segmentType: typeof SAC},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX},
                "SSU_U03_SPECIMEN": {name: "SSU_U03_SPECIMEN", maxReps: -1, required: false, segmentType: typeof SSU_U03_SPECIMEN}
            }
        }
    }
}
public type SSU_U03 record {
    *hl7v2:Message;
    string name = SSU_U03_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EQU equ;
    ROL rol?;
    SSU_U03_SPECIMEN_CONTAINER[] specimen_container = [{sac:{}}];
};