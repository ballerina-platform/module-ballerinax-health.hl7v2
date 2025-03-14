
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

public const MFK_M02_MESSAGE_TYPE = "MFK_M02";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + msa - MSA
# + err - ERR
# + mfi - MFI
# + mfa - MFA
# + mf_staff - MFK_M02_MF_STAFF Segment Group

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
        "MFI": [
                {
                        "name": "MFI",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "MFA": [
                {
                        "name": "MFA",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "MFE": [
                {
                        "name": "MFE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "STF": [
                {
                        "name": "STF",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "PRA": [
                {
                        "name": "PRA",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "ORG": [
                {
                        "name": "ORG",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "AFF": [
                {
                        "name": "AFF",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "LAN": [
                {
                        "name": "LAN",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "EDU": [
                {
                        "name": "EDU",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "CER": [
                {
                        "name": "CER",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M02_MF_STAFF"
                }
        ]
},
    groups: {
        "MFK_M02_MF_STAFF": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "MFE": {
                                "name": "MFE",
                                "maxReps": 1,
                                "required": true
                        },
                        "STF": {
                                "name": "STF",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRA": {
                                "name": "PRA",
                                "maxReps": -1,
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
                        },
                        "CER": {
                                "name": "CER",
                                "maxReps": -1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type MFK_M02 record {
    *hl7v2:Message;
    string name = MFK_M02_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    ERR[] err = [];
    MFI mfi;
    MFA[] mfa = [];
    MFK_M02_MF_STAFF[] mf_staff = [{mfe: {}, stf: {}}];
};
