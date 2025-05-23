
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

public const CSU_C11_MESSAGE_TYPE = "CSU_C11";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + patient - CSU_C11_PATIENT Segment Group

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
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_VISIT"
                }
        ],
        "CSR": [
                {
                        "name": "CSR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT"
                }
        ],
        "CSP": [
                {
                        "name": "CSP",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE"
                }
        ],
        "CSS": [
                {
                        "name": "CSS",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_PHARM"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION.CSU_C11_TIMING_QTY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION.CSU_C11_TIMING_QTY"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_PHARM.CSU_C11_RX_ADMIN"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_PHARM.CSU_C11_RX_ADMIN"
                }
        ]
},
    groups: {
        "CSU_C11_PATIENT": {
                "maxReps": -1,
                "required": true,
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
                        "CSR": {
                                "name": "CSR",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "CSU_C11_PATIENT.CSU_C11_VISIT": {
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
        "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "CSP": {
                                "name": "CSP",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "CSS": {
                                "name": "CSS",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        },
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": true
                        }
                }
        },
        "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_OBSERVATION.CSU_C11_TIMING_QTY": {
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
        "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_PHARM": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "CSU_C11_PATIENT.CSU_C11_STUDY_PHASE.CSU_C11_STUDY_SCHEDULE.CSU_C11_STUDY_PHARM.CSU_C11_RX_ADMIN": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "RXA": {
                                "name": "RXA",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type CSU_C11 record {
    *hl7v2:Message;
    string name = CSU_C11_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    CSU_C11_PATIENT[] patient = [{pid: {}, csr: {}}];
};
