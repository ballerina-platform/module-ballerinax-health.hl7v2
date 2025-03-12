
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

public const EAR_U08_MESSAGE_TYPE = "EAR_U08";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + equ - EQU
# + rol - ROL
# + command_response - EAR_U08_COMMAND_RESPONSE Segment Group

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
        "EQU": [
                {
                        "name": "EQU",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ECD": [
                {
                        "name": "ECD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EAR_U08_COMMAND_RESPONSE"
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EAR_U08_COMMAND_RESPONSE.EAR_U08_SPECIMEN_CONTAINER"
                }
        ],
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EAR_U08_COMMAND_RESPONSE.EAR_U08_SPECIMEN_CONTAINER"
                }
        ],
        "ECR": [
                {
                        "name": "ECR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EAR_U08_COMMAND_RESPONSE"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {
        "EAR_U08_COMMAND_RESPONSE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ECD": {
                                "name": "ECD",
                                "maxReps": 1,
                                "required": true
                        },
                        "ECR": {
                                "name": "ECR",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EAR_U08_COMMAND_RESPONSE.EAR_U08_SPECIMEN_CONTAINER": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        },
                        "SPM": {
                                "name": "SPM",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type EAR_U08 record {
    *hl7v2:Message;
    string name = EAR_U08_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EQU equ;
    ROL rol?;
    EAR_U08_COMMAND_RESPONSE[] command_response = [{ecd: {}, ecr: {}}];
};
