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

public const NMD_N01_MESSAGE_TYPE = "NMD_N01";

# HL7 Message
# + name - Message name
# + msh - MSH
# + clock_and_stats_with_notes - NMD_N01_CLOCK_AND_STATS_WITH_NOTES Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "NCK": [
                {
                        "name": "NCK",
                        "maxReps": 1,
                        "segmentComponentName": "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK",
                        "required": true
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK.NMD_N01_APP_STATS",
                        "required": false
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "segmentComponentName": "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK.NMD_N01_APP_STATS.NMD_N01_APP_STATUS",
                        "required": false
                }
        ],
        "NST": [
                {
                        "name": "NST",
                        "maxReps": 1,
                        "segmentComponentName": "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK.NMD_N01_APP_STATS",
                        "required": true
                }
        ],
        "NSC": [
                {
                        "name": "NSC",
                        "maxReps": 1,
                        "segmentComponentName": "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK.NMD_N01_APP_STATS.NMD_N01_APP_STATUS",
                        "required": true
                }
        ]
    },
    groups: {
        "NMD_N01_CLOCK_AND_STATS_WITH_NOTES": {
                "maxReps": -1,
                "required": true,
                "segments": {
                }
        },
        "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NCK": {
                                "name": "NCK",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK.NMD_N01_APP_STATS": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NST": {
                                "name": "NST",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "NMD_N01_CLOCK_AND_STATS_WITH_NOTES.NMD_N01_CLOCK.NMD_N01_APP_STATS.NMD_N01_APP_STATUS": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "NSC": {
                                "name": "NSC",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
    }
}
public type NMD_N01 record {
    *hl7v2:Message;
    string name = NMD_N01_MESSAGE_TYPE;
    MSH msh = {};
    NMD_N01_CLOCK_AND_STATS_WITH_NOTES[] clock_and_stats_with_notes = [{}];
};
