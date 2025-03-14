
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

public const ADT_A44_MESSAGE_TYPE = "ADT_A44";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + evn - EVN
# + patient - ADT_A44_PATIENT Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ADT_A44_PATIENT"
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "ADT_A44_PATIENT"
                }
        ],
        "MRG": [
                {
                        "name": "MRG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ADT_A44_PATIENT"
                }
        ]
},
    groups: {
        "ADT_A44_PATIENT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PD1": {
                                "name": "PD1",
                                "maxReps": 1,
                                "required": false
                        },
                        "MRG": {
                                "name": "MRG",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type ADT_A44 record {
    *hl7v2:Message;
    string name = ADT_A44_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    ADT_A44_PATIENT[] patient = [{pid: {}, mrg: {}}];
};
