
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

public const OPL_O37_MESSAGE_TYPE = "OPL_O37";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + prt - PRT
# + guarantor - OPL_O37_GUARANTOR Segment Group
# + order - OPL_O37_ORDER Segment Group

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
                        "segmentComponentName": "OPL_O37_GUARANTOR"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": true
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_OBSERVATIONS_ON_PATIENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_CONTAINER.OPL_O37_CONTAINER_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST.OPL_O37_ORDER_RELATED_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_PRIOR"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_VISIT_PRIOR"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR.OPL_O37_OBSERVATION_RESULT_GROUP"
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_GUARANTOR"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER"
                },
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT"
                },
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_PRIOR"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT"
                },
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_PRIOR"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_OBSERVATIONS_ON_PATIENT"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_CONTAINER.OPL_O37_CONTAINER_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST.OPL_O37_ORDER_RELATED_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR.OPL_O37_OBSERVATION_RESULT_GROUP"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_INSURANCE"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PATIENT"
                },
                {
                        "name": "AL1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_CONTAINER"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST"
                },
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST.OPL_O37_TIMING"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR.OPL_O37_TIMING2"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST.OPL_O37_TIMING"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR.OPL_O37_TIMING2"
                }
        ],
        "TCD": [
                {
                        "name": "TCD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_VISIT_PRIOR"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_VISIT_PRIOR"
                }
        ],
        "FT1": [
                {
                        "name": "FT1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER"
                }
        ],
        "BLG": [
                {
                        "name": "BLG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPL_O37_ORDER"
                }
        ]
},
    groups: {
        "OPL_O37_GUARANTOR": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "GT1": {
                                "name": "GT1",
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
        "OPL_O37_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
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
        "OPL_O37_ORDER.OPL_O37_PATIENT": {
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
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "AL1": {
                                "name": "AL1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_OBSERVATIONS_ON_PATIENT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PATIENT.OPL_O37_INSURANCE": {
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
        "OPL_O37_ORDER.OPL_O37_SPECIMEN": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SPM": {
                                "name": "SPM",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_SPECIMEN_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_CONTAINER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_CONTAINER.OPL_O37_CONTAINER_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "TCD": {
                                "name": "TCD",
                                "maxReps": 1,
                                "required": false
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST.OPL_O37_TIMING": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "TQ1": {
                                "name": "TQ1",
                                "maxReps": 1,
                                "required": true
                        },
                        "TQ2": {
                                "name": "TQ2",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_SPECIMEN.OPL_O37_OBSERVATION_REQUEST.OPL_O37_ORDER_RELATED_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": true
                        },
                        "AL1": {
                                "name": "AL1",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_PRIOR": {
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
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_PATIENT_VISIT_PRIOR": {
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
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR.OPL_O37_TIMING2": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "TQ1": {
                                "name": "TQ1",
                                "maxReps": 1,
                                "required": true
                        },
                        "TQ2": {
                                "name": "TQ2",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPL_O37_ORDER.OPL_O37_PRIOR_RESULT.OPL_O37_ORDER_PRIOR.OPL_O37_OBSERVATION_RESULT_GROUP": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
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
public type OPL_O37 record {
    *hl7v2:Message;
    string name = OPL_O37_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    PRT[] prt = [];
    OPL_O37_GUARANTOR guarantor?;
    OPL_O37_ORDER[]'order = [{}];
};
