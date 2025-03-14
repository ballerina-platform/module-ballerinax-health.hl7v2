
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

public const RAS_O17_MESSAGE_TYPE = "RAS_O17";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + patient - RAS_O17_PATIENT Segment Group
# + order - RAS_O17_ORDER Segment Group

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
                        "segmentComponentName": "RAS_O17_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL.RAS_O17_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL.RAS_O17_ORDER_DETAIL_SUPPLEMENT.RAS_O17_COMPONENTS"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ADMINISTRATION.RAS_O17_OBSERVATION"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_PATIENT.RAS_O17_ADDITIONAL_DEMOGRAPHICS"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_PATIENT.RAS_O17_ADDITIONAL_DEMOGRAPHICS"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_PATIENT.RAS_O17_PATIENT_VISIT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ADMINISTRATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ADMINISTRATION.RAS_O17_OBSERVATION"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_PATIENT.RAS_O17_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_PATIENT.RAS_O17_PATIENT_VISIT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_TIMING"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING.RAS_O17_TIMING_ENCODED"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_TIMING"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING.RAS_O17_TIMING_ENCODED"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL.RAS_O17_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING"
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ADMINISTRATION"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL.RAS_O17_ORDER_DETAIL_SUPPLEMENT.RAS_O17_COMPONENTS"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ENCODING"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ADMINISTRATION"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RAS_O17_ORDER.RAS_O17_ADMINISTRATION.RAS_O17_OBSERVATION"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RAS_O17_ORDER"
                }
        ]
},
    groups: {
        "RAS_O17_PATIENT": {
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
        "RAS_O17_PATIENT.RAS_O17_ADDITIONAL_DEMOGRAPHICS": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PD1": {
                                "name": "PD1",
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
        "RAS_O17_PATIENT.RAS_O17_PATIENT_VISIT": {
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
        "RAS_O17_ORDER": {
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
                        },
                        "CTI": {
                                "name": "CTI",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RAS_O17_ORDER.RAS_O17_TIMING": {
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
        "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL": {
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
        "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL.RAS_O17_ORDER_DETAIL_SUPPLEMENT": {
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
        "RAS_O17_ORDER.RAS_O17_ORDER_DETAIL.RAS_O17_ORDER_DETAIL_SUPPLEMENT.RAS_O17_COMPONENTS": {
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
        "RAS_O17_ORDER.RAS_O17_ENCODING": {
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
        "RAS_O17_ORDER.RAS_O17_ENCODING.RAS_O17_TIMING_ENCODED": {
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
        "RAS_O17_ORDER.RAS_O17_ADMINISTRATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "RXA": {
                                "name": "RXA",
                                "maxReps": -1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RAS_O17_ORDER.RAS_O17_ADMINISTRATION.RAS_O17_OBSERVATION": {
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
public type RAS_O17 record {
    *hl7v2:Message;
    string name = RAS_O17_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    RAS_O17_PATIENT patient?;
    RAS_O17_ORDER[] 'order = [{orc: {}}];
};
