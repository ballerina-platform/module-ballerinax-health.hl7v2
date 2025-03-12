
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

public const BRT_O32_MESSAGE_TYPE = "BRT_O32";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + sft - SFT
# + nte - NTE
# + response - BRT_O32_RESPONSE Segment Group

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
                        "required": false,
                        "segmentComponentName": "BRT_O32_RESPONSE"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BRT_O32_RESPONSE.BRT_O32_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BRT_O32_RESPONSE.BRT_O32_ORDER.BRT_O32_TIMING"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BRT_O32_RESPONSE.BRT_O32_ORDER.BRT_O32_TIMING"
                }
        ],
        "BPO": [
                {
                        "name": "BPO",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BRT_O32_RESPONSE.BRT_O32_ORDER"
                }
        ],
        "BTX": [
                {
                        "name": "BTX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BRT_O32_RESPONSE.BRT_O32_ORDER"
                }
        ]
},
    groups: {
        "BRT_O32_RESPONSE": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "BRT_O32_RESPONSE.BRT_O32_ORDER": {
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
                        "BTX": {
                                "name": "BTX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "BRT_O32_RESPONSE.BRT_O32_ORDER.BRT_O32_TIMING": {
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
public type BRT_O32 record {
    *hl7v2:Message;
    string name = BRT_O32_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    NTE[] nte = [];
    BRT_O32_RESPONSE response?;
};
