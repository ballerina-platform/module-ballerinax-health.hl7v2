
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

public const OML_O21_MESSAGE_TYPE = "OML_O21";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + nte - NTE
# + patient - OML_O21_PATIENT Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR.OML_O21_OBSERVATION_PRIOR"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_PATIENT"
                },
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_PATIENT_PRIOR"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT"
                },
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_PATIENT_PRIOR"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_PATIENT.OML_O21_PATIENT_VISIT"
                },
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_PATIENT_VISIT_PRIOR"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT.OML_O21_PATIENT_VISIT"
                },
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_PATIENT_VISIT_PRIOR"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_PATIENT.OML_O21_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT.OML_O21_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT.OML_O21_INSURANCE"
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_PATIENT"
                },
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_CONTAINER_1"
                },
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_CONTAINER_2"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_CONTAINER_1"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_CONTAINER_2"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR.OML_O21_OBSERVATION_PRIOR"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST"
                },
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR"
                }
        ],
        "TCD": [
                {
                        "name": "TCD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST"
                },
                {
                        "name": "TCD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_OBSERVATION"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST"
                }
        ],
        "FT1": [
                {
                        "name": "FT1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER"
                }
        ],
        "BLG": [
                {
                        "name": "BLG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OML_O21_ORDER_GENERAL.OML_O21_ORDER"
                }
        ]
},
    groups: {
        "OML_O21_PATIENT": {
                "maxReps": 1,
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
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "GT1": {
                                "name": "GT1",
                                "maxReps": 1,
                                "required": false
                        },
                        "AL1": {
                                "name": "AL1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OML_O21_PATIENT.OML_O21_PATIENT_VISIT": {
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
        "OML_O21_PATIENT.OML_O21_INSURANCE": {
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
        "OML_O21_ORDER_GENERAL": {
                "maxReps": -1,
                "required": true,
                "segments": {}
        },
        "OML_O21_ORDER_GENERAL.OML_O21_CONTAINER_1": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
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
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "FT1": {
                                "name": "FT1",
                                "maxReps": -1,
                                "required": false
                        },
                        "CTI": {
                                "name": "CTI",
                                "maxReps": -1,
                                "required": false
                        },
                        "BLG": {
                                "name": "BLG",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "TCD": {
                                "name": "TCD",
                                "maxReps": 1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_CONTAINER_2": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
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
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "TCD": {
                                "name": "TCD",
                                "maxReps": 1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AL1": {
                                "name": "AL1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_PATIENT_PRIOR": {
                "maxReps": 1,
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
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_PATIENT_VISIT_PRIOR": {
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
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        },
                        "OBR": {
                                "name": "OBR",
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
        "OML_O21_ORDER_GENERAL.OML_O21_ORDER.OML_O21_OBSERVATION_REQUEST.OML_O21_PRIOR_RESULT.OML_O21_ORDER_PRIOR.OML_O21_OBSERVATION_PRIOR": {
                "maxReps": -1,
                "required": true,
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
        }
}
}
public type OML_O21 record {
    *hl7v2:Message;
    string name = OML_O21_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    OML_O21_PATIENT patient?;
};
