
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

public const SUR_P09_MESSAGE_TYPE = "SUR_P09";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + facility - SUR_P09_FACILITY Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "FAC": [
                {
                        "name": "FAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY"
                },
                {
                        "name": "FAC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY.SUR_P09_FACILITY_DETAIL"
                }
        ],
        "PSH": [
                {
                        "name": "PSH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY.SUR_P09_PRODUCT"
                },
                {
                        "name": "PSH",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY"
                }
        ],
        "PDC": [
                {
                        "name": "PDC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY.SUR_P09_PRODUCT"
                },
                {
                        "name": "PDC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY.SUR_P09_FACILITY_DETAIL"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SUR_P09_FACILITY.SUR_P09_FACILITY_DETAIL"
                }
        ]
},
    groups: {
        "SUR_P09_FACILITY": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "FAC": {
                                "name": "FAC",
                                "maxReps": 1,
                                "required": true
                        },
                        "PSH": {
                                "name": "PSH",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "SUR_P09_FACILITY.SUR_P09_PRODUCT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSH": {
                                "name": "PSH",
                                "maxReps": 1,
                                "required": true
                        },
                        "PDC": {
                                "name": "PDC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "SUR_P09_FACILITY.SUR_P09_FACILITY_DETAIL": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "FAC": {
                                "name": "FAC",
                                "maxReps": 1,
                                "required": true
                        },
                        "PDC": {
                                "name": "PDC",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type SUR_P09 record {
    *hl7v2:Message;
    string name = SUR_P09_MESSAGE_TYPE;
    MSH msh;
    SUR_P09_FACILITY[] facility = [{fac: {}, psh: {}}];
};
