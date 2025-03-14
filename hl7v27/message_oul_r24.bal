
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

public const OUL_R24_MESSAGE_TYPE = "OUL_R24";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + nk1 - NK1
# + patient - OUL_R24_PATIENT Segment Group
# + order - OUL_R24_ORDER Segment Group

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
                        "maxReps": 1,
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_RESULT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_PATIENT"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_PATIENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_PATIENT.OUL_R24_PATIENT_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_PATIENT.OUL_R24_VISIT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_RESULT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_PATIENT.OUL_R24_PATIENT_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_RESULT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_PATIENT.OUL_R24_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_PATIENT.OUL_R24_VISIT"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_ORDER"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_TIMING_QTY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_TIMING_QTY"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_SPECIMEN_OBSERVATION.OUL_R24_CONTAINER"
                }
        ],
        "INV": [
                {
                        "name": "INV",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_SPECIMEN_OBSERVATION.OUL_R24_CONTAINER"
                }
        ],
        "TCD": [
                {
                        "name": "TCD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_RESULT"
                }
        ],
        "SID": [
                {
                        "name": "SID",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_RESULT"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER.OUL_R24_SPECIMEN"
                }
        ],
        "DSC": [
                {
                        "name": "DSC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R24_ORDER"
                }
        ]
},
    groups: {
        "OUL_R24_PATIENT": {
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
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OUL_R24_PATIENT.OUL_R24_PATIENT_OBSERVATION": {
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
        "OUL_R24_PATIENT.OUL_R24_VISIT": {
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
        "OUL_R24_ORDER": {
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
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "DSC": {
                                "name": "DSC",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "OUL_R24_ORDER.OUL_R24_TIMING_QTY": {
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
        "OUL_R24_ORDER.OUL_R24_SPECIMEN": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SPM": {
                                "name": "SPM",
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
        "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_SPECIMEN_OBSERVATION": {
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
        "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_SPECIMEN_OBSERVATION.OUL_R24_CONTAINER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        },
                        "INV": {
                                "name": "INV",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "OUL_R24_ORDER.OUL_R24_SPECIMEN.OUL_R24_RESULT": {
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
                        },
                        "TCD": {
                                "name": "TCD",
                                "maxReps": 1,
                                "required": false
                        },
                        "SID": {
                                "name": "SID",
                                "maxReps": -1,
                                "required": false
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
public type OUL_R24 record {
    *hl7v2:Message;
    string name = OUL_R24_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE nte?;
    NK1[] nk1 = [];
    OUL_R24_PATIENT patient?;
    OUL_R24_ORDER[]'order = [{obr: {}}];
};
