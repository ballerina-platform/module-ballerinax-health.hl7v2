
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

public const SIU_S24_MESSAGE_TYPE = "SIU_S24";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sch - SCH
# + tq1 - TQ1
# + nte - NTE
# + patient - SIU_S24_PATIENT Segment Group
# + resources - SIU_S24_RESOURCES Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "SCH": [
                {
                        "name": "SCH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
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
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_SERVICE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_GENERAL_RESOURCE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_LOCATION_RESOURCE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_PERSONNEL_RESOURCE"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SIU_S24_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_PATIENT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_PATIENT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_PATIENT"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SIU_S24_PATIENT"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SIU_S24_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_SERVICE"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_GENERAL_RESOURCE"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_LOCATION_RESOURCE"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SIU_S24_RESOURCES.SIU_S24_PERSONNEL_RESOURCE"
                }
        ]
},
    groups: {
        "SIU_S24_PATIENT": {
                "maxReps": -1,
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
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "SIU_S24_RESOURCES": {
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
        "SIU_S24_RESOURCES.SIU_S24_SERVICE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIS": {
                                "name": "AIS",
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
        "SIU_S24_RESOURCES.SIU_S24_GENERAL_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIG": {
                                "name": "AIG",
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
        "SIU_S24_RESOURCES.SIU_S24_LOCATION_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIL": {
                                "name": "AIL",
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
        "SIU_S24_RESOURCES.SIU_S24_PERSONNEL_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIP": {
                                "name": "AIP",
                                "maxReps": 1,
                                "required": true
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
public type SIU_S24 record {
    *hl7v2:Message;
    string name = SIU_S24_MESSAGE_TYPE;
    MSH msh;
    SCH sch;
    TQ1[] tq1 = [];
    NTE[] nte = [];
    SIU_S24_PATIENT[] patient = [{pid: {}}];
    SIU_S24_RESOURCES[] resources = [{rgs: {}}];
};
