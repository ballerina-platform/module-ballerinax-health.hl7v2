
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

public const ORU_R31_MESSAGE_TYPE = "ORU_R31";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + pid - PID
# + pd1 - PD1
# + prt - PRT
# + arv - ARV
# + orc - ORC
# + obr - OBR
# + nte - NTE
# + patient_observation - ORU_R31_PATIENT_OBSERVATION Segment Group
# + visit - ORU_R31_VISIT Segment Group
# + observation - ORU_R31_OBSERVATION Segment Group
# + timing_qty - ORU_R31_TIMING_QTY Segment Group

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
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORU_R31_PATIENT_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORU_R31_VISIT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORU_R31_OBSERVATION"
                }
        ],
        "ARV": [
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORU_R31_PATIENT_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORU_R31_OBSERVATION"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORU_R31_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "ORU_R31_VISIT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
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
                        "segmentComponentName": "ORU_R31_OBSERVATION"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORU_R31_TIMING_QTY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORU_R31_TIMING_QTY"
                }
        ]
},
    groups: {
        "ORU_R31_PATIENT_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "ORU_R31_VISIT": {
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
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "ORU_R31_TIMING_QTY": {
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
        "ORU_R31_OBSERVATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
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
public type ORU_R31 record {
    *hl7v2:Message;
    string name = ORU_R31_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    PID pid;
    PD1 pd1?;
    PRT[] prt = [];
    ARV[] arv = [];
    ORC orc;
    OBR obr;
    NTE[] nte = [];
    ORU_R31_PATIENT_OBSERVATION[] patient_observation = [{obx: {}}];
    ORU_R31_VISIT visit?;
    ORU_R31_OBSERVATION[] observation = [{obx: {}}];
    ORU_R31_TIMING_QTY[] timing_qty = [{tq1: {}}];
};
