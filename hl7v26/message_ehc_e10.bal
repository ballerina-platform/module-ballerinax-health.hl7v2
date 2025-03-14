
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

public const EHC_E10_MESSAGE_TYPE = "EHC_E10";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + msa - MSA
# + err - ERR
# + invoice_processing_results_info - EHC_E10_INVOICE_PROCESSING_RESULTS_INFO Segment Group

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
        "IPR": [
                {
                        "name": "IPR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO"
                }
        ],
        "PYE": [
                {
                        "name": "PYE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO"
                }
        ],
        "IVC": [
                {
                        "name": "IVC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO"
                }
        ],
        "PSS": [
                {
                        "name": "PSS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION"
                }
        ],
        "PSG": [
                {
                        "name": "PSG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION.EHC_E10_PRODUCT_SERVICE_GROUP"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION.EHC_E10_PRODUCT_SERVICE_GROUP.EHC_E10_PRODUCT_SERVICE_LINE_INFO"
                }
        ],
        "ADJ": [
                {
                        "name": "ADJ",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION.EHC_E10_PRODUCT_SERVICE_GROUP.EHC_E10_PRODUCT_SERVICE_LINE_INFO"
                }
        ]
},
    groups: {
        "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "IPR": {
                                "name": "IPR",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "PYE": {
                                "name": "PYE",
                                "maxReps": 1,
                                "required": true
                        },
                        "IN1": {
                                "name": "IN1",
                                "maxReps": 1,
                                "required": true
                        },
                        "IN2": {
                                "name": "IN2",
                                "maxReps": 1,
                                "required": false
                        },
                        "IVC": {
                                "name": "IVC",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION": {
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
        "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION.EHC_E10_PRODUCT_SERVICE_GROUP": {
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
        "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO.EHC_E10_PRODUCT_SERVICE_SECTION.EHC_E10_PRODUCT_SERVICE_GROUP.EHC_E10_PRODUCT_SERVICE_LINE_INFO": {
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
        }
}
}
public type EHC_E10 record {
    *hl7v2:Message;
    string name = EHC_E10_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    MSA msa;
    ERR[] err = [];
    EHC_E10_INVOICE_PROCESSING_RESULTS_INFO[] invoice_processing_results_info = [{ipr: {}, pye: {}, in1: {}, ivc: {}}];
};
