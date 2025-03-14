
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

public const PEX_P07_MESSAGE_TYPE = "PEX_P07";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + evn - EVN
# + pid - PID
# + pd1 - PD1
# + nte - NTE
# + visit - PEX_P07_VISIT Segment Group
# + experience - PEX_P07_EXPERIENCE Segment Group

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
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
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
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_VISIT"
                }
        ],
        "PES": [
                {
                        "name": "PES",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE"
                }
        ],
        "PEO": [
                {
                        "name": "PEO",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION"
                }
        ],
        "PCR": [
                {
                        "name": "PCR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ORDER"
                },
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ORDER.PEX_P07_TIMING_QTY"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ORDER.PEX_P07_NK1_TIMING_QTY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ORDER.PEX_P07_TIMING_QTY"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ORDER.PEX_P07_NK1_TIMING_QTY"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ORDER"
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ADMINISTRATION"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ORDER"
                },
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ADMIN"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ADMINISTRATION"
                },
                {
                        "name": "RXA",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ADMIN"
                }
        ],
        "PRB": [
                {
                        "name": "PRB",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE"
                },
                {
                        "name": "PRB",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON"
                }
        ],
        "CSR": [
                {
                        "name": "CSR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_STUDY"
                }
        ],
        "CSP": [
                {
                        "name": "CSP",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_STUDY"
                }
        ]
},
    groups: {
        "PEX_P07_VISIT": {
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
        "PEX_P07_EXPERIENCE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PES": {
                                "name": "PES",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PEO": {
                                "name": "PEO",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PCR": {
                                "name": "PCR",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRB": {
                                "name": "PRB",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
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
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ORDER": {
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
                                "required": false
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ORDER.PEX_P07_TIMING_QTY": {
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
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_RX_ADMINISTRATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "RXA": {
                                "name": "RXA",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NK1": {
                                "name": "NK1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRB": {
                                "name": "PRB",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ORDER": {
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
                                "required": false
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ORDER.PEX_P07_NK1_TIMING_QTY": {
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
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_ASSOCIATED_PERSON.PEX_P07_ASSOCIATED_RX_ADMIN": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "RXA": {
                                "name": "RXA",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "PEX_P07_EXPERIENCE.PEX_P07_PEX_OBSERVATION.PEX_P07_PEX_CAUSE.PEX_P07_STUDY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "CSR": {
                                "name": "CSR",
                                "maxReps": 1,
                                "required": true
                        },
                        "CSP": {
                                "name": "CSP",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type PEX_P07 record {
    *hl7v2:Message;
    string name = PEX_P07_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EVN evn;
    PID pid;
    PD1 pd1?;
    NTE[] nte = [];
    PEX_P07_VISIT visit?;
    PEX_P07_EXPERIENCE[] experience = [{pes: {}}];
};
