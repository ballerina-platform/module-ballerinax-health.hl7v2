
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

public const BAR_P10_MESSAGE_TYPE = "BAR_P10";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + evn - EVN
# + pid - PID
# + pv1 - PV1
# + dg1 - DG1
# + gp1 - GP1
# + procedure - BAR_P10_PROCEDURE Segment Group

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
                        "required": true
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "GP1": [
                {
                        "name": "GP1",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "BAR_P10_PROCEDURE"
                }
        ],
        "GP2": [
                {
                        "name": "GP2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "BAR_P10_PROCEDURE"
                }
        ]
},
    groups: {
        "BAR_P10_PROCEDURE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": true
                        },
                        "GP2": {
                                "name": "GP2",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type BAR_P10 record {
    *hl7v2:Message;
    string name = BAR_P10_MESSAGE_TYPE;
    MSH msh;
    EVN evn;
    PID pid;
    PV1 pv1;
    DG1[] dg1 = [];
    GP1 gp1;
    BAR_P10_PROCEDURE[] procedure = [{pr1: {}}];
};
