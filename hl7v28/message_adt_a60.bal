
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

public const ADT_A60_MESSAGE_TYPE = "ADT_A60";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + evn - EVN
# + pid - PID
# + arv - ARV
# + pv1 - PV1
# + pv2 - PV2
# + adverse_reaction_group - ADT_A60_ADVERSE_REACTION_GROUP Segment Group

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
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "ARV": [
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "IAM": [
                {
                        "name": "IAM",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ADT_A60_ADVERSE_REACTION_GROUP"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ADT_A60_ADVERSE_REACTION_GROUP"
                }
        ],
        "IAR": [
                {
                        "name": "IAR",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ADT_A60_ADVERSE_REACTION_GROUP"
                }
        ]
},
    groups: {
        "ADT_A60_ADVERSE_REACTION_GROUP": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "IAM": {
                                "name": "IAM",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "IAR": {
                                "name": "IAR",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type ADT_A60 record {
    *hl7v2:Message;
    string name = ADT_A60_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    PID pid;
    ARV[] arv = [];
    PV1 pv1?;
    PV2 pv2?;
    ADT_A60_ADVERSE_REACTION_GROUP[] adverse_reaction_group = [{iam: {}}];
};
