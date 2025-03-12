
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

public const RRI_I13_MESSAGE_TYPE = "RRI_I13";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + msa - MSA
# + rf1 - RF1
# + pid - PID
# + acc - ACC
# + dg1 - DG1
# + drg - DRG
# + al1 - AL1
# + nte - NTE
# + authorization_contact - RRI_I13_AUTHORIZATION_CONTACT Segment Group
# + provider_contact - RRI_I13_PROVIDER_CONTACT Segment Group
# + procedure - RRI_I13_PROCEDURE Segment Group
# + observation - RRI_I13_OBSERVATION Segment Group
# + patient_visit - RRI_I13_PATIENT_VISIT Segment Group

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
        "MSA": [
                {
                        "name": "MSA",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "RF1": [
                {
                        "name": "RF1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "AUT": [
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_AUTHORIZATION_CONTACT"
                },
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_PROCEDURE.RRI_I13_AUTHORIZATION_CONTACT"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RRI_I13_AUTHORIZATION_CONTACT"
                },
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RRI_I13_PROVIDER_CONTACT"
                },
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RRI_I13_PROCEDURE.RRI_I13_AUTHORIZATION_CONTACT"
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_PROVIDER_CONTACT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_PROCEDURE"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_OBSERVATION"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RRI_I13_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RRI_I13_OBSERVATION.RRI_I13_RESULTS_NOTES"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_OBSERVATION.RRI_I13_RESULTS_NOTES"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RRI_I13_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RRI_I13_PATIENT_VISIT"
                }
        ]
},
    groups: {
        "RRI_I13_AUTHORIZATION_CONTACT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "AUT": {
                                "name": "AUT",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "RRI_I13_PROVIDER_CONTACT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RRI_I13_PROCEDURE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RRI_I13_PROCEDURE.RRI_I13_AUTHORIZATION_CONTACT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "AUT": {
                                "name": "AUT",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "RRI_I13_OBSERVATION": {
                "maxReps": -1,
                "required": false,
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
        "RRI_I13_OBSERVATION.RRI_I13_RESULTS_NOTES": {
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
        },
        "RRI_I13_PATIENT_VISIT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type RRI_I13 record {
    *hl7v2:Message;
    string name = RRI_I13_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa?;
    RF1 rf1?;
    PID pid;
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    NTE[] nte = [];
    RRI_I13_AUTHORIZATION_CONTACT authorization_contact?;
    RRI_I13_PROVIDER_CONTACT[] provider_contact = [{prd: {}}];
    RRI_I13_PROCEDURE[] procedure = [{pr1: {}}];
    RRI_I13_OBSERVATION[] observation = [{obr: {}}];
    RRI_I13_PATIENT_VISIT patient_visit?;
};
