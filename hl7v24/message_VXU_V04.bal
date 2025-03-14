
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

public const VXU_V04_MESSAGE_TYPE = "VXU_V04";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + pid - PID
# + pd1 - PD1
# + nk1 - NK1
# + gt1 - GT1
# + patient - VXU_V04_PATIENT Segment Group
# + insurance - VXU_V04_INSURANCE Segment Group
# + order - VXU_V04_ORDER Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "VXU_V04_PATIENT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "VXU_V04_PATIENT"
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "VXU_V04_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "VXU_V04_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "VXU_V04_INSURANCE"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "VXU_V04_ORDER"
                }
        ],
        "RXA": [
                {
                        "name": "RXA",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "VXU_V04_ORDER"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "VXU_V04_ORDER"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "VXU_V04_ORDER.VXU_V04_OBSERVATION"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "VXU_V04_ORDER.VXU_V04_OBSERVATION"
                }
        ]
},
    groups: {
        "VXU_V04_PATIENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "VXU_V04_INSURANCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "IN1": {
                                "name": "IN1",
                                "maxReps": 1,
                                "required": true
                        },
                        "IN2": {
                                "name": "IN2",
                                "maxReps": 1,
                                "required": false
                        },
                        "IN3": {
                                "name": "IN3",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "VXU_V04_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        },
                        "RXA": {
                                "name": "RXA",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "VXU_V04_ORDER.VXU_V04_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type VXU_V04 record {
    *hl7v2:Message;
    string name = VXU_V04_MESSAGE_TYPE;
    MSH msh;
    PID pid;
    PD1 pd1?;
    NK1[] nk1 = [];
    GT1[] gt1 = [];
    VXU_V04_PATIENT patient?;
    VXU_V04_INSURANCE[] insurance = [{in1: {}}];
    VXU_V04_ORDER[] 'order =[{rxa: {}}];
};
