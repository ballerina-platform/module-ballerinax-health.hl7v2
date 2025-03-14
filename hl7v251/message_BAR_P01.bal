
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

public const BAR_P01_MESSAGE_TYPE = "BAR_P01";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + evn - EVN
# + pid - PID
# + pd1 - PD1
# + rol - ROL
# + visit - BAR_P01_VISIT Segment Group

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
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT.BAR_P01_PROCEDURE"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT.BAR_P01_INSURANCE"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "DB1": [
                {
                        "name": "DB1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BAR_P01_VISIT.BAR_P01_PROCEDURE"
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BAR_P01_VISIT.BAR_P01_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT.BAR_P01_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT.BAR_P01_INSURANCE"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "UB1": [
                {
                        "name": "UB1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ],
        "UB2": [
                {
                        "name": "UB2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P01_VISIT"
                }
        ]
},
    groups: {
        "BAR_P01_VISIT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": false
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        },
                        "DB1": {
                                "name": "DB1",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        },
                        "AL1": {
                                "name": "AL1",
                                "maxReps": -1,
                                "required": false
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": -1,
                                "required": false
                        },
                        "DRG": {
                                "name": "DRG",
                                "maxReps": 1,
                                "required": false
                        },
                        "GT1": {
                                "name": "GT1",
                                "maxReps": -1,
                                "required": false
                        },
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": false
                        },
                        "ACC": {
                                "name": "ACC",
                                "maxReps": 1,
                                "required": false
                        },
                        "UB1": {
                                "name": "UB1",
                                "maxReps": 1,
                                "required": false
                        },
                        "UB2": {
                                "name": "UB2",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "BAR_P01_VISIT.BAR_P01_PROCEDURE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": true
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "BAR_P01_VISIT.BAR_P01_INSURANCE": {
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
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type BAR_P01 record {
    *hl7v2:Message;
    string name = BAR_P01_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EVN evn;
    PID pid;
    PD1 pd1?;
    ROL[] rol = [];
    BAR_P01_VISIT[] visit = [{}];
};
