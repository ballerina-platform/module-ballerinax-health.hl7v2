
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

public const EHC_E15_MESSAGE_TYPE = "EHC_E15";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + payment_remittance_header_info - EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO Segment Group
# + payment_remittance_detail_info - EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO Segment Group
# + adjustment_payee - EHC_E15_ADJUSTMENT_PAYEE Segment Group

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
        "PMT": [
                {
                        "name": "PMT",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO"
                }
        ],
        "PYE": [
                {
                        "name": "PYE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO"
                }
        ],
        "IPR": [
                {
                        "name": "IPR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO"
                }
        ],
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO"
                }
        ],
        "PSS": [
                {
                        "name": "PSS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION"
                }
        ],
        "PSG": [
                {
                        "name": "PSG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION.EHC_E15_PRODUCT_SERVICE_GROUP"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION.EHC_E15_PRODUCT_SERVICE_GROUP.EHC_E15_PSL_ITEM_INFO"
                }
        ],
        "ADJ": [
                {
                        "name": "ADJ",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION.EHC_E15_PRODUCT_SERVICE_GROUP.EHC_E15_PSL_ITEM_INFO"
                },
                {
                        "name": "ADJ",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E15_ADJUSTMENT_PAYEE"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E15_ADJUSTMENT_PAYEE"
                }
        ]
},
    groups: {
        "EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "PMT": {
                                "name": "PMT",
                                "maxReps": 1,
                                "required": true
                        },
                        "PYE": {
                                "name": "PYE",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "IPR": {
                                "name": "IPR",
                                "maxReps": 1,
                                "required": true
                        },
                        "IVC": {
                                "name": "IVC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSS": {
                                "name": "PSS",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION.EHC_E15_PRODUCT_SERVICE_GROUP": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSG": {
                                "name": "PSG",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO.EHC_E15_PRODUCT_SERVICE_SECTION.EHC_E15_PRODUCT_SERVICE_GROUP.EHC_E15_PSL_ITEM_INFO": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSL": {
                                "name": "PSL",
                                "maxReps": 1,
                                "required": true
                        },
                        "ADJ": {
                                "name": "ADJ",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E15_ADJUSTMENT_PAYEE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ADJ": {
                                "name": "ADJ",
                                "maxReps": 1,
                                "required": true
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type EHC_E15 record {
    *hl7v2:Message;
    string name = EHC_E15_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO payment_remittance_header_info = {pmt: {}, pye: {}};
    EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO[] payment_remittance_detail_info = [{ipr: {}, ivc: {}}];
    EHC_E15_ADJUSTMENT_PAYEE[] adjustment_payee = [{adj: {}}];
};
