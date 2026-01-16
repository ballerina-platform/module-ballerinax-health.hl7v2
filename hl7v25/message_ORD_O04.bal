
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

public const ORD_O04_MESSAGE_TYPE = "ORD_O04";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + sft - SFT
# + nte - NTE
# + response - ORD_O04_RESPONSE

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
                        "maxReps": -1,
                        "required": false
                }
        ],
        "SFT": [
                {
                        "name": "SFT",
                        "maxReps": -1,
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
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_PATIENT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET.ORD_O04_TIMING_DIET"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY.ORD_O04_TIMING_TRAY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET.ORD_O04_TIMING_DIET"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY.ORD_O04_TIMING_TRAY"
                }
        ],
        "ODS": [
                {
                        "name": "ODS",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET"
                }
        ],
        "ODT": [
                {
                        "name": "ODT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY"
                }
        ]
},
    groups: {
        "ORD_O04_RESPONSE": {
                "maxReps": 1,
                "required": false,
                "segments": {}
        },
        "ORD_O04_RESPONSE.ORD_O04_PATIENT": {
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
                        }
                }
        },
        "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "ODS": {
                                "name": "ODS",
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
        "ORD_O04_RESPONSE.ORD_O04_ORDER_DIET.ORD_O04_TIMING_DIET": {
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
        "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "ODT": {
                                "name": "ODT",
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
        "ORD_O04_RESPONSE.ORD_O04_ORDER_TRAY.ORD_O04_TIMING_TRAY": {
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
        }
}
}
public type ORD_O04 record {
    *hl7v2:Message;
    string name = ORD_O04_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    NTE[] nte = [];
    ORD_O04_RESPONSE response?;

};
