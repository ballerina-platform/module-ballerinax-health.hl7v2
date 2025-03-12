
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

public const PRR_PC5_MESSAGE_TYPE = "PRR_PC5";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + qrd - QRD
# + patient - PRR_PC5_PATIENT Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
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
                        "maxReps": 1,
                        "required": false
                }
        ],
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PATIENT_VISIT"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL.PRR_PC5_GOAL_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_OBSERVATION"
                }
        ],
        "VAR": [
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_PATHWAY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL.PRR_PC5_GOAL_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_OBSERVATION"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_ROLE"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL.PRR_PC5_GOAL_ROLE"
                }
        ],
        "PTH": [
                {
                        "name": "PTH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_PATHWAY"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL.PRR_PC5_GOAL_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_OBSERVATION"
                }
        ],
        "GOL": [
                {
                        "name": "GOL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RQD": [
                {
                        "name": "RQD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RQ1": [
                {
                        "name": "RQ1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT"
                }
        ],
        "ODT": [
                {
                        "name": "ODT",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT"
                }
        ]
},
    groups: {
        "PRR_PC5_PATIENT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PATIENT_VISIT": {
                "maxReps": 1,
                "required": false,
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
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PRB": {
                                "name": "PRB",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_ROLE": {
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
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_PATHWAY": {
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
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_PROBLEM_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "GOL": {
                                "name": "GOL",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL.PRR_PC5_GOAL_ROLE": {
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
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_GOAL.PRR_PC5_GOAL_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "VAR": {
                                "name": "VAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_DETAIL_SEGMENT": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": false
                        },
                        "RQD": {
                                "name": "RQD",
                                "maxReps": 1,
                                "required": false
                        },
                        "RQ1": {
                                "name": "RQ1",
                                "maxReps": 1,
                                "required": false
                        },
                        "RXO": {
                                "name": "RXO",
                                "maxReps": 1,
                                "required": false
                        },
                        "ODS": {
                                "name": "ODS",
                                "maxReps": 1,
                                "required": false
                        },
                        "ODT": {
                                "name": "ODT",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "PRR_PC5_PATIENT.PRR_PC5_PROBLEM.PRR_PC5_ORDER.PRR_PC5_ORDER_DETAIL.PRR_PC5_ORDER_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
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
public type PRR_PC5 record {
    *hl7v2:Message;
    string name = PRR_PC5_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    PRR_PC5_PATIENT[] patient = [{pid: {}}];
};
