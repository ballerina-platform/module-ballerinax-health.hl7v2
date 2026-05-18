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

public const RAS_O02_MESSAGE_TYPE = "RAS_O02";

# HL7 Message
# + name - Message name
# + msh - MSH
# + nte - NTE
# + patient - RAS_O02_PATIENT Segment Group
# + order - RAS_O02_ORDER Segment Group

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
                        "segmentComponentName": "RAS_O02_PATIENT",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL.RAS_O02_ORDER_DETAIL_SUPPLEMENT",
                        "required": true
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL.RAS_O02_ORDER_DETAIL_SUPPLEMENT.RAS_O02_COMPONENTS",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_OBSERVATION",
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_PATIENT",
                        "required": true
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_PATIENT",
                        "required": false
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_PATIENT",
                        "required": false
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_ORDER",
                        "required": true
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL",
                        "required": true
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL.RAS_O02_ORDER_DETAIL_SUPPLEMENT",
                        "required": true
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ENCODING",
                        "required": true
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_ORDER",
                        "required": true
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL.RAS_O02_ORDER_DETAIL_SUPPLEMENT.RAS_O02_COMPONENTS",
                        "required": true
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ENCODING",
                        "required": false
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_ENCODING",
                        "required": true
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": -1,
                        "segmentComponentName": "RAS_O02_ORDER",
                        "required": true
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "segmentComponentName": "RAS_O02_ORDER.RAS_O02_OBSERVATION",
                        "required": true
                }
        ]
    },
    groups: {
        "RAS_O02_PATIENT": {
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
        "RAS_O02_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXA": {
                                "name": "RXA",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL": {
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
        "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL.RAS_O02_ORDER_DETAIL_SUPPLEMENT": {
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
        "RAS_O02_ORDER.RAS_O02_ORDER_DETAIL.RAS_O02_ORDER_DETAIL_SUPPLEMENT.RAS_O02_COMPONENTS": {
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
        "RAS_O02_ORDER.RAS_O02_ENCODING": {
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
        "RAS_O02_ORDER.RAS_O02_OBSERVATION": {
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
public type RAS_O02 record {
    *hl7v2:Message;
    string name = RAS_O02_MESSAGE_TYPE;
    MSH msh = {};
    NTE[] nte = [];
    RAS_O02_PATIENT patient?;
    RAS_O02_ORDER[] 'order = [{orc: {}, rxa: [{}], rxr: {}}];
};
