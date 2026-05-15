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

public const DFT_P03_MESSAGE_TYPE = "DFT_P03";

# HL7 Message
# + name - Message name
# + msh - MSH
# + evn - EVN
# + pid - PID
# + pv1 - PV1
# + pv2 - PV2
# + obx - OBX
# + ft1 - FT1

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
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false
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
        "FT1": [
                {
                        "name": "FT1",
                        "maxReps": -1,
                        "required": true
                }
        ]
    },
    groups: {
    }
}
public type DFT_P03 record {
    *hl7v2:Message;
    string name = DFT_P03_MESSAGE_TYPE;
    MSH msh = {};
    EVN evn = {};
    PID pid = {};
    PV1 pv1?;
    PV2 pv2?;
    OBX[] obx = [];
    FT1[] ft1 = [{}];
};
