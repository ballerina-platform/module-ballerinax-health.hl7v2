
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

public const LSR_U13_MESSAGE_TYPE = "LSR_U13";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + equ - EQU
# + eqp - EQP
# + rol - ROL

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
        "EQU": [
                {
                        "name": "EQU",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "EQP": [
                {
                        "name": "EQP",
                        "maxReps": -1,
                        "required": true
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
    groups: {}
}
public type LSR_U13 record {
    *hl7v2:Message;
    string name = LSR_U13_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EQU equ;
    EQP[] eqp = [];
    ROL rol?;

};
