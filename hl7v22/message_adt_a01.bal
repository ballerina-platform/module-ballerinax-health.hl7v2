// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

public const ADT_A01_MESSAGE_TYPE = "ADT_A01";

# HL7 Message
# + name - Message name
# + msh - MSH
# + evn - EVN
# + pid - PID
# + nk1 - NK1
# + pv1 - PV1
# + pv2 - PV2
# + obx - OBX
# + al1 - AL1
# + dg1 - DG1
# + pr1 - PR1
# + gt1 - GT1
# + insurance - ADT_A01_INSURANCE Segment Group
# + acc - ACC
# + ub1 - UB1
# + ub2 - UB2

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
        "PR1": [
                {
                        "name": "PR1",
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
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "segmentComponentName": "ADT_A01_INSURANCE",
                        "required": true
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "segmentComponentName": "ADT_A01_INSURANCE",
                        "required": false
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "segmentComponentName": "ADT_A01_INSURANCE",
                        "required": false
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
        "ADT_A01_INSURANCE": {
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
        }
    }
}
public type ADT_A01 record {
    *hl7v2:Message;
    string name = ADT_A01_MESSAGE_TYPE;
    MSH msh = {};
    EVN evn = {};
    PID pid = {};
    NK1[] nk1 = [];
    PV1 pv1 = {};
    PV2 pv2?;
    OBX[] obx = [];
    AL1[] al1 = [];
    DG1[] dg1 = [];
    PR1[] pr1 = [];
    GT1[] gt1 = [];
    ADT_A01_INSURANCE[] insurance = [];
    ACC acc?;
    UB1 ub1?;
    UB2 ub2?;
};
