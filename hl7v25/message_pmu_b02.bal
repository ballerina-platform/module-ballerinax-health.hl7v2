
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

public const PMU_B02_MESSAGE_TYPE = "PMU_B02";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + evn - EVN
# + stf - STF
# + pra - PRA
# + org - ORG
# + aff - AFF
# + lan - LAN
# + edu - EDU
# + cer - CER

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
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "STF": [
                {
                        "name": "STF",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PRA": [
                {
                        "name": "PRA",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "ORG": [
                {
                        "name": "ORG",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "AFF": [
                {
                        "name": "AFF",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "LAN": [
                {
                        "name": "LAN",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "EDU": [
                {
                        "name": "EDU",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "CER": [
                {
                        "name": "CER",
                        "maxReps": -1,
                        "required": false
                }
        ]
},
    groups: {}
}
public type PMU_B02 record {
    *hl7v2:Message;
    string name = PMU_B02_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EVN evn;
    STF stf;
    PRA[] pra = [];
    ORG[] org = [];
    AFF[] aff = [];
    LAN[] lan = [];
    EDU[] edu = [];
    CER[] cer = [];

};
