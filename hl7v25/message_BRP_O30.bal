
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

public const BRP_O30_MESSAGE_TYPE = "BRP_O30";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + sft - SFT
# + nte - NTE
# + response - BRP_O30_RESPONSE

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
                        "maxReps": -1,
                        "required": false
                }
        ],
        "SFT": [
                {
                        "name": "SFT",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BRP_O30_RESPONSE.BRP_O30_PATIENT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER.BRP_O30_TIMING"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER.BRP_O30_TIMING"
                }
        ],
        "BPO": [
                {
                        "name": "BPO",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER"
                }
        ],
        "BPX": [
                {
                        "name": "BPX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER"
                }
        ]
},
    groups: {
        "BRP_O30_RESPONSE": {
                "maxReps": 1,
                "required": false,
                "segments": {}
        },
        "BRP_O30_RESPONSE.BRP_O30_PATIENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "BPO": {
                                "name": "BPO",
                                "maxReps": 1,
                                "required": false
                        },
                        "BPX": {
                                "name": "BPX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "BRP_O30_RESPONSE.BRP_O30_PATIENT.BRP_O30_ORDER.BRP_O30_TIMING": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "TQ1": {
                                "name": "TQ1",
                                "maxReps": 1,
                                "required": true
                        },
                        "TQ2": {
                                "name": "TQ2",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type BRP_O30 record {
    *hl7v2:Message;
    string name = BRP_O30_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    NTE[] nte = [];
    BRP_O30_RESPONSE response?;

};
