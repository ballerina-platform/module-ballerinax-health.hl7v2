
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

public const NMR_N01_MESSAGE_TYPE = "NMR_N01";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + qrd - QRD
# + clock_and_stats_with_notes_alt - NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT Segment Group

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
        "UAC": [
                {
                        "name": "UAC",
                        "maxReps": 1,
                        "required": false
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
                        "maxReps": -1,
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
                        "required": false,
                        "segmentComponentName": "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT"
                }
        ],
        "NST": [
                {
                        "name": "NST",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT"
                }
        ],
        "NSC": [
                {
                        "name": "NSC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT"
                }
        ]
},
    groups: {
        "NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT": {
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
public type NMR_N01 record {
    *hl7v2:Message;
    string name = NMR_N01_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    QRD qrd?;
    NMR_N01_CLOCK_AND_STATS_WITH_NOTES_ALT[] clock_and_stats_with_notes_alt = [{}];
};
