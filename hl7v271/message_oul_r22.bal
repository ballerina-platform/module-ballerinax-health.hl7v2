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
public const OUL_R22_MESSAGE_TYPE = "OUL_R22";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + nk1 - NK1 Segment
# + dsc - DSC Segment
# + patient - OUL_R22_PATIENT Segment Group
# + specimen - OUL_R22_SPECIMEN Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: NTE},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "OUL_R22_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OUL_R22_PATIENT_OBSERVATION": {name: "OUL_R22_PATIENT_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OUL_R22_PATIENT_OBSERVATION},
                "OUL_R22_VISIT": {name: "OUL_R22_VISIT", maxReps: 1, required: false, segmentType: typeof OUL_R22_VISIT}
            }
        },
        "OUL_R22_SPECIMEN": {
            maxReps: -1,
            required: true,
            segments: {
                "SPM": {name: "SPM", maxReps: 1, required: true, segmentType: typeof SPM},
                "OUL_R22_SPECIMEN_OBSERVATION": {name: "OUL_R22_SPECIMEN_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OUL_R22_SPECIMEN_OBSERVATION},
                "OUL_R22_CONTAINER": {name: "OUL_R22_CONTAINER", maxReps: -1, required: false, segmentType: typeof OUL_R22_CONTAINER},
                "OUL_R22_ORDER": {name: "OUL_R22_ORDER", maxReps: -1, required: true, segmentType: typeof OUL_R22_ORDER}
            }
        }
    }
}
public type OUL_R22 record {
    *hl7v2:Message;
    string name = OUL_R22_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE nte?;
    NK1[] nk1 = [];
    DSC dsc?;
    OUL_R22_PATIENT[] patient = [{pid:{}}];
    OUL_R22_SPECIMEN[] specimen = [{spm:{}}];
};