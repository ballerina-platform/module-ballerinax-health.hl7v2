
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

public const EHC_E13_MESSAGE_TYPE = "EHC_E13";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + rfi - RFI
# + ctd - CTD
# + ivc - IVC
# + pss - PSS
# + psg - PSG
# + pid - PID
# + psl - PSL
# + request - EHC_E13_REQUEST Segment Group

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
        "RFI": [
                {
                        "name": "RFI",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "CTD",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E13_REQUEST"
                }
        ],
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PSS": [
                {
                        "name": "PSS",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PSG": [
                {
                        "name": "PSG",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E13_REQUEST"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E13_REQUEST"
                },
                {
                        "name": "NTE",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E13_REQUEST.EHC_E13_RESPONSE"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E13_REQUEST.EHC_E13_RESPONSE"
                }
        ],
        "TXA": [
                {
                        "name": "TXA",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E13_REQUEST.EHC_E13_RESPONSE"
                }
        ]
},
    groups: {
        "EHC_E13_REQUEST": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "CTD": {
                                "name": "CTD",
                                "maxReps": 1,
                                "required": false
                        },
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "EHC_E13_REQUEST.EHC_E13_RESPONSE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": 1,
                                "required": false
                        },
                        "TXA": {
                                "name": "TXA",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type EHC_E13 record {
    *hl7v2:Message;
    string name = EHC_E13_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    MSA msa;
    ERR[] err = [];
    RFI rfi;
    CTD[] ctd = [];
    IVC ivc;
    PSS pss;
    PSG psg;
    PID pid?;
    PSL psl?;
    EHC_E13_REQUEST[] request = [{obr: {}}];
};
