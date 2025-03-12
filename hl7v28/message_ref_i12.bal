
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

public const REF_I12_MESSAGE_TYPE = "REF_I12";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + rf1 - RF1
# + pid - PID
# + nk1 - NK1
# + gt1 - GT1
# + acc - ACC
# + dg1 - DG1
# + drg - DRG
# + al1 - AL1
# + nte - NTE
# + authorization_contact - REF_I12_AUTHORIZATION_CONTACT Segment Group
# + provider_contact - REF_I12_PROVIDER_CONTACT Segment Group
# + insurance - REF_I12_INSURANCE Segment Group
# + procedure - REF_I12_PROCEDURE Segment Group
# + observation - REF_I12_OBSERVATION Segment Group
# + patient_visit - REF_I12_PATIENT_VISIT Segment Group

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
                        "segmentComponentName": "REF_I12_AUTHORIZATION_CONTACT"
                },
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "REF_I12_PROCEDURE.REF_I12_AUTHORIZATION_CONTACT2"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "REF_I12_AUTHORIZATION_CONTACT"
                },
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "REF_I12_PROVIDER_CONTACT"
                },
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "REF_I12_PROCEDURE.REF_I12_AUTHORIZATION_CONTACT2"
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "REF_I12_PROVIDER_CONTACT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "REF_I12_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "REF_I12_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "REF_I12_INSURANCE"
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
                        "segmentComponentName": "REF_I12_PROCEDURE"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "REF_I12_OBSERVATION"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "REF_I12_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "REF_I12_OBSERVATION.REF_I12_RESULTS_NOTES"
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
                        "segmentComponentName": "REF_I12_OBSERVATION.REF_I12_RESULTS_NOTES"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "REF_I12_OBSERVATION.REF_I12_RESULTS_NOTES"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "REF_I12_PATIENT_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "REF_I12_PATIENT_VISIT"
                }
        ]
},
    groups: {
        "REF_I12_AUTHORIZATION_CONTACT": {
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
        "REF_I12_PROVIDER_CONTACT": {
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
        "REF_I12_INSURANCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "IN1": {
                                "name": "IN1",
                                "maxReps": 1,
                                "required": true
                        },
                        "IN2": {
                                "name": "IN2",
                                "maxReps": 1,
                                "required": false
                        },
                        "IN3": {
                                "name": "IN3",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "REF_I12_PROCEDURE": {
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
        "REF_I12_PROCEDURE.REF_I12_AUTHORIZATION_CONTACT2": {
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
        "REF_I12_OBSERVATION": {
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
        "REF_I12_OBSERVATION.REF_I12_RESULTS_NOTES": {
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
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "REF_I12_PATIENT_VISIT": {
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
public type REF_I12 record {
    *hl7v2:Message;
    string name = REF_I12_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    RF1 rf1?;
    PID pid;
    NK1[] nk1 = [];
    GT1[] gt1 = [];
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    NTE[] nte = [];
    REF_I12_AUTHORIZATION_CONTACT authorization_contact?;
    REF_I12_PROVIDER_CONTACT[] provider_contact = [{prd: {}}];
    REF_I12_INSURANCE[] insurance = [{in1: {}}];
    REF_I12_PROCEDURE[] procedure = [{pr1: {}}];
    REF_I12_OBSERVATION[] observation = [{obr: {}}];
    REF_I12_PATIENT_VISIT patient_visit?;
};
