
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

public const DEO_O45_MESSAGE_TYPE = "DEO_O45";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + stf - STF
# + uac - UAC
# + donnor - DEO_O45_DONNOR Segment Group
# + donnor_order - DEO_O45_DONNOR_ORDER Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "STF": [
                {
                        "name": "STF",
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
                        "segmentComponentName": "DEO_O45_DONNOR"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DEO_O45_DONNOR_ORDER.DEO_O45_DONATION_OBSERVATION"
                }
        ],
        "ARV": [
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR.DEO_O45_DONOR_REGISTRATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR_ORDER.DEO_O45_DONATION_OBSERVATION"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DEO_O45_DONNOR.DEO_O45_DONOR_REGISTRATION"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DEO_O45_DONNOR_ORDER"
                }
        ]
},
    groups: {
        "DEO_O45_DONNOR": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "ARV": {
                                "name": "ARV",
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
        "DEO_O45_DONNOR.DEO_O45_DONOR_REGISTRATION": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PV1": {
                                "name": "PV1",
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
        "DEO_O45_DONNOR_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBR": {
                                "name": "OBR",
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
        "DEO_O45_DONNOR_ORDER.DEO_O45_DONATION_OBSERVATION": {
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
                        }
                }
        }
}
}
public type DEO_O45 record {
    *hl7v2:Message;
    string name = DEO_O45_MESSAGE_TYPE;
    MSH msh;
    STF[] stf = [];
    UAC uac?;
    DEO_O45_DONNOR donnor?;
    DEO_O45_DONNOR_ORDER[] donnor_order = [{obr: {}}];
};
