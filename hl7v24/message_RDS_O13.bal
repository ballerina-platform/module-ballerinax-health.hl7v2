
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

public const RDS_O13_MESSAGE_TYPE = "RDS_O13";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + nte - NTE
# + patient - RDS_O13_PATIENT Segment Group
# + order - RDS_O13_ORDER Segment Group

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
                        "segmentComponentName": "RDS_O13_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL.RDS_O13_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL.RDS_O13_ORDER_DETAIL_SUPPLEMENT.RDS_O13_COMPONENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_OBSERVATION"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_PATIENT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_PATIENT.RDS_O13_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_PATIENT.RDS_O13_PATIENT_VISIT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL.RDS_O13_ORDER_DETAIL_SUPPLEMENT"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ENCODING"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL.RDS_O13_ORDER_DETAIL_SUPPLEMENT.RDS_O13_COMPONENT"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ENCODING"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_ORDER"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_ENCODING"
                }
        ],
        "RXD": [
                {
                        "name": "RXD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RDS_O13_ORDER.RDS_O13_OBSERVATION"
                }
        ],
        "FT1": [
                {
                        "name": "FT1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RDS_O13_ORDER"
                }
        ]
},
    groups: {
        "RDS_O13_PATIENT": {
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
                        "AL1": {
                                "name": "AL1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RDS_O13_PATIENT.RDS_O13_PATIENT_VISIT": {
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
        "RDS_O13_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXD": {
                                "name": "RXD",
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
                        "FT1": {
                                "name": "FT1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL": {
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
        "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL.RDS_O13_ORDER_DETAIL_SUPPLEMENT": {
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
        "RDS_O13_ORDER.RDS_O13_ORDER_DETAIL.RDS_O13_ORDER_DETAIL_SUPPLEMENT.RDS_O13_COMPONENT": {
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
        "RDS_O13_ORDER.RDS_O13_ENCODING": {
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
        "RDS_O13_ORDER.RDS_O13_OBSERVATION": {
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
        }
}
}
public type RDS_O13 record {
    *hl7v2:Message;
    string name = RDS_O13_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    RDS_O13_PATIENT patient?;
    RDS_O13_ORDER[] 'order =[{orc: {}, rxd: {}}];
};
