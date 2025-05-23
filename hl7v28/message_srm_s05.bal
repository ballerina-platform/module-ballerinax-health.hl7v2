
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

public const SRM_S05_MESSAGE_TYPE = "SRM_S05";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + arq - ARQ
# + apr - APR
# + nte - NTE
# + patient - SRM_S05_PATIENT Segment Group
# + resources - SRM_S05_RESOURCES Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ARQ": [
                {
                        "name": "ARQ",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "APR": [
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_SERVICE"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_GENERAL_RESOURCE"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_LOCATION_RESOURCE"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_PERSONNEL_RESOURCE"
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
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_SERVICE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_GENERAL_RESOURCE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_LOCATION_RESOURCE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_PERSONNEL_RESOURCE"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_PATIENT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_PATIENT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_PATIENT.SRM_S05_OBSERVATION"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_PATIENT.SRM_S05_OBSERVATION"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRM_S05_PATIENT"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_SERVICE"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_GENERAL_RESOURCE"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_LOCATION_RESOURCE"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRM_S05_RESOURCES.SRM_S05_PERSONNEL_RESOURCE"
                }
        ]
},
    groups: {
        "SRM_S05_PATIENT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": false
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
                                "required": false
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "SRM_S05_PATIENT.SRM_S05_OBSERVATION": {
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
        "SRM_S05_RESOURCES": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "RGS": {
                                "name": "RGS",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "SRM_S05_RESOURCES.SRM_S05_SERVICE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIS": {
                                "name": "AIS",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
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
        "SRM_S05_RESOURCES.SRM_S05_GENERAL_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIG": {
                                "name": "AIG",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
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
        "SRM_S05_RESOURCES.SRM_S05_LOCATION_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIL": {
                                "name": "AIL",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
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
        "SRM_S05_RESOURCES.SRM_S05_PERSONNEL_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIP": {
                                "name": "AIP",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
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
public type SRM_S05 record {
    *hl7v2:Message;
    string name = SRM_S05_MESSAGE_TYPE;
    MSH msh;
    ARQ arq;
    APR apr?;
    NTE[] nte = [];
    SRM_S05_PATIENT[] patient = [{pid: {}}];
    SRM_S05_RESOURCES[] resources = [{rgs: {}}];
};
