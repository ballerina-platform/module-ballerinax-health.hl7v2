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
public const CCI_I22_MESSAGE_TYPE = "CCI_I22";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + msa - MSA Segment
# + err - ERR Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + nk1 - NK1 Segment
# + rel - REL Segment
# + insurance - CCI_I22_INSURANCE Segment Group
# + appointment_history - CCI_I22_APPOINTMENT_HISTORY Segment Group
# + clinical_history - CCI_I22_CLINICAL_HISTORY Segment Group
# + patient_visits - CCI_I22_PATIENT_VISITS Segment Group
# + medication_history - CCI_I22_MEDICATION_HISTORY Segment Group
# + problem - CCI_I22_PROBLEM Segment Group
# + goal - CCI_I22_GOAL Segment Group
# + pathway - CCI_I22_PATHWAY Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "REL": {name: "REL", maxReps: -1, required: false, segmentType: REL}
    }
    ,groups: {
        "CCI_I22_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "CCI_I22_APPOINTMENT_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: typeof SCH},
                "CCI_I22_RESOURCES": {name: "CCI_I22_RESOURCES", maxReps: -1, required: false, segmentType: typeof CCI_I22_RESOURCES}
            }
        },
        "CCI_I22_CLINICAL_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CCI_I22_CLINICAL_HISTORY_DETAIL": {name: "CCI_I22_CLINICAL_HISTORY_DETAIL", maxReps: -1, required: false, segmentType: typeof CCI_I22_CLINICAL_HISTORY_DETAIL},
                "CCI_I22_ROLE_CLINICAL_HISTORY": {name: "CCI_I22_ROLE_CLINICAL_HISTORY", maxReps: -1, required: false, segmentType: typeof CCI_I22_ROLE_CLINICAL_HISTORY},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CCI_I22_PATIENT_VISITS": {
            maxReps: -1,
            required: true,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "CCI_I22_MEDICATION_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CCI_I22_MEDICATION_ORDER_DETAIL": {name: "CCI_I22_MEDICATION_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof CCI_I22_MEDICATION_ORDER_DETAIL},
                "CCI_I22_MEDICATION_ENCODING_DETAIL": {name: "CCI_I22_MEDICATION_ENCODING_DETAIL", maxReps: 1, required: false, segmentType: typeof CCI_I22_MEDICATION_ENCODING_DETAIL},
                "CCI_I22_MEDICATION_ADMINISTRATION_DETAIL": {name: "CCI_I22_MEDICATION_ADMINISTRATION_DETAIL", maxReps: -1, required: false, segmentType: typeof CCI_I22_MEDICATION_ADMINISTRATION_DETAIL},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CCI_I22_PROBLEM": {
            maxReps: -1,
            required: false,
            segments: {
                "PRB": {name: "PRB", maxReps: 1, required: true, segmentType: typeof PRB},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CCI_I22_ROLE_PROBLEM": {name: "CCI_I22_ROLE_PROBLEM", maxReps: -1, required: false, segmentType: typeof CCI_I22_ROLE_PROBLEM},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        },
        "CCI_I22_GOAL": {
            maxReps: -1,
            required: false,
            segments: {
                "GOL": {name: "GOL", maxReps: 1, required: true, segmentType: typeof GOL},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CCI_I22_ROLE_GOAL": {name: "CCI_I22_ROLE_GOAL", maxReps: -1, required: false, segmentType: typeof CCI_I22_ROLE_GOAL},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        },
        "CCI_I22_PATHWAY": {
            maxReps: -1,
            required: false,
            segments: {
                "PTH": {name: "PTH", maxReps: 1, required: true, segmentType: typeof PTH},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CCI_I22_ROLE_PATHWAY": {name: "CCI_I22_ROLE_PATHWAY", maxReps: -1, required: false, segmentType: typeof CCI_I22_ROLE_PATHWAY},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        }
    }
}
public type CCI_I22 record {
    *hl7v2:Message;
    string name = CCI_I22_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    PID pid;
    PD1 pd1?;
    NK1[] nk1 = [];
    REL[] rel = [];
    CCI_I22_INSURANCE[] insurance = [{in1:{}}];
    CCI_I22_APPOINTMENT_HISTORY[] appointment_history = [{sch:{}}];
    CCI_I22_CLINICAL_HISTORY[] clinical_history = [{orc:{}}];
    CCI_I22_PATIENT_VISITS[] patient_visits = [{pv1:{}}];
    CCI_I22_MEDICATION_HISTORY[] medication_history = [{orc:{}}];
    CCI_I22_PROBLEM[] problem = [{prb:{}}];
    CCI_I22_GOAL[] goal = [{gol:{}}];
    CCI_I22_PATHWAY[] pathway = [{pth:{}}];
};