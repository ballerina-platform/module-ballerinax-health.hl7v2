
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

public const OPR_O38_MESSAGE_TYPE = "OPR_O38";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + sft - SFT
# + uac - UAC
# + nte - NTE
# + response - OPR_O38_RESPONSE Segment Group

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
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_OBSERVATION_REQUEST"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_OBSERVATION_REQUEST"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_OBSERVATION_REQUEST"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_TIMING"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_TIMING"
                }
        ]
},
    groups: {
        "OPR_O38_RESPONSE": {
                "maxReps": 1,
                "required": false,
                "segments": {}
        },
        "OPR_O38_RESPONSE.OPR_O38_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": true
                        },
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN": {
                "maxReps": -1,
                "required": false,
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
                        },
                        "SAC": {
                                "name": "SAC",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_OBSERVATION_REQUEST": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
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
                        }
                }
        },
        "OPR_O38_RESPONSE.OPR_O38_ORDER.OPR_O38_SPECIMEN.OPR_O38_TIMING": {
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
        }
}
}
public type OPR_O38 record {
    *hl7v2:Message;
    string name = OPR_O38_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    OPR_O38_RESPONSE response?;

};
