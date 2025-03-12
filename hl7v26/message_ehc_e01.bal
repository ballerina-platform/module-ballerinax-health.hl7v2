
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

public const EHC_E01_MESSAGE_TYPE = "EHC_E01";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + invoice_information - EHC_E01_INVOICE_INFORMATION Segment Group

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
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION"
                }
        ],
        "PYE": [
                {
                        "name": "PYE",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION"
                }
        ],
        "CTD": [
                {
                        "name": "CTD",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION"
                }
        ],
        "AUT": [
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION"
                },
                {
                        "name": "AUT",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM"
                }
        ],
        "LOC": [
                {
                        "name": "LOC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION"
                },
                {
                        "name": "LOC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP"
                },
                {
                        "name": "LOC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM"
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PROCEDURE"
                }
        ],
        "PSS": [
                {
                        "name": "PSS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION"
                }
        ],
        "PSG": [
                {
                        "name": "PSG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO"
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO.EHC_E01_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO.EHC_E01_INSURANCE"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO.EHC_E01_DIAGNOSIS"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO.EHC_E01_DIAGNOSIS"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PROCEDURE"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO"
                }
        ],
        "PSL": [
                {
                        "name": "PSL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM"
                }
        ],
        "ADJ": [
                {
                        "name": "ADJ",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PROCEDURE"
                }
        ],
        "IPR": [
                {
                        "name": "IPR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_INVOICE_PROCESSING"
                }
        ]
},
    groups: {
        "EHC_E01_INVOICE_INFORMATION": {
                "maxReps": 1,
                "required": true,
                "segments": {
                        "IVC": {
                                "name": "IVC",
                                "maxReps": 1,
                                "required": true
                        },
                        "PYE": {
                                "name": "PYE",
                                "maxReps": 1,
                                "required": false
                        },
                        "CTD": {
                                "name": "CTD",
                                "maxReps": -1,
                                "required": false
                        },
                        "AUT": {
                                "name": "AUT",
                                "maxReps": 1,
                                "required": false
                        },
                        "LOC": {
                                "name": "LOC",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION": {
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
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSG": {
                                "name": "PSG",
                                "maxReps": 1,
                                "required": true
                        },
                        "LOC": {
                                "name": "LOC",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": false
                        },
                        "PV2": {
                                "name": "PV2",
                                "maxReps": 1,
                                "required": false
                        },
                        "ACC": {
                                "name": "ACC",
                                "maxReps": -1,
                                "required": false
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO.EHC_E01_INSURANCE": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "IN1": {
                                "name": "IN1",
                                "maxReps": 1,
                                "required": true
                        },
                        "IN2": {
                                "name": "IN2",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PATIENT_INFO.EHC_E01_DIAGNOSIS": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "DG1": {
                                "name": "DG1",
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
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PRODUCT_SERVICE_LINE_ITEM": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PSL": {
                                "name": "PSL",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "ADJ": {
                                "name": "ADJ",
                                "maxReps": -1,
                                "required": false
                        },
                        "AUT": {
                                "name": "AUT",
                                "maxReps": 1,
                                "required": false
                        },
                        "LOC": {
                                "name": "LOC",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_PROCEDURE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "EHC_E01_INVOICE_INFORMATION.EHC_E01_PRODUCT_SERVICE_SECTION.EHC_E01_PRODUCT_SERVICE_GROUP.EHC_E01_INVOICE_PROCESSING": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "IPR": {
                                "name": "IPR",
                                "maxReps": 1,
                                "required": true
                        }
                }
        }
}
}
public type EHC_E01 record {
    *hl7v2:Message;
    string name = EHC_E01_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    EHC_E01_INVOICE_INFORMATION invoice_information = {ivc: {}};
};
