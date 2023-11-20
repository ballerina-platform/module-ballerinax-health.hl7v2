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
public const OML_O35_MESSAGE_TYPE = "OML_O35";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + patient - OML_O35_PATIENT Segment Group
# + specimen - OML_O35_SPECIMEN Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OML_O35_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: typeof NK1},
                "OML_O35_PATIENT_VISIT": {name: "OML_O35_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OML_O35_PATIENT_VISIT},
                "OML_O35_INSURANCE": {name: "OML_O35_INSURANCE", maxReps: -1, required: false, segmentType: typeof OML_O35_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OML_O35_SPECIMEN": {
            maxReps: -1,
            required: true,
            segments: {
                "SPM": {name: "SPM", maxReps: 1, required: true, segmentType: typeof SPM},
                "OML_O35_SPECIMEN_OBSERVATION": {name: "OML_O35_SPECIMEN_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OML_O35_SPECIMEN_OBSERVATION},
                "OML_O35_SPECIMEN_CONTAINER": {name: "OML_O35_SPECIMEN_CONTAINER", maxReps: -1, required: true, segmentType: typeof OML_O35_SPECIMEN_CONTAINER}
            }
        }
    }
}
public type OML_O35 record {
    *hl7v2:Message;
    string name = OML_O35_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    OML_O35_PATIENT[] patient = [{pid:{}}];
    OML_O35_SPECIMEN[] specimen = [{spm:{}}];
};