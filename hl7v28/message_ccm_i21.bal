
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
# + clinical_history - CCM_I21_CLINICAL_HISTORY Segment Group
# + medication_history - CCM_I21_MEDICATION_HISTORY Segment Group
# + problem - CCM_I21_PROBLEM Segment Group
# + goal - CCM_I21_GOAL Segment Group
# + pathway - CCM_I21_PATHWAY Segment Group
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
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBJECT"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBJECT"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBJECT"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBJECT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL.CCM_I21_MEDICATION_ORDER_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL.CCM_I21_MEDICATION_ENCODING_OBSERVATION"
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
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL.CCM_I21_MEDICATION_ADMINISTRATION_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM.CCM_I21_PROBLEM_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL.CCM_I21_GOAL_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY.CCM_I21_PATHWAY_OBSERVATION"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL.CCM_I21_MEDICATION_ORDER_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL.CCM_I21_MEDICATION_ENCODING_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL.CCM_I21_MEDICATION_ADMINISTRATION_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM.CCM_I21_PROBLEM_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL.CCM_I21_GOAL_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY.CCM_I21_PATHWAY_OBSERVATION"
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
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "RF1": [
                {
                        "name": "RF1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "IAM": [
                {
                        "name": "IAM",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "RMI": [
                {
                        "name": "RMI",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DB1": [
                {
                        "name": "DB1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PDA": [
                {
                        "name": "PDA",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM.CCM_I21_ROLE_PROBLEM_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL.CCM_I21_ROLE_GOAL.CCM_I21_ROLE_GOAL_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY.CCM_I21_ROLE_PATHWAY_OBJECT"
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM.CCM_I21_ROLE_PROBLEM_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_GOAL.CCM_I21_ROLE_GOAL.CCM_I21_ROLE_GOAL_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY.CCM_I21_ROLE_PATHWAY_OBJECT"
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
                "segments": {}
        },
        "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBJECT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "AIS": {
                                "name": "AIS",
                                "maxReps": 1,
                                "required": false
                        },
                        "AIG": {
                                "name": "AIG",
                                "maxReps": 1,
                                "required": false
                        },
                        "AIL": {
                                "name": "AIL",
                                "maxReps": 1,
                                "required": false
                        },
                        "AIP": {
                                "name": "AIP",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_APPOINTMENT_HISTORY.CCM_I21_RESOURCES.CCM_I21_RESOURCE_DETAIL.CCM_I21_RESOURCE_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
                "segments": {}
        },
        "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBJECT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": false
                        },
                        "ODS": {
                                "name": "ODS",
                                "maxReps": 1,
                                "required": false
                        },
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": false
                        },
                        "RF1": {
                                "name": "RF1",
                                "maxReps": 1,
                                "required": false
                        },
                        "AL1": {
                                "name": "AL1",
                                "maxReps": 1,
                                "required": false
                        },
                        "IAM": {
                                "name": "IAM",
                                "maxReps": 1,
                                "required": false
                        },
                        "ACC": {
                                "name": "ACC",
                                "maxReps": 1,
                                "required": false
                        },
                        "RMI": {
                                "name": "RMI",
                                "maxReps": 1,
                                "required": false
                        },
                        "DB1": {
                                "name": "DB1",
                                "maxReps": 1,
                                "required": false
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": 1,
                                "required": false
                        },
                        "DRG": {
                                "name": "DRG",
                                "maxReps": 1,
                                "required": false
                        },
                        "PDA": {
                                "name": "PDA",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_CLINICAL_HISTORY.CCM_I21_CLINICAL_HISTORY_DETAIL.CCM_I21_CLINICAL_HISTORY_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY.CCM_I21_ROLE_CLINICAL_HISTORY_OBJECT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": false
                        },
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
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
                        }
                }
        },
        "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ORDER_DETAIL.CCM_I21_MEDICATION_ORDER_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
                        }
                }
        },
        "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ENCODING_DETAIL.CCM_I21_MEDICATION_ENCODING_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
        "CCM_I21_MEDICATION_HISTORY.CCM_I21_MEDICATION_ADMINISTRATION_DETAIL.CCM_I21_MEDICATION_ADMINISTRATION_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
                        }
                }
        },
        "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PROBLEM.CCM_I21_ROLE_PROBLEM.CCM_I21_ROLE_PROBLEM_OBJECT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": false
                        },
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PROBLEM.CCM_I21_PROBLEM_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
                        }
                }
        },
        "CCM_I21_GOAL.CCM_I21_ROLE_GOAL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_GOAL.CCM_I21_ROLE_GOAL.CCM_I21_ROLE_GOAL_OBJECT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": false
                        },
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_GOAL.CCM_I21_GOAL_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
                        }
                }
        },
        "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PATHWAY.CCM_I21_ROLE_PATHWAY.CCM_I21_ROLE_PATHWAY_OBJECT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": false
                        },
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CCM_I21_PATHWAY.CCM_I21_PATHWAY_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
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
    CCM_I21_CLINICAL_HISTORY[] clinical_history = [{orc: {}}];
    CCM_I21_MEDICATION_HISTORY[] medication_history = [{orc: {}}];
    CCM_I21_PROBLEM[] problem = [{prb: {}}];
    CCM_I21_GOAL[] goal = [{gol: {}}];
    CCM_I21_PATHWAY[] pathway = [{pth: {}}];
    CCM_I21_PATIENT_VISITS[] patient_visits = [{pv1: {}}];
};
