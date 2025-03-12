
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

public const MFK_M06_MESSAGE_TYPE = "MFK_M06";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + mfi - MFI
# + mfa - MFA
# + mf_clin_study - MFK_M06_MF_CLIN_STUDY Segment Group

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
        "MFI": [
                {
                        "name": "MFI",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "MFA": [
                {
                        "name": "MFA",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "MFE": [
                {
                        "name": "MFE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFK_M06_MF_CLIN_STUDY"
                }
        ],
        "CM0": [
                {
                        "name": "CM0",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFK_M06_MF_CLIN_STUDY"
                }
        ],
        "CM1": [
                {
                        "name": "CM1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFK_M06_MF_CLIN_STUDY.MFK_M06_MF_PHASE_SCHED_DETAIL"
                }
        ],
        "CM2": [
                {
                        "name": "CM2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFK_M06_MF_CLIN_STUDY.MFK_M06_MF_PHASE_SCHED_DETAIL"
                }
        ]
},
    groups: {
        "MFK_M06_MF_CLIN_STUDY": {
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
                        }
                }
        },
        "MFK_M06_MF_CLIN_STUDY.MFK_M06_MF_PHASE_SCHED_DETAIL": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "CM1": {
                                "name": "CM1",
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
public type MFK_M06 record {
    *hl7v2:Message;
    string name = MFK_M06_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    MFI mfi;
    MFA[] mfa = [];
    MFK_M06_MF_CLIN_STUDY[] mf_clin_study = [{mfe: {}, cm0: {}}];
};
