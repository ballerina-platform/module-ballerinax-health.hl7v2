
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

public const CRM_C02_MESSAGE_TYPE = "CRM_C02";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + patient - CRM_C02_PATIENT Segment Group

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
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CRM_C02_PATIENT"
                }
        ],
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CRM_C02_PATIENT"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CRM_C02_PATIENT.CRM_C02_PATIENT_VISIT"
                }
        ],
        "ARV": [
                {
                        "name": "ARV",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CRM_C02_PATIENT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CRM_C02_PATIENT.CRM_C02_PATIENT_VISIT"
                }
        ],
        "CSR": [
                {
                        "name": "CSR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "CRM_C02_PATIENT"
                }
        ],
        "CSP": [
                {
                        "name": "CSP",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "CRM_C02_PATIENT"
                }
        ]
},
    groups: {
        "CRM_C02_PATIENT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "ARV": {
                                "name": "ARV",
                                "maxReps": -1,
                                "required": false
                        },
                        "CSR": {
                                "name": "CSR",
                                "maxReps": 1,
                                "required": true
                        },
                        "CSP": {
                                "name": "CSP",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "CRM_C02_PATIENT.CRM_C02_PATIENT_VISIT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type CRM_C02 record {
    *hl7v2:Message;
    string name = CRM_C02_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    CRM_C02_PATIENT[] patient = [{pid: {}, csr: {}}];
};
