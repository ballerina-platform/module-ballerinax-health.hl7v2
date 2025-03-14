
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

public const MFN_M11_MESSAGE_TYPE = "MFN_M11";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + mfi - MFI
# + mf_test_calculated - MFN_M11_MF_TEST_CALCULATED Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
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
        "MFE": [
                {
                        "name": "MFE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M11_MF_TEST_CALCULATED"
                }
        ],
        "OM1": [
                {
                        "name": "OM1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M11_MF_TEST_CALCULATED"
                }
        ],
        "OM6": [
                {
                        "name": "OM6",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M11_MF_TEST_CALCULATED.MFN_M11_MF_TEST_CALC_DETAIL"
                }
        ],
        "OM2": [
                {
                        "name": "OM2",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M11_MF_TEST_CALCULATED.MFN_M11_MF_TEST_CALC_DETAIL"
                }
        ]
},
    groups: {
        "MFN_M11_MF_TEST_CALCULATED": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "MFE": {
                                "name": "MFE",
                                "maxReps": 1,
                                "required": true
                        },
                        "OM1": {
                                "name": "OM1",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "MFN_M11_MF_TEST_CALCULATED.MFN_M11_MF_TEST_CALC_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OM6": {
                                "name": "OM6",
                                "maxReps": 1,
                                "required": true
                        },
                        "OM2": {
                                "name": "OM2",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type MFN_M11 record {
    *hl7v2:Message;
    string name = MFN_M11_MESSAGE_TYPE;
    MSH msh;
    MFI mfi;
    MFN_M11_MF_TEST_CALCULATED[] mf_test_calculated = [{mfe: {}, om1: {}}];
};
