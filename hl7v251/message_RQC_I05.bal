
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

public const RQC_I05_MESSAGE_TYPE = "RQC_I05";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + qrd - QRD
# + qrf - QRF
# + pid - PID
# + nk1 - NK1
# + gt1 - GT1
# + nte - NTE
# + provider - RQC_I05_PROVIDER Segment Group

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
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QRF": [
                {
                        "name": "QRF",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PRD": [
                {
                        "name": "PRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RQC_I05_PROVIDER"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RQC_I05_PROVIDER"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
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
        ]
},
    groups: {
        "RQC_I05_PROVIDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PRD": {
                                "name": "PRD",
                                "maxReps": 1,
                                "required": true
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type RQC_I05 record {
    *hl7v2:Message;
    string name = RQC_I05_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    QRD qrd;
    QRF qrf?;
    PID pid;
    NK1[] nk1 = [];
    GT1[] gt1 = [];
    NTE[] nte = [];
    RQC_I05_PROVIDER[] provider = [{prd: {}}];
};
