
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

public const RQA_I08_MESSAGE_TYPE = "RQA_I08";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + rf1 - RF1
# + pid - PID
# + nk1 - NK1
# + acc - ACC
# + dg1 - DG1
# + drg - DRG
# + al1 - AL1
# + nte - NTE
# + authorization - RQA_I08_AUTHORIZATION Segment Group
# + provider - RQA_I08_PROVIDER Segment Group
# + guarantor_insurance - RQA_I08_GUARANTOR_INSURANCE Segment Group
# + procedure - RQA_I08_PROCEDURE Segment Group
# + observation - RQA_I08_OBSERVATION Segment Group
# + visit - RQA_I08_VISIT Segment Group

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
                        "segmentComponentName": "RQA_I08_AUTHORIZATION"
                },
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQA_I08_PROCEDURE.RQA_I08_AUTHORIZATION"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_AUTHORIZATION"
                },
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_PROVIDER"
                },
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_PROCEDURE.RQA_I08_AUTHORIZATION"
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQA_I08_PROVIDER"
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
                        "required": false,
                        "segmentComponentName": "RQA_I08_GUARANTOR_INSURANCE"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQA_I08_GUARANTOR_INSURANCE.RQA_I08_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_GUARANTOR_INSURANCE.RQA_I08_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_GUARANTOR_INSURANCE.RQA_I08_INSURANCE"
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
                        "segmentComponentName": "RQA_I08_PROCEDURE"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQA_I08_OBSERVATION"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_OBSERVATION.RQA_I08_RESULTS"
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
                        "segmentComponentName": "RQA_I08_OBSERVATION.RQA_I08_RESULTS"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQA_I08_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQA_I08_VISIT"
                }
        ]
},
    groups: {
        "RQA_I08_AUTHORIZATION": {
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
        "RQA_I08_PROVIDER": {
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
        "RQA_I08_GUARANTOR_INSURANCE": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "GT1": {
                                "name": "GT1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RQA_I08_GUARANTOR_INSURANCE.RQA_I08_INSURANCE": {
                "maxReps": -1,
                "required": true,
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
        "RQA_I08_PROCEDURE": {
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
        "RQA_I08_PROCEDURE.RQA_I08_AUTHORIZATION": {
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
        "RQA_I08_OBSERVATION": {
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
        "RQA_I08_OBSERVATION.RQA_I08_RESULTS": {
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
        "RQA_I08_VISIT": {
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
public type RQA_I08 record {
    *hl7v2:Message;
    string name = RQA_I08_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    RF1 rf1?;
    PID pid;
    NK1[] nk1 = [];
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    NTE[] nte = [];
    RQA_I08_AUTHORIZATION authorization?;
    RQA_I08_PROVIDER[] provider = [{prd: {}}];
    RQA_I08_GUARANTOR_INSURANCE guarantor_insurance?;
    RQA_I08_PROCEDURE[] procedure = [{pr1: {}}];
    RQA_I08_OBSERVATION[] observation = [{obr: {}}];
    RQA_I08_VISIT visit?;
};
