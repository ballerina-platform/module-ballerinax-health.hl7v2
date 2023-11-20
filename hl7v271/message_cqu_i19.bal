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
public const CQU_I19_MESSAGE_TYPE = "CQU_I19";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + msa - MSA Segment
# + err - ERR Segment
# + rf1 - RF1 Segment
# + nk1 - NK1 Segment
# + rel - REL Segment
# + provider_contact - CQU_I19_PROVIDER_CONTACT Segment Group
# + patient - CQU_I19_PATIENT Segment Group
# + insurance - CQU_I19_INSURANCE Segment Group
# + appointment_history - CQU_I19_APPOINTMENT_HISTORY Segment Group
# + clinical_history - CQU_I19_CLINICAL_HISTORY Segment Group
# + patient_visits - CQU_I19_PATIENT_VISITS Segment Group
# + medication_history - CQU_I19_MEDICATION_HISTORY Segment Group
# + problem - CQU_I19_PROBLEM Segment Group
# + goal - CQU_I19_GOAL Segment Group
# + pathway - CQU_I19_PATHWAY Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "RF1": {name: "RF1", maxReps: 1, required: true, segmentType: RF1},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "REL": {name: "REL", maxReps: -1, required: false, segmentType: REL}
    }
    ,groups: {
        "CQU_I19_PROVIDER_CONTACT": {
            maxReps: -1,
            required: false,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "CQU_I19_PATIENT": {
            maxReps: -1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1}
            }
        },
        "CQU_I19_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "CQU_I19_APPOINTMENT_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: typeof SCH},
                "CQU_I19_RESOURCES": {name: "CQU_I19_RESOURCES", maxReps: -1, required: false, segmentType: typeof CQU_I19_RESOURCES}
            }
        },
        "CQU_I19_CLINICAL_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CQU_I19_CLINICAL_HISTORY_DETAIL": {name: "CQU_I19_CLINICAL_HISTORY_DETAIL", maxReps: -1, required: false, segmentType: typeof CQU_I19_CLINICAL_HISTORY_DETAIL},
                "CQU_I19_ROLE_CLINICAL_HISTORY": {name: "CQU_I19_ROLE_CLINICAL_HISTORY", maxReps: -1, required: false, segmentType: typeof CQU_I19_ROLE_CLINICAL_HISTORY},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CQU_I19_PATIENT_VISITS": {
            maxReps: -1,
            required: true,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "CQU_I19_MEDICATION_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CQU_I19_MEDICATION_ORDER_DETAIL": {name: "CQU_I19_MEDICATION_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof CQU_I19_MEDICATION_ORDER_DETAIL},
                "CQU_I19_MEDICATION_ENCODING_DETAIL": {name: "CQU_I19_MEDICATION_ENCODING_DETAIL", maxReps: 1, required: false, segmentType: typeof CQU_I19_MEDICATION_ENCODING_DETAIL},
                "CQU_I19_MEDICATION_ADMINISTRATION_DETAIL": {name: "CQU_I19_MEDICATION_ADMINISTRATION_DETAIL", maxReps: -1, required: false, segmentType: typeof CQU_I19_MEDICATION_ADMINISTRATION_DETAIL},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CQU_I19_PROBLEM": {
            maxReps: -1,
            required: false,
            segments: {
                "PRB": {name: "PRB", maxReps: 1, required: true, segmentType: typeof PRB},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CQU_I19_ROLE_PROBLEM": {name: "CQU_I19_ROLE_PROBLEM", maxReps: -1, required: false, segmentType: typeof CQU_I19_ROLE_PROBLEM},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        },
        "CQU_I19_GOAL": {
            maxReps: -1,
            required: false,
            segments: {
                "GOL": {name: "GOL", maxReps: 1, required: true, segmentType: typeof GOL},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CQU_I19_ROLE_GOAL": {name: "CQU_I19_ROLE_GOAL", maxReps: -1, required: false, segmentType: typeof CQU_I19_ROLE_GOAL},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        },
        "CQU_I19_PATHWAY": {
            maxReps: -1,
            required: false,
            segments: {
                "PTH": {name: "PTH", maxReps: 1, required: true, segmentType: typeof PTH},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CQU_I19_ROLE_PATHWAY": {name: "CQU_I19_ROLE_PATHWAY", maxReps: -1, required: false, segmentType: typeof CQU_I19_ROLE_PATHWAY},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        }
    }
}
public type CQU_I19 record {
    *hl7v2:Message;
    string name = CQU_I19_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    RF1 rf1;
    NK1[] nk1 = [];
    REL[] rel = [];
    CQU_I19_PROVIDER_CONTACT[] provider_contact = [{prd:{}}];
    CQU_I19_PATIENT[] patient = [{pid:{}}];
    CQU_I19_INSURANCE[] insurance = [{in1:{}}];
    CQU_I19_APPOINTMENT_HISTORY[] appointment_history = [{sch:{}}];
    CQU_I19_CLINICAL_HISTORY[] clinical_history = [{orc:{}}];
    CQU_I19_PATIENT_VISITS[] patient_visits = [{pv1:{}}];
    CQU_I19_MEDICATION_HISTORY[] medication_history = [{orc:{}}];
    CQU_I19_PROBLEM[] problem = [{prb:{}}];
    CQU_I19_GOAL[] goal = [{gol:{}}];
    CQU_I19_PATHWAY[] pathway = [{pth:{}}];
};