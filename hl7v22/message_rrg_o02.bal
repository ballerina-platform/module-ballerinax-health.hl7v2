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

public const RRG_O02_MESSAGE_TYPE = "RRG_O02";

# HL7 Message
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + nte - NTE
# + patient - RRG_O02_PATIENT Segment Group

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
                        "segmentComponentName": "RRG_O02_PATIENT",
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "segmentComponentName": "RRG_O02_PATIENT",
                        "required": false
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "segmentComponentName": "RRG_O02_PATIENT.RRG_O02_ORDER",
                        "required": true
                }
        ],
        "RXG": [
                {
                        "name": "RXG",
                        "maxReps": 1,
                        "segmentComponentName": "RRG_O02_PATIENT.RRG_O02_ORDER.RRG_O02_ORDER_DETAIL",
                        "required": true
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "segmentComponentName": "RRG_O02_PATIENT.RRG_O02_ORDER.RRG_O02_ORDER_DETAIL",
                        "required": true
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "segmentComponentName": "RRG_O02_PATIENT.RRG_O02_ORDER.RRG_O02_ORDER_DETAIL",
                        "required": false
                }
        ]
    },
    groups: {
        "RRG_O02_PATIENT": {
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
        "RRG_O02_PATIENT.RRG_O02_ORDER": {
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
        "RRG_O02_PATIENT.RRG_O02_ORDER.RRG_O02_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
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
        }
    }
}
public type RRG_O02 record {
    *hl7v2:Message;
    string name = RRG_O02_MESSAGE_TYPE;
    MSH msh = {};
    MSA msa = {};
    ERR err?;
    NTE[] nte = [];
    RRG_O02_PATIENT patient?;
};
