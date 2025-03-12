
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

public const MFN_M10_MESSAGE_TYPE = "MFN_M10";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + mfi - MFI
# + mf_test_batteries - MFN_M10_MF_TEST_BATTERIES Segment Group

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
                        "segmentComponentName": "MFN_M10_MF_TEST_BATTERIES"
                }
        ],
        "OM1": [
                {
                        "name": "OM1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M10_MF_TEST_BATTERIES"
                }
        ],
        "OM5": [
                {
                        "name": "OM5",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M10_MF_TEST_BATTERIES.MFN_M10_MF_TEST_BATT_DETAIL"
                }
        ],
        "OM4": [
                {
                        "name": "OM4",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFN_M10_MF_TEST_BATTERIES.MFN_M10_MF_TEST_BATT_DETAIL"
                }
        ]
},
    groups: {
        "MFN_M10_MF_TEST_BATTERIES": {
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
        "MFN_M10_MF_TEST_BATTERIES.MFN_M10_MF_TEST_BATT_DETAIL": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OM5": {
                                "name": "OM5",
                                "maxReps": 1,
                                "required": true
                        },
                        "OM4": {
                                "name": "OM4",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type MFN_M10 record {
    *hl7v2:Message;
    string name = MFN_M10_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MFI mfi;
    MFN_M10_MF_TEST_BATTERIES[] mf_test_batteries = [{mfe: {}, om1: {}}];
};
