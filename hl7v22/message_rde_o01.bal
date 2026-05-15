// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

public const RDE_O01_MESSAGE_TYPE = "RDE_O01";

# HL7 Message
# + name - Message name
# + msh - MSH
# + nte - NTE
# + patient - RDE_O01_PATIENT Segment Group
# + order - RDE_O01_ORDER Segment Group

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
                        "segmentComponentName": "RDE_O01_PATIENT",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL.RDE_O01_COMPONENT",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_OBSERVATION",
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "segmentComponentName": "RDE_O01_PATIENT",
                        "required": true
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_PATIENT",
                        "required": false
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "segmentComponentName": "RDE_O01_PATIENT",
                        "required": false
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "segmentComponentName": "RDE_O01_ORDER",
                        "required": true
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL",
                        "required": true
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL",
                        "required": true
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER",
                        "required": true
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL.RDE_O01_COMPONENT",
                        "required": true
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "segmentComponentName": "RDE_O01_ORDER",
                        "required": false
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "segmentComponentName": "RDE_O01_ORDER",
                        "required": true
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "segmentComponentName": "RDE_O01_ORDER.RDE_O01_OBSERVATION",
                        "required": false
                }
        ]
    },
    groups: {
        "RDE_O01_PATIENT": {
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
                        },
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "RDE_O01_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
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
        "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXO": {
                                "name": "RXO",
                                "maxReps": 1,
                                "required": true
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
                        }
                }
        },
        "RDE_O01_ORDER.RDE_O01_ORDER_DETAIL.RDE_O01_COMPONENT": {
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
        "RDE_O01_ORDER.RDE_O01_OBSERVATION": {
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
public type RDE_O01 record {
    *hl7v2:Message;
    string name = RDE_O01_MESSAGE_TYPE;
    MSH msh = {};
    NTE[] nte = [];
    RDE_O01_PATIENT patient?;
    RDE_O01_ORDER[] 'order = [{orc: {}}];
};
