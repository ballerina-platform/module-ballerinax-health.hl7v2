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

public const NMQ_N02_MESSAGE_TYPE = "NMQ_N02";

# HL7 Message
# + name - Message name
# + msh - MSH
# + qry_with_detail - NMQ_N02_QRY_WITH_DETAIL Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "segmentComponentName": "NMQ_N02_QRY_WITH_DETAIL",
                        "required": true
                }
        ],
        "QRF": [
                {
                        "name": "QRF",
                        "maxReps": 1,
                        "segmentComponentName": "NMQ_N02_QRY_WITH_DETAIL",
                        "required": false
                }
        ],
        "NCK": [
                {
                        "name": "NCK",
                        "maxReps": 1,
                        "segmentComponentName": "NMQ_N02_QRY_WITH_DETAIL.NMQ_N02_CLOCK_AND_STATISTICS",
                        "required": false
                }
        ],
        "NST": [
                {
                        "name": "NST",
                        "maxReps": 1,
                        "segmentComponentName": "NMQ_N02_QRY_WITH_DETAIL.NMQ_N02_CLOCK_AND_STATISTICS",
                        "required": false
                }
        ],
        "NSC": [
                {
                        "name": "NSC",
                        "maxReps": 1,
                        "segmentComponentName": "NMQ_N02_QRY_WITH_DETAIL.NMQ_N02_CLOCK_AND_STATISTICS",
                        "required": false
                }
        ]
    },
    groups: {
        "NMQ_N02_QRY_WITH_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "QRD": {
                                "name": "QRD",
                                "maxReps": 1,
                                "required": true
                        },
                        "QRF": {
                                "name": "QRF",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "NMQ_N02_QRY_WITH_DETAIL.NMQ_N02_CLOCK_AND_STATISTICS": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "NCK": {
                                "name": "NCK",
                                "maxReps": 1,
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
public type NMQ_N02 record {
    *hl7v2:Message;
    string name = NMQ_N02_MESSAGE_TYPE;
    MSH msh = {};
    NMQ_N02_QRY_WITH_DETAIL qry_with_detail?;
};
