
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

public const EHC_E04_MESSAGE_TYPE = "EHC_E04";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + reassessment_request_info - EHC_E04_REASSESSMENT_REQUEST_INFO Segment Group

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
                        "maxReps": -1,
                        "required": false
                }
        ],
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E04_REASSESSMENT_REQUEST_INFO"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E04_REASSESSMENT_REQUEST_INFO"
                }
        ],
        "PSS": [
                {
                        "name": "PSS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E04_REASSESSMENT_REQUEST_INFO.EHC_E04_PRODUCT_SERVICE_SECTION"
                }
        ],
        "PSG": [
                {
                        "name": "PSG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E04_REASSESSMENT_REQUEST_INFO.EHC_E04_PRODUCT_SERVICE_SECTION.EHC_E04_PRODUCT_SERVICE_GROUP"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E04_REASSESSMENT_REQUEST_INFO.EHC_E04_PRODUCT_SERVICE_SECTION.EHC_E04_PRODUCT_SERVICE_GROUP"
                }
        ]
},
    groups: {
        "EHC_E04_REASSESSMENT_REQUEST_INFO": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "IVC": {
                                "name": "IVC",
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
        "EHC_E04_REASSESSMENT_REQUEST_INFO.EHC_E04_PRODUCT_SERVICE_SECTION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PSS": {
                                "name": "PSS",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E04_REASSESSMENT_REQUEST_INFO.EHC_E04_PRODUCT_SERVICE_SECTION.EHC_E04_PRODUCT_SERVICE_GROUP": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PSG": {
                                "name": "PSG",
                                "maxReps": 1,
                                "required": true
                        },
                        "PSL": {
                                "name": "PSL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type EHC_E04 record {
    *hl7v2:Message;
    string name = EHC_E04_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    EHC_E04_REASSESSMENT_REQUEST_INFO reassessment_request_info = {ivc: {}};
};
