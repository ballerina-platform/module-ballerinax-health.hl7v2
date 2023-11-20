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
public const OMB_O27_MESSAGE_TYPE = "OMB_O27";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + patient - OMB_O27_PATIENT Segment Group
# + order - OMB_O27_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMB_O27_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMB_O27_PATIENT_VISIT": {name: "OMB_O27_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMB_O27_PATIENT_VISIT},
                "OMB_O27_INSURANCE": {name: "OMB_O27_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMB_O27_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMB_O27_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OMB_O27_TIMING": {name: "OMB_O27_TIMING", maxReps: -1, required: false, segmentType: typeof OMB_O27_TIMING},
                "BPO": {name: "BPO", maxReps: 1, required: true, segmentType: typeof BPO},
                "SPM": {name: "SPM", maxReps: 1, required: false, segmentType: typeof SPM},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "OMB_O27_OBSERVATION": {name: "OMB_O27_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OMB_O27_OBSERVATION},
                "FT1": {name: "FT1", maxReps: -1, required: false, segmentType: typeof FT1},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        }
    }
}
public type OMB_O27 record {
    *hl7v2:Message;
    string name = OMB_O27_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE[] nte = [];
    OMB_O27_PATIENT[] patient = [{pid:{}}];
    OMB_O27_ORDER[] 'order = [{orc:{}, bpo:{}}];
};