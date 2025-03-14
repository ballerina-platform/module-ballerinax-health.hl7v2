
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

public const OPU_R25_MESSAGE_TYPE = "OPU_R25";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + pv1 - PV1
# + pv2 - PV2
# + prt - PRT
# + patient_visit_observation - OPU_R25_PATIENT_VISIT_OBSERVATION Segment Group
# + accession_detail - OPU_R25_ACCESSION_DETAIL Segment Group

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
                        "segmentComponentName": "OPU_R25_PATIENT_VISIT_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT.OPU_R25_PATIENT_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_RESULT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
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
                        "segmentComponentName": "OPU_R25_PATIENT_VISIT_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT.OPU_R25_PATIENT_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_RESULT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_PATIENT_VISIT_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT.OPU_R25_PATIENT_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_RESULT"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_CONTAINER"
                }
        ],
        "INV": [
                {
                        "name": "INV",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_CONTAINER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_TIMING_QTY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_TIMING_QTY"
                }
        ]
},
    groups: {
        "OPU_R25_PATIENT_VISIT_OBSERVATION": {
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
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": true
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT": {
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
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_PATIENT.OPU_R25_PATIENT_OBSERVATION": {
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
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SPM": {
                                "name": "SPM",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_SPECIMEN_OBSERVATION": {
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
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_CONTAINER": {
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
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER": {
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
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_TIMING_QTY": {
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
        "OPU_R25_ACCESSION_DETAIL.OPU_R25_SPECIMEN.OPU_R25_ORDER.OPU_R25_RESULT": {
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
public type OPU_R25 record {
    *hl7v2:Message;
    string name = OPU_R25_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE nte?;
    PV1 pv1;
    PV2 pv2?;
    PRT[] prt = [];
    OPU_R25_PATIENT_VISIT_OBSERVATION[] patient_visit_observation = [{obx: {}}];
    OPU_R25_ACCESSION_DETAIL[] accession_detail = [{}];
};
