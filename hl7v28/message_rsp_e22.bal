
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

public const RSP_E22_MESSAGE_TYPE = "RSP_E22";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + query_ack - RSP_E22_QUERY_ACK Segment Group

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
        "QAK": [
                {
                        "name": "QAK",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_E22_QUERY_ACK"
                }
        ],
        "QPD": [
                {
                        "name": "QPD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_E22_QUERY_ACK"
                }
        ],
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_E22_QUERY_ACK.RSP_E22_AUTHORIZATION_INFO"
                }
        ],
        "PSG": [
                {
                        "name": "PSG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_E22_QUERY_ACK.RSP_E22_AUTHORIZATION_INFO"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_E22_QUERY_ACK.RSP_E22_AUTHORIZATION_INFO.RSP_E22_PSL_ITEM_INFO"
                }
        ]
},
    groups: {
        "RSP_E22_QUERY_ACK": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "QAK": {
                                "name": "QAK",
                                "maxReps": 1,
                                "required": true
                        },
                        "QPD": {
                                "name": "QPD",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RSP_E22_QUERY_ACK.RSP_E22_AUTHORIZATION_INFO": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "IVC": {
                                "name": "IVC",
                                "maxReps": 1,
                                "required": true
                        },
                        "PSG": {
                                "name": "PSG",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "RSP_E22_QUERY_ACK.RSP_E22_AUTHORIZATION_INFO.RSP_E22_PSL_ITEM_INFO": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSL": {
                                "name": "PSL",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type RSP_E22 record {
    *hl7v2:Message;
    string name = RSP_E22_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    MSA msa;
    ERR[] err = [];
    RSP_E22_QUERY_ACK query_ack = {qak: {}, qpd: {}};
};
