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

public const ORR_O02_MESSAGE_TYPE = "ORR_O02";

# HL7 Message
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + nte - NTE
# + patient - ORR_O02_PATIENT Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "MSA": [
                {
                        "name": "MSA",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ERR": [
                {
                        "name": "ERR",
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
                        "segmentComponentName": "ORR_O02_PATIENT",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL",
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT",
                        "required": false
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER",
                        "required": true
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "RQD": [
                {
                        "name": "RQD",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "RQ1": [
                {
                        "name": "RQ1",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ],
        "ODT": [
                {
                        "name": "ODT",
                        "maxReps": 1,
                        "segmentComponentName": "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT",
                        "required": false
                }
        ]
    },
    groups: {
        "ORR_O02_PATIENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
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
        "ORR_O02_PATIENT.ORR_O02_ORDER": {
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
        "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL": {
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
        "ORR_O02_PATIENT.ORR_O02_ORDER.ORR_O02_ORDER_DETAIL.ORR_O02_ORDER_DETAIL_SEGMENT": {
                "maxReps": 1,
                "required": false,
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
        }
    }
}
public type ORR_O02 record {
    *hl7v2:Message;
    string name = ORR_O02_MESSAGE_TYPE;
    MSH msh = {};
    MSA msa = {};
    ERR err?;
    NTE[] nte = [];
    ORR_O02_PATIENT patient?;
};
