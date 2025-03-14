
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

public const RGV_O15_MESSAGE_TYPE = "RGV_O15";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + patient - RGV_O15_PATIENT Segment Group
# + order - RGV_O15_ORDER Segment Group

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
                        "segmentComponentName": "RGV_O15_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL.RGV_O15_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL.RGV_O15_ORDER_DETAIL_SUPPLEMENT.RGV_O15_COMPONENTS"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_OBSERVATION"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_PATIENT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_PATIENT.RGV_O15_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_PATIENT.RGV_O15_PATIENT_VISIT"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_PATIENT.RGV_O15_PATIENT_VISIT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_OBSERVATION"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_TIMING"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING.RGV_O15_TIMING_ENCODED"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_TIMING_GIVE"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_TIMING"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING.RGV_O15_TIMING_ENCODED"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_TIMING_GIVE"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL.RGV_O15_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL.RGV_O15_ORDER_DETAIL_SUPPLEMENT.RGV_O15_COMPONENTS"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_ENCODING"
                }
        ],
        "RXG": [
                {
                        "name": "RXG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_OBSERVATION"
                }
        ]
},
    groups: {
        "RGV_O15_PATIENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
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
        "RGV_O15_PATIENT.RGV_O15_PATIENT_VISIT": {
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
        "RGV_O15_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
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
        "RGV_O15_ORDER.RGV_O15_TIMING": {
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
        "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXO": {
                                "name": "RXO",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL.RGV_O15_ORDER_DETAIL_SUPPLEMENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": -1,
                                "required": true
                        }
                }
        },
        "RGV_O15_ORDER.RGV_O15_ORDER_DETAIL.RGV_O15_ORDER_DETAIL_SUPPLEMENT.RGV_O15_COMPONENTS": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "RXC": {
                                "name": "RXC",
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
        "RGV_O15_ORDER.RGV_O15_ENCODING": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXE": {
                                "name": "RXE",
                                "maxReps": 1,
                                "required": true
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
        "RGV_O15_ORDER.RGV_O15_ENCODING.RGV_O15_TIMING_ENCODED": {
                "maxReps": -1,
                "required": true,
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
        "RGV_O15_ORDER.RGV_O15_GIVE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "RXG": {
                                "name": "RXG",
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
        "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_TIMING_GIVE": {
                "maxReps": -1,
                "required": true,
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
        "RGV_O15_ORDER.RGV_O15_GIVE.RGV_O15_OBSERVATION": {
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
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type RGV_O15 record {
    *hl7v2:Message;
    string name = RGV_O15_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    RGV_O15_PATIENT patient?;
    RGV_O15_ORDER[]'order = [{orc: {}}];
};
