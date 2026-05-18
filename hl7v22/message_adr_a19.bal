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

public const ADR_A19_MESSAGE_TYPE = "ADR_A19";

# HL7 Message
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + qrd - QRD
# + query_response - ADR_A19_QUERY_RESPONSE Segment Group
# + dsc - DSC

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
        "ERR": [
                {
                        "name": "ERR",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": true
                }
        ],
        "NK1": [
                {
                        "name": "NK1",
                        "maxReps": -1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": true
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "AL1": [
                {
                        "name": "AL1",
                        "maxReps": -1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": -1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE.ADR_A19_INSURANCE",
                        "required": true
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE.ADR_A19_INSURANCE",
                        "required": false
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE.ADR_A19_INSURANCE",
                        "required": false
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "UB1": [
                {
                        "name": "UB1",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "UB2": [
                {
                        "name": "UB2",
                        "maxReps": 1,
                        "segmentComponentName": "ADR_A19_QUERY_RESPONSE",
                        "required": false
                }
        ],
        "DSC": [
                {
                        "name": "DSC",
                        "maxReps": 1,
                        "required": false
                }
        ]
    },
    groups: {
        "ADR_A19_QUERY_RESPONSE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "EVN": {
                                "name": "EVN",
                                "maxReps": 1,
                                "required": false
                        },
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "NK1": {
                                "name": "NK1",
                                "maxReps": -1,
                                "required": false
                        },
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
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
                        "PR1": {
                                "name": "PR1",
                                "maxReps": -1,
                                "required": false
                        },
                        "GT1": {
                                "name": "GT1",
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
        "ADR_A19_QUERY_RESPONSE.ADR_A19_INSURANCE": {
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
public type ADR_A19 record {
    *hl7v2:Message;
    string name = ADR_A19_MESSAGE_TYPE;
    MSH msh = {};
    MSA msa = {};
    ERR err?;
    QRD qrd = {};
    ADR_A19_QUERY_RESPONSE[] query_response = [{pid: {}, pv1: {}}];
    DSC dsc?;
};
