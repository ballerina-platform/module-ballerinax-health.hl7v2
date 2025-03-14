
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

public const OUL_R22_MESSAGE_TYPE = "OUL_R22";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + nte - NTE
# + dsc - DSC
# + patient - OUL_R22_PATIENT Segment Group
# + visit - OUL_R22_VISIT Segment Group
# + specimen - OUL_R22_SPECIMEN Segment Group

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
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": 1,
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_RESULT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_VISIT"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_SPECIMEN"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_RESULT"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_CONTAINER"
                }
        ],
        "INV": [
                {
                        "name": "INV",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_CONTAINER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_TIMING_QTY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_TIMING_QTY"
                }
        ],
        "TCD": [
                {
                        "name": "TCD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_RESULT"
                }
        ],
        "SID": [
                {
                        "name": "SID",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_RESULT"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OUL_R22_SPECIMEN.OUL_R22_ORDER"
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
        "OUL_R22_PATIENT": {
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
                        }
                }
        },
        "OUL_R22_VISIT": {
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
        "OUL_R22_SPECIMEN": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SPM": {
                                "name": "SPM",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OUL_R22_SPECIMEN.OUL_R22_CONTAINER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        },
                        "INV": {
                                "name": "INV",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "OUL_R22_SPECIMEN.OUL_R22_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "CTI": {
                                "name": "CTI",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_TIMING_QTY": {
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
        "OUL_R22_SPECIMEN.OUL_R22_ORDER.OUL_R22_RESULT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "TCD": {
                                "name": "TCD",
                                "maxReps": 1,
                                "required": false
                        },
                        "SID": {
                                "name": "SID",
                                "maxReps": -1,
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
public type OUL_R22 record {
    *hl7v2:Message;
    string name = OUL_R22_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE nte?;
    DSC dsc?;
    OUL_R22_PATIENT patient?;
    OUL_R22_VISIT visit?;
    OUL_R22_SPECIMEN[] specimen = [{spm: {}}];
};
