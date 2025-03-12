
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

public const MFN_M05_MESSAGE_TYPE = "MFN_M05";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + mfi - MFI
# + mf_location - MFN_M05_MF_LOCATION Segment Group

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
                        "segmentComponentName": "MFN_M05_MF_LOCATION"
                }
        ],
        "LOC": [
                {
                        "name": "LOC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M05_MF_LOCATION"
                }
        ],
        "LCH": [
                {
                        "name": "LCH",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFN_M05_MF_LOCATION"
                },
                {
                        "name": "LCH",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFN_M05_MF_LOCATION.MFN_M05_MF_LOC_DEPT"
                }
        ],
        "LRL": [
                {
                        "name": "LRL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFN_M05_MF_LOCATION"
                }
        ],
        "LDP": [
                {
                        "name": "LDP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFN_M05_MF_LOCATION.MFN_M05_MF_LOC_DEPT"
                }
        ],
        "LCC": [
                {
                        "name": "LCC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFN_M05_MF_LOCATION.MFN_M05_MF_LOC_DEPT"
                }
        ]
},
    groups: {
        "MFN_M05_MF_LOCATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "MFE": {
                                "name": "MFE",
                                "maxReps": 1,
                                "required": true
                        },
                        "LOC": {
                                "name": "LOC",
                                "maxReps": 1,
                                "required": true
                        },
                        "LCH": {
                                "name": "LCH",
                                "maxReps": -1,
                                "required": false
                        },
                        "LRL": {
                                "name": "LRL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "MFN_M05_MF_LOCATION.MFN_M05_MF_LOC_DEPT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "LDP": {
                                "name": "LDP",
                                "maxReps": 1,
                                "required": true
                        },
                        "LCH": {
                                "name": "LCH",
                                "maxReps": -1,
                                "required": false
                        },
                        "LCC": {
                                "name": "LCC",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type MFN_M05 record {
    *hl7v2:Message;
    string name = MFN_M05_MESSAGE_TYPE;
    MSH msh;
    MFI mfi;
    MFN_M05_MF_LOCATION[] mf_location = [{mfe: {}, loc: {}}];
};
