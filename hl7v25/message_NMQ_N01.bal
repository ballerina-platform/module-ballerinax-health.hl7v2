
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

public const NMQ_N01_MESSAGE_TYPE = "NMQ_N01";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + qry_with_detail - NMQ_N01_QRY_WITH_DETAIL Segment Group
# + clock_and_statistics - NMQ_N01_CLOCK_AND_STATISTICS Segment Group

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
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "NMQ_N01_QRY_WITH_DETAIL"
                }
        ],
        "QRF": [
                {
                        "name": "QRF",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "NMQ_N01_QRY_WITH_DETAIL"
                }
        ],
        "NCK": [
                {
                        "name": "NCK",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "NMQ_N01_CLOCK_AND_STATISTICS"
                }
        ],
        "NST": [
                {
                        "name": "NST",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "NMQ_N01_CLOCK_AND_STATISTICS"
                }
        ],
        "NSC": [
                {
                        "name": "NSC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "NMQ_N01_CLOCK_AND_STATISTICS"
                }
        ]
},
    groups: {
        "NMQ_N01_QRY_WITH_DETAIL": {
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
        "NMQ_N01_CLOCK_AND_STATISTICS": {
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
public type NMQ_N01 record {
    *hl7v2:Message;
    string name = NMQ_N01_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NMQ_N01_QRY_WITH_DETAIL qry_with_detail?;
    NMQ_N01_CLOCK_AND_STATISTICS[] clock_and_statistics = [{}];
};
