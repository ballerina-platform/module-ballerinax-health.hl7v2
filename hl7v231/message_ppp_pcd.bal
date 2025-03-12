
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

public const PPP_PCD_MESSAGE_TYPE = "PPP_PCD";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + pid - PID
# + patient_visit - PPP_PCD_PATIENT_VISIT Segment Group
# + pathway - PPP_PCD_PATHWAY Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATIENT_VISIT"
                }
        ],
        "PTH": [
                {
                        "name": "PTH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_PROBLEM_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL.PPP_PCD_GOAL_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_OBSERVATION"
                }
        ],
        "VAR": [
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PATHWAY_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_PROBLEM_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL.PPP_PCD_GOAL_ROLE"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL"
                },
                {
                        "name": "VAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_OBSERVATION"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PATHWAY_ROLE"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_PROBLEM_ROLE"
                },
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL.PPP_PCD_GOAL_ROLE"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_PROBLEM_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL.PPP_PCD_GOAL_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_OBSERVATION"
                }
        ],
        "GOL": [
                {
                        "name": "GOL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RQD": [
                {
                        "name": "RQD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RQ1": [
                {
                        "name": "RQ1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT"
                }
        ],
        "ODT": [
                {
                        "name": "ODT",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT"
                }
        ]
},
    groups: {
        "PPP_PCD_PATIENT_VISIT": {
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
        "PPP_PCD_PATHWAY": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PTH": {
                                "name": "PTH",
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
        "PPP_PCD_PATHWAY.PPP_PCD_PATHWAY_ROLE": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_PROBLEM_ROLE": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_PROBLEM_OBSERVATION": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL.PPP_PCD_GOAL_ROLE": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_GOAL.PPP_PCD_GOAL_OBSERVATION": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_DETAIL_SEGMENT": {
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
        "PPP_PCD_PATHWAY.PPP_PCD_PROBLEM.PPP_PCD_ORDER.PPP_PCD_ORDER_DETAIL.PPP_PCD_ORDER_OBSERVATION": {
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
public type PPP_PCD record {
    *hl7v2:Message;
    string name = PPP_PCD_MESSAGE_TYPE;
    MSH msh;
    PID pid;
    PPP_PCD_PATIENT_VISIT patient_visit?;
    PPP_PCD_PATHWAY[] pathway = [{pth: {}}];
};
