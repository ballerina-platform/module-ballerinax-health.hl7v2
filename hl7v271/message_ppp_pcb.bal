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
public const PPP_PCB_MESSAGE_TYPE = "PPP_PCB";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + pid - PID Segment
# + patient_visit - PPP_PCB_PATIENT_VISIT Segment Group
# + pathway - PPP_PCB_PATHWAY Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID}
    }
    ,groups: {
        "PPP_PCB_PATIENT_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "PPP_PCB_PATHWAY": {
            maxReps: -1,
            required: true,
            segments: {
                "PTH": {name: "PTH", maxReps: 1, required: true, segmentType: typeof PTH},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "PPP_PCB_PATHWAY_ROLE": {name: "PPP_PCB_PATHWAY_ROLE", maxReps: -1, required: false, segmentType: typeof PPP_PCB_PATHWAY_ROLE},
                "PPP_PCB_PROBLEM": {name: "PPP_PCB_PROBLEM", maxReps: -1, required: false, segmentType: typeof PPP_PCB_PROBLEM}
            }
        }
    }
}
public type PPP_PCB record {
    *hl7v2:Message;
    string name = PPP_PCB_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    PID pid;
    PPP_PCB_PATIENT_VISIT[] patient_visit = [{pv1:{}}];
    PPP_PCB_PATHWAY[] pathway = [{pth:{}}];
};