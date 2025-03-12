
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

public const MFN_M08_MESSAGE_TYPE = "MFN_M08";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + mfi - MFI
# + mf_test_numeric - MFN_M08_MF_TEST_NUMERIC Segment Group

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
                        "segmentComponentName": "MFN_M08_MF_TEST_NUMERIC"
                }
        ],
        "OM1": [
                {
                        "name": "OM1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M08_MF_TEST_NUMERIC"
                }
        ],
        "OM2": [
                {
                        "name": "OM2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "MFN_M08_MF_TEST_NUMERIC"
                }
        ],
        "OM3": [
                {
                        "name": "OM3",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "MFN_M08_MF_TEST_NUMERIC"
                }
        ],
        "OM4": [
                {
                        "name": "OM4",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "MFN_M08_MF_TEST_NUMERIC"
                }
        ]
},
    groups: {
        "MFN_M08_MF_TEST_NUMERIC": {
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
                        },
                        "OM2": {
                                "name": "OM2",
                                "maxReps": 1,
                                "required": false
                        },
                        "OM3": {
                                "name": "OM3",
                                "maxReps": 1,
                                "required": false
                        },
                        "OM4": {
                                "name": "OM4",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type MFN_M08 record {
    *hl7v2:Message;
    string name = MFN_M08_MESSAGE_TYPE;
    MSH msh;
    MFI mfi;
    MFN_M08_MF_TEST_NUMERIC[] mf_test_numeric = [{mfe: {}, om1: {}}];
};
