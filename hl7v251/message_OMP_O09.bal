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
public const OMP_O09_MESSAGE_TYPE = "OMP_O09";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + patient - OMP_O09_PATIENT Segment Group
# + order - OMP_O09_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMP_O09_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMP_O09_PATIENT_VISIT": {name: "OMP_O09_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMP_O09_PATIENT_VISIT},
                "OMP_O09_INSURANCE": {name: "OMP_O09_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMP_O09_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMP_O09_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OMP_O09_TIMING": {name: "OMP_O09_TIMING", maxReps: -1, required: false, segmentType: typeof OMP_O09_TIMING},
                "RXO": {name: "RXO", maxReps: 1, required: true, segmentType: typeof RXO},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "RXR": {name: "RXR", maxReps: -1, required: true, segmentType: typeof RXR},
                "OMP_O09_COMPONENT": {name: "OMP_O09_COMPONENT", maxReps: -1, required: false, segmentType: typeof OMP_O09_COMPONENT},
                "OMP_O09_OBSERVATION": {name: "OMP_O09_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OMP_O09_OBSERVATION},
                "FT1": {name: "FT1", maxReps: -1, required: false, segmentType: typeof FT1},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        }
    }
}
public type OMP_O09 record {
    *hl7v2:Message;
    string name = OMP_O09_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE[] nte = [];
    OMP_O09_PATIENT[] patient = [{pid:{}}];
    OMP_O09_ORDER[] 'order = [{orc:{}, rxo:{}}];
};