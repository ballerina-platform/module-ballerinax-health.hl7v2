
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

public const OSM_R26_MESSAGE_TYPE = "OSM_R26";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + shipment - OSM_R26_SHIPMENT Segment Group

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
        "SHP": [
                {
                        "name": "SHP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_SHIPPING_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_CONTAINER.OSM_R26_CONTAINER_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION.OSM_R26_PATIENT_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION.OSM_R26_PATIENT_VISIT_OBSERVATION"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_SHIPPING_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SPECIMEN_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_CONTAINER.OSM_R26_CONTAINER_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION.OSM_R26_PATIENT_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION.OSM_R26_PATIENT_VISIT_OBSERVATION"
                }
        ],
        "PAC": [
                {
                        "name": "PAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_CONTAINER"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION"
                },
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION"
                }
        ],
        "ARV": [
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION"
                },
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION"
                }
        ]
},
    groups: {
        "OSM_R26_SHIPMENT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SHP": {
                                "name": "SHP",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": true
                        }
                }
        },
        "OSM_R26_SHIPMENT.OSM_R26_SHIPPING_OBSERVATION": {
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
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PAC": {
                                "name": "PAC",
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
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SPM": {
                                "name": "SPM",
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
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SPECIMEN_OBSERVATION": {
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
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_CONTAINER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_CONTAINER.OSM_R26_CONTAINER_OBSERVATION": {
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
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "ARV": {
                                "name": "ARV",
                                "maxReps": -1,
                                "required": false
                        },
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_PERSON_ANIMAL_IDENTIFICATION.OSM_R26_PATIENT_OBSERVATION": {
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
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": false
                        },
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OSM_R26_SHIPMENT.OSM_R26_PACKAGE.OSM_R26_SPECIMEN.OSM_R26_SUBJECT_POPULATION_LOCATION_IDENTIFICATION.OSM_R26_PATIENT_VISIT_OBSERVATION": {
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
        }
}
}
public type OSM_R26 record {
    *hl7v2:Message;
    string name = OSM_R26_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    OSM_R26_SHIPMENT[] shipment = [{shp: {}}];
};
