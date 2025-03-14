
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

public const PPV_PCA_MESSAGE_TYPE = "PPV_PCA";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + qak - QAK
# + qrd - QRD
# + patient - PPV_PCA_PATIENT Segment Group

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
        "QAK": [
                {
                        "name": "QAK",
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
                        "segmentComponentName": "PPV_PCA_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_PATIENT_VISIT"
                }
        ],
        "GOL": [
                {
                        "name": "GOL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION"
                }
        ],
        "VAR": [
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_PATHWAY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_ROLE"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_ROLE"
                }
        ],
        "PTH": [
                {
                        "name": "PTH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_PATHWAY"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RQD": [
                {
                        "name": "RQD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RQ1": [
                {
                        "name": "RQ1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT"
                }
        ],
        "ODT": [
                {
                        "name": "ODT",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT"
                }
        ]
},
    groups: {
        "PPV_PCA_PATIENT": {
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
        "PPV_PCA_PATIENT.PPV_PCA_PATIENT_VISIT": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL": {
                "maxReps": -1,
                "required": true,
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_ROLE": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_PATHWAY": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_OBSERVATION": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM": {
                "maxReps": -1,
                "required": false,
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_ROLE": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_OBSERVATION": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_DETAIL_SEGMENT": {
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
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION": {
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
public type PPV_PCA record {
    *hl7v2:Message;
    string name = PPV_PCA_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    QAK qak?;
    QRD qrd;
    PPV_PCA_PATIENT[] patient = [{pid: {}}];
};
