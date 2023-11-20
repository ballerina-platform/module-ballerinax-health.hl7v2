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
public const OPU_R25_MESSAGE_TYPE = "OPU_R25";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + pv1 - PV1 Segment
# + pv2 - PV2 Segment
# + prt - PRT Segment
# + patient_visit_observation - OPU_R25_PATIENT_VISIT_OBSERVATION Segment Group
# + accession_detail - OPU_R25_ACCESSION_DETAIL Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: NTE},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: PRT}
    }
    ,groups: {
        "OPU_R25_PATIENT_VISIT_OBSERVATION": {
            maxReps: -1,
            required: false,
            segments: {
                "OBX": {name: "OBX", maxReps: 1, required: true, segmentType: typeof OBX},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT}
            }
        },
        "OPU_R25_ACCESSION_DETAIL": {
            maxReps: -1,
            required: true,
            segments: {
                "NK1": {name: "NK1", maxReps: -1, required: true, segmentType: typeof NK1},
                "OPU_R25_PATIENT": {name: "OPU_R25_PATIENT", maxReps: 1, required: false, segmentType: typeof OPU_R25_PATIENT},
                "OPU_R25_SPECIMEN": {name: "OPU_R25_SPECIMEN", maxReps: -1, required: true, segmentType: typeof OPU_R25_SPECIMEN}
            }
        }
    }
}
public type OPU_R25 record {
    *hl7v2:Message;
    string name = OPU_R25_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE nte?;
    PV1 pv1;
    PV2 pv2?;
    PRT[] prt = [];
    OPU_R25_PATIENT_VISIT_OBSERVATION[] patient_visit_observation = [{obx:{}}];
    OPU_R25_ACCESSION_DETAIL[] accession_detail = [{}];
};