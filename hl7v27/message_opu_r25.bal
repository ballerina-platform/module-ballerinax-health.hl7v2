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
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + nte - Message Record Field
# + pv1 - Message Record Field
# + pv2 - Message Record Field
# + prt - Message Record Field
# + patient_visit_observation - Message Record Field
# + accession_detail - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: NTE},
        "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: PV1},
        "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: PV2},
        "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: PRT}
    }
    ,groups: {
        "PATIENT_VISIT_OBSERVATION": {
            maxReps: -1,
            required: false,
            segments: {
                "OBX": {name: "OBX", maxReps: 1, required: false, segmentType: typeof OBX},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT}
            }
        },
        "ACCESSION_DETAIL": {
            maxReps: -1,
            required: false,
            segments: {
                "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: typeof NK1},
                "PATIENT": {name: "PATIENT", maxReps: 1, required: false, segmentType: typeof PATIENT},
                "SPECIMEN": {name: "SPECIMEN", maxReps: -1, required: false, segmentType: typeof SPECIMEN}
            }
        }
    }
}
public type OPU_R25 record {
    *hl7v2:Message;
    string name = OPU_R25_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    NTE nte?;
    PV1 pv1?;
    PV2 pv2?;
    PRT[] prt = [];
    PATIENT_VISIT_OBSERVATION[] patient_visit_observation = [{}];
    ACCESSION_DETAIL[] accession_detail = [{}];
};