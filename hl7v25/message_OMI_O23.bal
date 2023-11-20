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
public const OMI_O23_MESSAGE_TYPE = "OMI_O23";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + patient - OMI_O23_PATIENT Segment Group
# + order - OMI_O23_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMI_O23_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMI_O23_PATIENT_VISIT": {name: "OMI_O23_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMI_O23_PATIENT_VISIT},
                "OMI_O23_INSURANCE": {name: "OMI_O23_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMI_O23_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMI_O23_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OMI_O23_TIMING": {name: "OMI_O23_TIMING", maxReps: -1, required: false, segmentType: typeof OMI_O23_TIMING},
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "OMI_O23_OBSERVATION": {name: "OMI_O23_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OMI_O23_OBSERVATION},
                "IPC": {name: "IPC", maxReps: -1, required: true, segmentType: typeof IPC}
            }
        }
    }
}
public type OMI_O23 record {
    *hl7v2:Message;
    string name = OMI_O23_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE[] nte = [];
    OMI_O23_PATIENT[] patient = [{pid:{}}];
    OMI_O23_ORDER[] 'order = [{orc:{}, obr:{}}];
};