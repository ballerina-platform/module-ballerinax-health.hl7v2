
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

public const RSP_Z86_MESSAGE_TYPE = "RSP_Z86";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + qak - QAK
# + qpd - QPD
# + dsc - DSC

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
        "QAK": [
                {
                        "name": "QAK",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QPD": [
                {
                        "name": "QPD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_PATIENT"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_OBSERVATION"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_PATIENT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_TIMING"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER.RSP_Z86_TIMING_ENCODED"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_TIMING"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER.RSP_Z86_TIMING_ENCODED"
                }
        ],
        "RXO": [
                {
                        "name": "RXO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ORDER_DETAIL"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ORDER_DETAIL"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_DISPENSE"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_GIVE"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ADMINISTRATION"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ORDER_DETAIL"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_DISPENSE"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_GIVE"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ADMINISTRATION"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER"
                }
        ],
        "RXD": [
                {
                        "name": "RXD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_DISPENSE"
                }
        ],
        "RXG": [
                {
                        "name": "RXG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_GIVE"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ADMINISTRATION"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_OBSERVATION"
                }
        ],
        "DSC": [
                {
                        "name": "DSC",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {
        "RSP_Z86_QUERY_RESPONSE": {
                "maxReps": -1,
                "required": true,
                "segments": {}
        },
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_PATIENT": {
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER": {
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_TIMING": {
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ORDER_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXO": {
                                "name": "RXO",
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER": {
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ENCODED_ORDER.RSP_Z86_TIMING_ENCODED": {
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_DISPENSE": {
                "maxReps": 1,
                "required": false,
                "segments": {
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
                        }
                }
        },
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_GIVE": {
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
        },
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_ADMINISTRATION": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXA": {
                                "name": "RXA",
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
        "RSP_Z86_QUERY_RESPONSE.RSP_Z86_COMMON_ORDER.RSP_Z86_OBSERVATION": {
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
public type RSP_Z86 record {
    *hl7v2:Message;
    string name = RSP_Z86_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR err?;
    QAK qak;
    QPD qpd;
    DSC dsc?;

};
