
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

public const ORL_O40_MESSAGE_TYPE = "ORL_O40";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + response - ORL_O40_RESPONSE Segment Group

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
                        "maxReps": -1,
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_TIMING"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_TIMING"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST"
                }
        ],
        "SHP": [
                {
                        "name": "SHP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT"
                }
        ],
        "PAC": [
                {
                        "name": "PAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT.ORL_O40_PACKAGE"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT.ORL_O40_PACKAGE.ORL_O40_SPECIMEN_IN_PACKAGE"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT.ORL_O40_PACKAGE.ORL_O40_SPECIMEN_IN_PACKAGE.ORL_O40_SPECIMEN_CONTAINER_IN_PACKAGE"
                }
        ]
},
    groups: {
        "ORL_O40_RESPONSE": {
                "maxReps": 1,
                "required": false,
                "segments": {}
        },
        "ORL_O40_RESPONSE.ORL_O40_PATIENT": {
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
                        }
                }
        },
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
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
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_TIMING": {
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
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OBR": {
                                "name": "OBR",
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
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SHP": {
                                "name": "SHP",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT.ORL_O40_PACKAGE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PAC": {
                                "name": "PAC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT.ORL_O40_PACKAGE.ORL_O40_SPECIMEN_IN_PACKAGE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SPM": {
                                "name": "SPM",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "ORL_O40_RESPONSE.ORL_O40_PATIENT.ORL_O40_ORDER.ORL_O40_OBSERVATION_REQUEST.ORL_O40_SPECIMEN_SHIPMENT.ORL_O40_PACKAGE.ORL_O40_SPECIMEN_IN_PACKAGE.ORL_O40_SPECIMEN_CONTAINER_IN_PACKAGE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type ORL_O40 record {
    *hl7v2:Message;
    string name = ORL_O40_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    ORL_O40_RESPONSE response?;

};
