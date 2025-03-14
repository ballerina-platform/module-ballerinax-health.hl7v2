
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

public const ADT_A31_MESSAGE_TYPE = "ADT_A31";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + evn - EVN
# + pid - PID
# + pd1 - PD1
# + rol - ROL
# + nk1 - NK1
# + pv1 - PV1
# + pv2 - PV2
# + db1 - DB1
# + obx - OBX
# + al1 - AL1
# + dg1 - DG1
# + drg - DRG
# + gt1 - GT1
# + acc - ACC
# + ub1 - UB1
# + ub2 - UB2
# + procedure - ADT_A31_PROCEDURE Segment Group
# + insurance - ADT_A31_INSURANCE Segment Group

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
                        "required": false
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ADT_A31_PROCEDURE"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ADT_A31_INSURANCE"
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
                        "required": true
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "DB1": [
                {
                        "name": "DB1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ADT_A31_PROCEDURE"
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
                        "segmentComponentName": "ADT_A31_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "ADT_A31_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ADT_A31_INSURANCE"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "UB1": [
                {
                        "name": "UB1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "UB2": [
                {
                        "name": "UB2",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {
        "ADT_A31_PROCEDURE": {
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
        "ADT_A31_INSURANCE": {
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
public type ADT_A31 record {
    *hl7v2:Message;
    string name = ADT_A31_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EVN evn;
    PID pid;
    PD1 pd1?;
    ROL[] rol = [];
    NK1[] nk1 = [];
    PV1 pv1;
    PV2 pv2?;
    DB1[] db1 = [];
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
    UB1 ub1?;
    UB2 ub2?;
    ADT_A31_PROCEDURE[] procedure = [{pr1: {}}];
    ADT_A31_INSURANCE[] insurance = [{in1: {}}];
};
