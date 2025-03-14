
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

public const RGV_O01_MESSAGE_TYPE = "RGV_O01";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + nte - NTE
# + patient - RGV_O01_PATIENT Segment Group
# + order - RGV_O01_ORDER Segment Group

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
                        "segmentComponentName": "RGV_O01_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL.RGV_O01_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL.RGV_O01_ORDER_DETAIL_SUPPLEMENT.RGV_O01_COMPONENTS"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_GIVE.RGV_O01_OBSERVATION"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_PATIENT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_PATIENT.RGV_O01_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_PATIENT.RGV_O01_PATIENT_VISIT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL.RGV_O01_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ENCODING"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_GIVE"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL.RGV_O01_ORDER_DETAIL_SUPPLEMENT.RGV_O01_COMPONENTS"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ENCODING"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_GIVE"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_ENCODING"
                }
        ],
        "RXG": [
                {
                        "name": "RXG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_GIVE"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RGV_O01_ORDER.RGV_O01_GIVE.RGV_O01_OBSERVATION"
                }
        ]
},
    groups: {
        "RGV_O01_PATIENT": {
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
        "RGV_O01_PATIENT.RGV_O01_PATIENT_VISIT": {
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
        "RGV_O01_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL": {
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
        "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL.RGV_O01_ORDER_DETAIL_SUPPLEMENT": {
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
        "RGV_O01_ORDER.RGV_O01_ORDER_DETAIL.RGV_O01_ORDER_DETAIL_SUPPLEMENT.RGV_O01_COMPONENTS": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXC": {
                                "name": "RXC",
                                "maxReps": -1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RGV_O01_ORDER.RGV_O01_ENCODING": {
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
        "RGV_O01_ORDER.RGV_O01_GIVE": {
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
        "RGV_O01_ORDER.RGV_O01_GIVE.RGV_O01_OBSERVATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
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
public type RGV_O01 record {
    *hl7v2:Message;
    string name = RGV_O01_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    RGV_O01_PATIENT patient?;
    RGV_O01_ORDER[] 'order = [{orc: {}}];
};
