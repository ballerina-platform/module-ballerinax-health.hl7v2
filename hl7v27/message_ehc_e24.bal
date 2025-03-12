
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

public const EHC_E24_MESSAGE_TYPE = "EHC_E24";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + authorization_response_info - EHC_E24_AUTHORIZATION_RESPONSE_INFO Segment Group

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
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E24_AUTHORIZATION_RESPONSE_INFO"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E24_AUTHORIZATION_RESPONSE_INFO.EHC_E24_PSL_ITEM_INFO"
                }
        ],
        "AUT": [
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E24_AUTHORIZATION_RESPONSE_INFO.EHC_E24_PSL_ITEM_INFO"
                }
        ],
        "ADJ": [
                {
                        "name": "ADJ",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E24_AUTHORIZATION_RESPONSE_INFO.EHC_E24_PSL_ITEM_INFO.EHC_E24_PAYER_ADJUSTMENT"
                }
        ]
},
    groups: {
        "EHC_E24_AUTHORIZATION_RESPONSE_INFO": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "IVC": {
                                "name": "IVC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E24_AUTHORIZATION_RESPONSE_INFO.EHC_E24_PSL_ITEM_INFO": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSL": {
                                "name": "PSL",
                                "maxReps": 1,
                                "required": true
                        },
                        "AUT": {
                                "name": "AUT",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "EHC_E24_AUTHORIZATION_RESPONSE_INFO.EHC_E24_PSL_ITEM_INFO.EHC_E24_PAYER_ADJUSTMENT": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ADJ": {
                                "name": "ADJ",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type EHC_E24 record {
    *hl7v2:Message;
    string name = EHC_E24_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    MSA msa;
    ERR[] err = [];
    EHC_E24_AUTHORIZATION_RESPONSE_INFO authorization_response_info = {ivc: {}};
};
