
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

public const TCU_U10_MESSAGE_TYPE = "TCU_U10";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + equ - EQU
# + rol - ROL
# + test_configuration - TCU_U10_TEST_CONFIGURATION Segment Group

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
        "SPM": [
                {
                        "name": "SPM",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "TCU_U10_TEST_CONFIGURATION"
                }
        ],
        "TCC": [
                {
                        "name": "TCC",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "TCU_U10_TEST_CONFIGURATION"
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
    groups: {
        "TCU_U10_TEST_CONFIGURATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SPM": {
                                "name": "SPM",
                                "maxReps": 1,
                                "required": false
                        },
                        "TCC": {
                                "name": "TCC",
                                "maxReps": -1,
                                "required": true
                        }
                }
        }
}
}
public type TCU_U10 record {
    *hl7v2:Message;
    string name = TCU_U10_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EQU equ;
    ROL rol?;
    TCU_U10_TEST_CONFIGURATION[] test_configuration = [{}];
};
