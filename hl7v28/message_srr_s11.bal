
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

public const SRR_S11_MESSAGE_TYPE = "SRR_S11";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + schedule - SRR_S11_SCHEDULE Segment Group

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
        "SCH": [
                {
                        "name": "SCH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_SERVICE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_GENERAL_RESOURCE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_LOCATION_RESOURCE"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_PERSONNEL_RESOURCE"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_PATIENT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_PATIENT"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_PATIENT"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_SERVICE"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_GENERAL_RESOURCE"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_LOCATION_RESOURCE"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_PERSONNEL_RESOURCE"
                }
        ]
},
    groups: {
        "SRR_S11_SCHEDULE": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "SCH": {
                                "name": "SCH",
                                "maxReps": 1,
                                "required": true
                        },
                        "TQ1": {
                                "name": "TQ1",
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
        "SRR_S11_SCHEDULE.SRR_S11_PATIENT": {
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
        "SRR_S11_SCHEDULE.SRR_S11_RESOURCES": {
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
        "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_SERVICE": {
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
        "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_GENERAL_RESOURCE": {
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
        "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_LOCATION_RESOURCE": {
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
        "SRR_S11_SCHEDULE.SRR_S11_RESOURCES.SRR_S11_PERSONNEL_RESOURCE": {
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
public type SRR_S11 record {
    *hl7v2:Message;
    string name = SRR_S11_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SRR_S11_SCHEDULE schedule?;
};
