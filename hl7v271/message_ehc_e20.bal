
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

public const EHC_E20_MESSAGE_TYPE = "EHC_E20";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + authorization_request - EHC_E20_AUTHORIZATION_REQUEST Segment Group

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
                        "maxReps": -1,
                        "required": false
                }
        ],
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST"
                }
        ],
        "LOC": [
                {
                        "name": "LOC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST"
                },
                {
                        "name": "LOC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PSL_ITEM_INFO"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PSL_ITEM_INFO"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO.EHC_E20_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO.EHC_E20_INSURANCE"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO.EHC_E20_DIAGNOSIS"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO.EHC_E20_DIAGNOSIS"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PSL_ITEM_INFO"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PSL_ITEM_INFO"
                }
        ],
        "ADJ": [
                {
                        "name": "ADJ",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PSL_ITEM_INFO"
                }
        ]
},
    groups: {
        "EHC_E20_AUTHORIZATION_REQUEST": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "IVC": {
                                "name": "IVC",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": -1,
                                "required": true
                        },
                        "LOC": {
                                "name": "LOC",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "ACC": {
                                "name": "ACC",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO.EHC_E20_INSURANCE": {
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
                        }
                }
        },
        "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PAT_INFO.EHC_E20_DIAGNOSIS": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "DG1": {
                                "name": "DG1",
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
        "EHC_E20_AUTHORIZATION_REQUEST.EHC_E20_PSL_ITEM_INFO": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSL": {
                                "name": "PSL",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "ADJ": {
                                "name": "ADJ",
                                "maxReps": -1,
                                "required": false
                        },
                        "LOC": {
                                "name": "LOC",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type EHC_E20 record {
    *hl7v2:Message;
    string name = EHC_E20_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    EHC_E20_AUTHORIZATION_REQUEST authorization_request = {ivc: {}};
};
