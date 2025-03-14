
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

public const SSU_U03_MESSAGE_TYPE = "SSU_U03";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + equ - EQU
# + rol - ROL
# + specimen_container - SSU_U03_SPECIMEN_CONTAINER Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "EQU": [
                {
                        "name": "EQU",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "SAC": [
                {
                        "name": "SAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SSU_U03_SPECIMEN_CONTAINER"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SSU_U03_SPECIMEN_CONTAINER"
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
        "SSU_U03_SPECIMEN_CONTAINER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "SAC": {
                                "name": "SAC",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type SSU_U03 record {
    *hl7v2:Message;
    string name = SSU_U03_MESSAGE_TYPE;
    MSH msh;
    EQU equ;
    ROL rol?;
    SSU_U03_SPECIMEN_CONTAINER[] specimen_container = [{sac: {}}];
};
