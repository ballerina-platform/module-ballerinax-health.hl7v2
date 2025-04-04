
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

public const DPR_O48_MESSAGE_TYPE = "DPR_O48";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + stf - STF
# + uac - UAC
# + donnor - DPR_O48_DONNOR Segment Group
# + donation - DPR_O48_DONATION Segment Group
# + donnor_order - DPR_O48_DONNOR_ORDER Segment Group

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
                        "segmentComponentName": "DPR_O48_DONNOR"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR"
                },
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONATION"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR.DPR_O48_DONOR_REGISTRATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONATION.DPR_O48_BLOOD_UNIT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR"
                }
        ],
        "ARV": [
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONNOR.DPR_O48_DONOR_REGISTRATION"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DPR_O48_DONNOR_ORDER"
                }
        ],
        "DON": [
                {
                        "name": "DON",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DPR_O48_DONATION"
                }
        ],
        "BUI": [
                {
                        "name": "BUI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DPR_O48_DONATION.DPR_O48_BLOOD_UNIT"
                }
        ]
},
    groups: {
        "DPR_O48_DONNOR": {
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
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "AL1": {
                                "name": "AL1",
                                "maxReps": -1,
                                "required": false
                        },
                        "ARV": {
                                "name": "ARV",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "DPR_O48_DONNOR.DPR_O48_DONOR_REGISTRATION": {
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
        "DPR_O48_DONNOR_ORDER": {
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
        "DPR_O48_DONATION": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "DON": {
                                "name": "DON",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
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
        "DPR_O48_DONATION.DPR_O48_BLOOD_UNIT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "BUI": {
                                "name": "BUI",
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
public type DPR_O48 record {
    *hl7v2:Message;
    string name = DPR_O48_MESSAGE_TYPE;
    MSH msh;
    STF[] stf = [];
    UAC uac?;
    DPR_O48_DONNOR donnor?;
    DPR_O48_DONATION donation?;
    DPR_O48_DONNOR_ORDER[] donnor_order = [{obr: {}}];
};
