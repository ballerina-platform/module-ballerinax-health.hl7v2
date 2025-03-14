
// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

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

public const CCM_I21_MESSAGE_TYPE = "CCM_I21";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + pid - PID
# + pd1 - PD1
# + nk1 - NK1
# + rel - REL
# + insurance - CCM_I21_INSURANCE Segment Group
# + appointment_history - CCM_I21_APPOINTMENT_HISTORY Segment Group
# + problem - CCM_I21_PROBLEM Segment Group
# + goal - CCM_I21_GOAL Segment Group
# + pathway - CCM_I21_PATHWAY Segment Group
# + clinical_history - CCM_I21_CLINICAL_HISTORY Segment Group
# + medication_history - CCM_I21_MEDICATION_HISTORY Segment Group
# + patient_visits - CCM_I21_PATIENT_VISITS Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "SFT": [
                {
                        "name": "SFT",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "UAC": [
                {
                        "name": "UAC",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_INSURANCE"
                }
        ],
        "SCH": [
                {
                        "name": "SCH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_GOAL.CCM_I21_ROLE_GOAL"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY"
                }
        ],
        "VAR": [
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL.CCM_I21_ROLE_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY"
                },
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_PATIENT_VISITS"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATIENT_VISITS"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_PROBLEM"
                }
        ],
        "GOL": [
                {
                        "name": "GOL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_GOAL"
                }
        ],
        "PTH": [
                {
                        "name": "PTH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCM_I21_PATHWAY"
                }
        ],
        "REL": [
                {
                        "name": "REL",
                        "maxReps": -1,
                        "required": false
                }
        ]
},
    groups: {
        "CCM_I21_INSURANCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "IN1": {
                                "name": "IN1",
                                "maxReps": 1,
                                "required": true
                        },
                        "IN2": {
                                "name": "IN2",
                                "maxReps": 1,
                                "required": false
                        },
                        "IN3": {
                                "name": "IN3",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_APPOINTMENT_HISTORY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SCH": {
                                "name": "SCH",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "RGS": {
                                "name": "RGS",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIS": {
                                "name": "AIS",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_CLINICAL_HISTORY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTI": {
                                "name": "CTI",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PATIENT_VISITS": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_MEDICATION_HISTORY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTI": {
                                "name": "CTI",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXO": {
                                "name": "RXO",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXC": {
                                "name": "RXC",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXE": {
                                "name": "RXE",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXC": {
                                "name": "RXC",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "RXA": {
                                "name": "RXA",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PROBLEM": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PRB": {
                                "name": "PRB",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_GOAL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "GOL": {
                                "name": "GOL",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_GOAL.CCM_I21_ROLE_GOAL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PATHWAY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PTH": {
                                "name": "PTH",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": true
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type CCM_I21 record {
    *hl7v2:Message;
    string name = CCM_I21_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    PID pid;
    PD1 pd1?;
    NK1[] nk1 = [];
    REL[] rel = [];
    CCM_I21_INSURANCE[] insurance = [{in1: {}}];
    CCM_I21_APPOINTMENT_HISTORY[] appointment_history = [{sch: {}}];
    CCM_I21_PROBLEM[] problem = [{prb: {}}];
    CCM_I21_GOAL[] goal = [{gol: {}}];
    CCM_I21_PATHWAY[] pathway = [{pth: {}}];
    CCM_I21_CLINICAL_HISTORY[] clinical_history = [{orc: {}}];
    CCM_I21_MEDICATION_HISTORY[] medication_history = [{orc: {}}];
    CCM_I21_PATIENT_VISITS[] patient_visits = [{pv1: {}}];
};
