
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

public const RSP_K25_MESSAGE_TYPE = "RSP_K25";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + qak - QAK
# + qpd - QPD
# + rcp - RCP
# + dsc - DSC
# + staff - RSP_K25_STAFF Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
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
                        "maxReps": 1,
                        "required": false
                }
        ],
        "QAK": [
                {
                        "name": "QAK",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QPD": [
                {
                        "name": "QPD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "RCP": [
                {
                        "name": "RCP",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "STF": [
                {
                        "name": "STF",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RSP_K25_STAFF"
                }
        ],
        "PRA": [
                {
                        "name": "PRA",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RSP_K25_STAFF"
                }
        ],
        "ORG": [
                {
                        "name": "ORG",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_K25_STAFF"
                }
        ],
        "AFF": [
                {
                        "name": "AFF",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_K25_STAFF"
                }
        ],
        "LAN": [
                {
                        "name": "LAN",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_K25_STAFF"
                }
        ],
        "EDU": [
                {
                        "name": "EDU",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RSP_K25_STAFF"
                }
        ],
        "DSC": [
                {
                        "name": "DSC",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {
        "RSP_K25_STAFF": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "STF": {
                                "name": "STF",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRA": {
                                "name": "PRA",
                                "maxReps": 1,
                                "required": false
                        },
                        "ORG": {
                                "name": "ORG",
                                "maxReps": -1,
                                "required": false
                        },
                        "AFF": {
                                "name": "AFF",
                                "maxReps": -1,
                                "required": false
                        },
                        "LAN": {
                                "name": "LAN",
                                "maxReps": -1,
                                "required": false
                        },
                        "EDU": {
                                "name": "EDU",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type RSP_K25 record {
    *hl7v2:Message;
    string name = RSP_K25_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QAK qak;
    QPD qpd;
    RCP rcp;
    DSC dsc?;
    RSP_K25_STAFF[] staff = [{stf: {}}];
};
