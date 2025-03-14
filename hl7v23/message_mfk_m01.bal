
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

public const MFK_M01_MESSAGE_TYPE = "MFK_M01";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + mfi - MFI
# + err - ERR
# + mfa - MFA
# + mf - MFK_M01_MF Segment Group

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
        "MFI": [
                {
                        "name": "MFI",
                        "maxReps": 1,
                        "required": true
                },
                {
                        "name": "MFI",
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
        "MFA": [
                {
                        "name": "MFA",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "MFA",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "MFK_M01_MF"
                }
        ]
},
    groups: {
        "MFK_M01_MF": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "MFA": {
                                "name": "MFA",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type MFK_M01 record {
    *hl7v2:Message;
    string name = MFK_M01_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    MFI mfi;
    ERR err?;
    MFA[] mfa = [];
    MFK_M01_MF[] mf = [{}];
};
