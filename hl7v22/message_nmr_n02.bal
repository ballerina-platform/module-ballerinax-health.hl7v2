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

public const NMR_N02_MESSAGE_TYPE = "NMR_N02";

# HL7 Message
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + qrd - QRD
# + response - NMR_N02_RESPONSE Segment Group

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
                        "required": false
                }
        ],
        "NCK": [
                {
                        "name": "NCK",
                        "maxReps": 1,
                        "segmentComponentName": "NMR_N02_RESPONSE",
                        "required": false
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "NMR_N02_RESPONSE",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "NMR_N02_RESPONSE",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "NMR_N02_RESPONSE",
                        "required": false
                }
        ],
        "NST": [
                {
                        "name": "NST",
                        "maxReps": 1,
                        "segmentComponentName": "NMR_N02_RESPONSE",
                        "required": false
                }
        ],
        "NSC": [
                {
                        "name": "NSC",
                        "maxReps": 1,
                        "segmentComponentName": "NMR_N02_RESPONSE",
                        "required": false
                }
        ]
    },
    groups: {
        "NMR_N02_RESPONSE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "NCK": {
                                "name": "NCK",
                                "maxReps": 1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "NST": {
                                "name": "NST",
                                "maxReps": 1,
                                "required": false
                        },
                        "NSC": {
                                "name": "NSC",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
    }
}
public type NMR_N02 record {
    *hl7v2:Message;
    string name = NMR_N02_MESSAGE_TYPE;
    MSH msh = {};
    MSA msa = {};
    ERR err?;
    QRD qrd?;
    NMR_N02_RESPONSE[] response = [{}];
};
