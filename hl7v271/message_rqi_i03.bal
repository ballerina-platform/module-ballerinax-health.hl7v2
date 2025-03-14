
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

public const RQI_I03_MESSAGE_TYPE = "RQI_I03";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + pid - PID
# + nk1 - NK1
# + nte - NTE
# + provider - RQI_I03_PROVIDER Segment Group
# + guarantor_insurance - RQI_I03_GUARANTOR_INSURANCE Segment Group

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
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQI_I03_PROVIDER"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RQI_I03_PROVIDER"
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
                        "segmentComponentName": "RQI_I03_GUARANTOR_INSURANCE"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQI_I03_GUARANTOR_INSURANCE.RQI_I03_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQI_I03_GUARANTOR_INSURANCE.RQI_I03_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RQI_I03_GUARANTOR_INSURANCE.RQI_I03_INSURANCE"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false
                }
        ]
},
    groups: {
        "RQI_I03_PROVIDER": {
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
        "RQI_I03_GUARANTOR_INSURANCE": {
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
        "RQI_I03_GUARANTOR_INSURANCE.RQI_I03_INSURANCE": {
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
        }
}
}
public type RQI_I03 record {
    *hl7v2:Message;
    string name = RQI_I03_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    PID pid;
    NK1[] nk1 = [];
    NTE[] nte = [];
    RQI_I03_PROVIDER[] provider = [{prd: {}}];
    RQI_I03_GUARANTOR_INSURANCE guarantor_insurance?;
};
