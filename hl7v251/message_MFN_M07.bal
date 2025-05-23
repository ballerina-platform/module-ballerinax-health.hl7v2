
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

public const MFN_M07_MESSAGE_TYPE = "MFN_M07";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + mfi - MFI
# + mf_clin_study_sched - MFN_M07_MF_CLIN_STUDY_SCHED Segment Group

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
        "MFI": [
                {
                        "name": "MFI",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "MFE": [
                {
                        "name": "MFE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M07_MF_CLIN_STUDY_SCHED"
                }
        ],
        "CM0": [
                {
                        "name": "CM0",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M07_MF_CLIN_STUDY_SCHED"
                }
        ],
        "CM2": [
                {
                        "name": "CM2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFN_M07_MF_CLIN_STUDY_SCHED"
                }
        ]
},
    groups: {
        "MFN_M07_MF_CLIN_STUDY_SCHED": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "MFE": {
                                "name": "MFE",
                                "maxReps": 1,
                                "required": true
                        },
                        "CM0": {
                                "name": "CM0",
                                "maxReps": 1,
                                "required": true
                        },
                        "CM2": {
                                "name": "CM2",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type MFN_M07 record {
    *hl7v2:Message;
    string name = MFN_M07_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MFI mfi;
    MFN_M07_MF_CLIN_STUDY_SCHED[] mf_clin_study_sched = [{mfe: {}, cm0: {}}];
};
