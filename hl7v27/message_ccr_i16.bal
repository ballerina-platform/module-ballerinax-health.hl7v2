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
public const CCR_I16_MESSAGE_TYPE = "CCR_I16";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + rf1 - RF1 Segment
# + nk1 - NK1 Segment
# + rel - REL Segment
# + provider_contact - CCR_I16_PROVIDER_CONTACT Segment Group
# + clinical_order - CCR_I16_CLINICAL_ORDER Segment Group
# + patient - CCR_I16_PATIENT Segment Group
# + insurance - CCR_I16_INSURANCE Segment Group
# + appointment_history - CCR_I16_APPOINTMENT_HISTORY Segment Group
# + clinical_history - CCR_I16_CLINICAL_HISTORY Segment Group
# + patient_visits - CCR_I16_PATIENT_VISITS Segment Group
# + medication_history - CCR_I16_MEDICATION_HISTORY Segment Group
# + problem - CCR_I16_PROBLEM Segment Group
# + goal - CCR_I16_GOAL Segment Group
# + pathway - CCR_I16_PATHWAY Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "RF1": {name: "RF1", maxReps: -1, required: true, segmentType: RF1},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "REL": {name: "REL", maxReps: -1, required: false, segmentType: REL}
    }
    ,groups: {
        "CCR_I16_PROVIDER_CONTACT": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        },
        "CCR_I16_CLINICAL_ORDER": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CCR_I16_CLINICAL_ORDER_TIMING": {name: "CCR_I16_CLINICAL_ORDER_TIMING", maxReps: -1, required: false, segmentType: typeof CCR_I16_CLINICAL_ORDER_TIMING},
                "CCR_I16_CLINICAL_ORDER_DETAIL": {name: "CCR_I16_CLINICAL_ORDER_DETAIL", maxReps: -1, required: true, segmentType: typeof CCR_I16_CLINICAL_ORDER_DETAIL},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CCR_I16_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1}
            }
        },
        "CCR_I16_INSURANCE": {
            maxReps: -1,
            required: false,
            segments: {
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IN3": {name: "IN3", maxReps: 1, required: false, segmentType: typeof IN3}
            }
        },
        "CCR_I16_APPOINTMENT_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "SCH": {name: "SCH", maxReps: 1, required: true, segmentType: typeof SCH},
                "CCR_I16_RESOURCES": {name: "CCR_I16_RESOURCES", maxReps: -1, required: false, segmentType: typeof CCR_I16_RESOURCES}
            }
        },
        "CCR_I16_CLINICAL_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CCR_I16_CLINICAL_HISTORY_DETAIL": {name: "CCR_I16_CLINICAL_HISTORY_DETAIL", maxReps: -1, required: false, segmentType: typeof CCR_I16_CLINICAL_HISTORY_DETAIL},
                "CCR_I16_ROLE_CLINICAL_HISTORY": {name: "CCR_I16_ROLE_CLINICAL_HISTORY", maxReps: -1, required: false, segmentType: typeof CCR_I16_ROLE_CLINICAL_HISTORY},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CCR_I16_PATIENT_VISITS": {
            maxReps: -1,
            required: true,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "CCR_I16_MEDICATION_HISTORY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "CCR_I16_MEDICATION_ORDER_DETAIL": {name: "CCR_I16_MEDICATION_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof CCR_I16_MEDICATION_ORDER_DETAIL},
                "CCR_I16_MEDICATION_ENCODING_DETAIL": {name: "CCR_I16_MEDICATION_ENCODING_DETAIL", maxReps: 1, required: false, segmentType: typeof CCR_I16_MEDICATION_ENCODING_DETAIL},
                "CCR_I16_MEDICATION_ADMINISTRATION_DETAIL": {name: "CCR_I16_MEDICATION_ADMINISTRATION_DETAIL", maxReps: -1, required: false, segmentType: typeof CCR_I16_MEDICATION_ADMINISTRATION_DETAIL},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        },
        "CCR_I16_PROBLEM": {
            maxReps: -1,
            required: false,
            segments: {
                "PRB": {name: "PRB", maxReps: 1, required: true, segmentType: typeof PRB},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CCR_I16_ROLE_PROBLEM": {name: "CCR_I16_ROLE_PROBLEM", maxReps: -1, required: false, segmentType: typeof CCR_I16_ROLE_PROBLEM},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        },
        "CCR_I16_GOAL": {
            maxReps: -1,
            required: false,
            segments: {
                "GOL": {name: "GOL", maxReps: 1, required: true, segmentType: typeof GOL},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CCR_I16_ROLE_GOAL": {name: "CCR_I16_ROLE_GOAL", maxReps: -1, required: false, segmentType: typeof CCR_I16_ROLE_GOAL},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        },
        "CCR_I16_PATHWAY": {
            maxReps: -1,
            required: false,
            segments: {
                "PTH": {name: "PTH", maxReps: 1, required: true, segmentType: typeof PTH},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "CCR_I16_ROLE_PATHWAY": {name: "CCR_I16_ROLE_PATHWAY", maxReps: -1, required: false, segmentType: typeof CCR_I16_ROLE_PATHWAY},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        }
    }
}
public type CCR_I16 record {
    *hl7v2:Message;
    string name = CCR_I16_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    RF1[] rf1 = [];
    NK1[] nk1 = [];
    REL[] rel = [];
    CCR_I16_PROVIDER_CONTACT[] provider_contact = [{prd:{}}];
    CCR_I16_CLINICAL_ORDER[] clinical_order = [{orc:{}}];
    CCR_I16_PATIENT[] patient = [{pid:{}}];
    CCR_I16_INSURANCE[] insurance = [{in1:{}}];
    CCR_I16_APPOINTMENT_HISTORY[] appointment_history = [{sch:{}}];
    CCR_I16_CLINICAL_HISTORY[] clinical_history = [{orc:{}}];
    CCR_I16_PATIENT_VISITS[] patient_visits = [{pv1:{}}];
    CCR_I16_MEDICATION_HISTORY[] medication_history = [{orc:{}}];
    CCR_I16_PROBLEM[] problem = [{prb:{}}];
    CCR_I16_GOAL[] goal = [{gol:{}}];
    CCR_I16_PATHWAY[] pathway = [{pth:{}}];
};