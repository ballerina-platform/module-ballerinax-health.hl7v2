
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

public const ORL_O22_MESSAGE_TYPE = "ORL_O22";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + nte - NTE

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
                        "maxReps": 1,
                        "required": false
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O22_RESPONSE.ORL_O22_PATIENT"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_CONTAINER"
                },
                {
                        "name": "SAC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_ORDER.ORL_O22_OBSERVATION_REQUEST"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_CONTAINER"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_ORDER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_ORDER.ORL_O22_OBSERVATION_REQUEST"
                }
        ]
},
    groups: {
        "ORL_O22_RESPONSE": {
                "maxReps": 1,
                "required": false,
                "segments": {}
        },
        "ORL_O22_RESPONSE.ORL_O22_PATIENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {}
        },
        "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_CONTAINER": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
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
        "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "ORL_O22_RESPONSE.ORL_O22_PATIENT.ORL_O22_GENERAL_ORDER.ORL_O22_ORDER.ORL_O22_OBSERVATION_REQUEST": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "SAC": {
                                "name": "SAC",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type ORL_O22 record {
    *hl7v2:Message;
    string name = ORL_O22_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    NTE[] nte = [];

};
