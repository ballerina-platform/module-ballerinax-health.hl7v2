
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

public const CCI_I22_MESSAGE_TYPE = "CCI_I22";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + pid - PID
# + pd1 - PD1
# + nk1 - NK1
# + rel - REL
# + insurance - CCI_I22_INSURANCE Segment Group
# + appointment_history - CCI_I22_APPOINTMENT_HISTORY Segment Group
# + problem - CCI_I22_PROBLEM Segment Group
# + goal - CCI_I22_GOAL Segment Group
# + pathway - CCI_I22_PATHWAY Segment Group
# + clinical_history - CCI_I22_CLINICAL_HISTORY Segment Group
# + medication_history - CCI_I22_MEDICATION_HISTORY Segment Group
# + patient_visit - CCI_I22_PATIENT_VISIT Segment Group

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
                        "segmentComponentName": "CCI_I22_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_INSURANCE"
                }
        ],
        "SCH": [
                {
                        "name": "SCH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL.CCI_I22_RESOURCE_OBJECT"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL.CCI_I22_RESOURCE_OBJECT"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL.CCI_I22_RESOURCE_OBJECT"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL.CCI_I22_RESOURCE_OBJECT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ENCODING_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ADMINISTRATION_DETAIL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PROBLEM"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_GOAL"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PATHWAY"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "RF1": [
                {
                        "name": "RF1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "IAM": [
                {
                        "name": "IAM",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "RMI": [
                {
                        "name": "RMI",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DB1": [
                {
                        "name": "DB1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "PDA": [
                {
                        "name": "PDA",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PROBLEM.CCI_I22_ROLE_PROBLEM.CCI_I22_ROLE_PROBLEM_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_GOAL.CCI_I22_ROLE_GOAL.CCI_I22_ROAL_GOAL_OBJECT"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PATHWAY.CCI_I22_ROLE_PATHWAY.CCI_I22_ROLE_PATHWAY_OBJECT"
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PROBLEM.CCI_I22_ROLE_PROBLEM.CCI_I22_ROLE_PROBLEM_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_GOAL.CCI_I22_ROLE_GOAL.CCI_I22_ROAL_GOAL_OBJECT"
                },
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PATHWAY.CCI_I22_ROLE_PATHWAY.CCI_I22_ROLE_PATHWAY_OBJECT"
                }
        ],
        "VAR": [
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PROBLEM.CCI_I22_ROLE_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_GOAL.CCI_I22_ROLE_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PATHWAY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PATHWAY.CCI_I22_ROLE_PATHWAY"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_CLINICAL_HISTORY"
                },
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_PATIENT_VISIT"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ENCODING_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ADMINISTRATION_DETAIL"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ORDER_DETAIL"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ENCODING_DETAIL"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ENCODING_DETAIL"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ADMINISTRATION_DETAIL"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_PROBLEM"
                }
        ],
        "GOL": [
                {
                        "name": "GOL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_GOAL"
                }
        ],
        "PTH": [
                {
                        "name": "PTH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CCI_I22_PATHWAY"
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
        "CCI_I22_INSURANCE": {
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
        "CCI_I22_APPOINTMENT_HISTORY": {
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
        "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES": {
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
        "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCI_I22_APPOINTMENT_HISTORY.CCI_I22_RESOURCES.CCI_I22_RESOURCE_DETAIL.CCI_I22_RESOURCE_OBJECT": {
                "maxReps": 1,
                "required": false,
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
        "CCI_I22_CLINICAL_HISTORY": {
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
        "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CCI_I22_CLINICAL_HISTORY.CCI_I22_CLINICAL_HISTORY_DETAIL.CCI_I22_CLINICAL_HISTORY_OBJECT": {
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
        "CCI_I22_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY": {
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
        "CCI_I22_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY.CCI_I22_ROLE_CLINICAL_HISTORY_OBJECT": {
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
        "CCI_I22_PATIENT_VISIT": {
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
        "CCI_I22_MEDICATION_HISTORY": {
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
        "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ORDER_DETAIL": {
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
        "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ENCODING_DETAIL": {
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
        "CCI_I22_MEDICATION_HISTORY.CCI_I22_MEDICATION_ADMINISTRATION_DETAIL": {
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
        "CCI_I22_PROBLEM": {
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
        "CCI_I22_PROBLEM.CCI_I22_ROLE_PROBLEM": {
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
        "CCI_I22_PROBLEM.CCI_I22_ROLE_PROBLEM.CCI_I22_ROLE_PROBLEM_OBJECT": {
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
        "CCI_I22_GOAL": {
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
        "CCI_I22_GOAL.CCI_I22_ROLE_GOAL": {
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
        "CCI_I22_GOAL.CCI_I22_ROLE_GOAL.CCI_I22_ROAL_GOAL_OBJECT": {
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
        "CCI_I22_PATHWAY": {
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
        "CCI_I22_PATHWAY.CCI_I22_ROLE_PATHWAY": {
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
        "CCI_I22_PATHWAY.CCI_I22_ROLE_PATHWAY.CCI_I22_ROLE_PATHWAY_OBJECT": {
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
    CCI_I22_INSURANCE[] insurance = [{in1: {}}];
    CCI_I22_APPOINTMENT_HISTORY[] appointment_history = [{sch: {}}];
    CCI_I22_PROBLEM[] problem = [{prb: {}}];
    CCI_I22_GOAL[] goal = [{gol: {}}];
    CCI_I22_PATHWAY[] pathway = [{pth: {}}];
    CCI_I22_CLINICAL_HISTORY[] clinical_history = [{orc: {}}];
    CCI_I22_MEDICATION_HISTORY[] medication_history = [{orc: {}}];
    CCI_I22_PATIENT_VISIT[] patient_visit = [{pv1: {}}];
};
