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

public const ORM_O01_MESSAGE_TYPE = "ORM_O01";

# HL7 Message
# + name - Message name
# + msh - MSH
# + nte - NTE
# + patient - ORM_O01_PATIENT Segment Group
# + order - ORM_O01_ORDER Segment Group

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
                        "segmentComponentName": "ORM_O01_PATIENT",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_OBSERVATION",
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_PATIENT",
                        "required": true
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "segmentComponentName": "ORM_O01_PATIENT",
                        "required": false
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_PATIENT",
                        "required": false
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER",
                        "required": true
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "RQD": [
                {
                        "name": "RQD",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "RQ1": [
                {
                        "name": "RQ1",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "ODT": [
                {
                        "name": "ODT",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_OBSERVATION",
                        "required": true
                }
        ],
        "BLG": [
                {
                        "name": "BLG",
                        "maxReps": 1,
                        "segmentComponentName": "ORM_O01_ORDER",
                        "required": false
                }
        ]
    },
    groups: {
        "ORM_O01_PATIENT": {
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
        "ORM_O01_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "BLG": {
                                "name": "BLG",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT": {
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
        "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_OBSERVATION": {
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
public type ORM_O01 record {
    *hl7v2:Message;
    string name = ORM_O01_MESSAGE_TYPE;
    MSH msh = {};
    NTE[] nte = [];
    ORM_O01_PATIENT patient?;
    ORM_O01_ORDER[] 'order = [{orc: {}}];
};
