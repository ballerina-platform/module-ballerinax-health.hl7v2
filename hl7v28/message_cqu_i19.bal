
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

public const CQU_I19_MESSAGE_TYPE = "CQU_I19";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + rf1 - RF1
# + nk1 - NK1
# + rel - REL
# + provider_contact - CQU_I19_PROVIDER_CONTACT Segment Group
# + patient - CQU_I19_PATIENT Segment Group
# + insurance - CQU_I19_INSURANCE Segment Group
# + appointment_history - CQU_I19_APPOINTMENT_HISTORY Segment Group
# + clinical_history - CQU_I19_CLINICAL_HISTORY Segment Group
# + medication_history - CQU_I19_MEDICATION_HISTORY Segment Group
# + problem - CQU_I19_PROBLEM Segment Group
# + goal - CQU_I19_GOAL Segment Group
# + pathway - CQU_I19_PATHWAY Segment Group
# + patient_visit - CQU_I19_PATIENT_VISIT Segment Group

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
        "MSA": [
                {
                        "name": "MSA",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ERR": [
                {
                        "name": "ERR",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "RF1": [
                {
                        "name": "RF1",
                        "maxReps": 1,
                        "required": false
                },
                {
                        "name": "RF1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_PROVIDER_CONTACT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROBLEM.CQU_I19_ROLE_PROBLEM.CQU_I19_ROLE_PROBLEM_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_GOAL.CQU_I19_ROLE_GOAL.CQU_I19_ROLE_GOAL_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATHWAY.CQU_I19_ROLE_PATHWAY.CQU_I19_ROLE_PATHWAY_OBJECT"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROVIDER_CONTACT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATIENT"
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
                        "segmentComponentName": "CQU_I19_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_INSURANCE"
                }
        ],
        "SCH": [
                {
                        "name": "SCH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBJECT"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBJECT"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBJECT"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBJECT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL.CQU_I19_MEDICATION_ORDER_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL.CQU_I19_MEDICATION_ENCODING_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ADMINISTRATION_DETAIL.CQU_I19_MEDICATION_ADMINISTRATION_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROBLEM.CQU_I19_PROBLEM_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_GOAL.CQU_I19_GOAL_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATHWAY.CQU_I19_PATHWAY_OBSERVATION"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL.CQU_I19_MEDICATION_ORDER_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL.CQU_I19_MEDICATION_ENCODING_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ADMINISTRATION_DETAIL.CQU_I19_MEDICATION_ADMINISTRATION_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROBLEM.CQU_I19_PROBLEM_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_GOAL.CQU_I19_GOAL_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATHWAY.CQU_I19_PATHWAY_OBSERVATION"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "IAM": [
                {
                        "name": "IAM",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "RMI": [
                {
                        "name": "RMI",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DB1": [
                {
                        "name": "DB1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PDA": [
                {
                        "name": "PDA",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROBLEM.CQU_I19_ROLE_PROBLEM.CQU_I19_ROLE_PROBLEM_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_GOAL.CQU_I19_ROLE_GOAL.CQU_I19_ROLE_GOAL_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATHWAY.CQU_I19_ROLE_PATHWAY.CQU_I19_ROLE_PATHWAY_OBJECT"
                }
        ],
        "VAR": [
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PROBLEM.CQU_I19_ROLE_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_GOAL.CQU_I19_ROLE_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATHWAY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATHWAY.CQU_I19_ROLE_PATHWAY"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_CLINICAL_HISTORY"
                },
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_PATIENT_VISIT"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ADMINISTRATION_DETAIL"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ADMINISTRATION_DETAIL"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_PROBLEM"
                }
        ],
        "GOL": [
                {
                        "name": "GOL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_GOAL"
                }
        ],
        "PTH": [
                {
                        "name": "PTH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CQU_I19_PATHWAY"
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
        "CQU_I19_PROVIDER_CONTACT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CQU_I19_PATIENT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PD1": {
                                "name": "PD1",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CQU_I19_INSURANCE": {
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
        "CQU_I19_APPOINTMENT_HISTORY": {
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
        "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES": {
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
        "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {}
        },
        "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBJECT": {
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
        "CQU_I19_APPOINTMENT_HISTORY.CQU_I19_RESOURCES.CQU_I19_RESOURCE_DETAIL.CQU_I19_RESOURCE_OBSERVATION": {
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
        "CQU_I19_CLINICAL_HISTORY": {
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
        "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {}
        },
        "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBJECT": {
                "maxReps": 1,
                "required": false,
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
        "CQU_I19_CLINICAL_HISTORY.CQU_I19_CLINICAL_HISTORY_DETAIL.CQU_I19_CLINICAL_HISTORY_OBSERVATION": {
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
        "CQU_I19_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY": {
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
        "CQU_I19_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY.CQU_I19_ROLE_CLINICAL_HISTORY_OBJECT": {
                "maxReps": 1,
                "required": false,
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
        "CQU_I19_PATIENT_VISIT": {
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
        "CQU_I19_MEDICATION_HISTORY": {
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
        "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL": {
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
        "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ORDER_DETAIL.CQU_I19_MEDICATION_ORDER_OBSERVATION": {
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
        "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL": {
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
        "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ENCODING_DETAIL.CQU_I19_MEDICATION_ENCODING_OBSERVATION": {
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
        "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ADMINISTRATION_DETAIL": {
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
                        }
                }
        },
        "CQU_I19_MEDICATION_HISTORY.CQU_I19_MEDICATION_ADMINISTRATION_DETAIL.CQU_I19_MEDICATION_ADMINISTRATION_OBSERVATION": {
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
        "CQU_I19_PROBLEM": {
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
        "CQU_I19_PROBLEM.CQU_I19_ROLE_PROBLEM": {
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
        "CQU_I19_PROBLEM.CQU_I19_ROLE_PROBLEM.CQU_I19_ROLE_PROBLEM_OBJECT": {
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
        "CQU_I19_PROBLEM.CQU_I19_PROBLEM_OBSERVATION": {
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
        "CQU_I19_GOAL": {
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
        "CQU_I19_GOAL.CQU_I19_ROLE_GOAL": {
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
        "CQU_I19_GOAL.CQU_I19_ROLE_GOAL.CQU_I19_ROLE_GOAL_OBJECT": {
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
        "CQU_I19_GOAL.CQU_I19_GOAL_OBSERVATION": {
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
        "CQU_I19_PATHWAY": {
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
        "CQU_I19_PATHWAY.CQU_I19_ROLE_PATHWAY": {
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
        "CQU_I19_PATHWAY.CQU_I19_ROLE_PATHWAY.CQU_I19_ROLE_PATHWAY_OBJECT": {
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
        "CQU_I19_PATHWAY.CQU_I19_PATHWAY_OBSERVATION": {
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
public type CQU_I19 record {
    *hl7v2:Message;
    string name = CQU_I19_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    RF1 rf1?;
    NK1[] nk1 = [];
    REL[] rel = [];
    CQU_I19_PROVIDER_CONTACT provider_contact?;
    CQU_I19_PATIENT[] patient = [{pid: {}}];
    CQU_I19_INSURANCE[] insurance = [{in1: {}}];
    CQU_I19_APPOINTMENT_HISTORY[] appointment_history = [{sch: {}}];
    CQU_I19_CLINICAL_HISTORY[] clinical_history = [{orc: {}}];
    CQU_I19_MEDICATION_HISTORY[] medication_history = [{orc: {}}];
    CQU_I19_PROBLEM[] problem = [{prb: {}}];
    CQU_I19_GOAL[] goal = [{gol: {}}];
    CQU_I19_PATHWAY[] pathway = [{pth: {}}];
    CQU_I19_PATIENT_VISIT[] patient_visit = [{pv1: {}}];
};
