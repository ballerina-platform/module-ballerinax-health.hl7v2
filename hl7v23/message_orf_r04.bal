
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

public const ORF_R04_MESSAGE_TYPE = "ORF_R04";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + qrd - QRD
# + qrf - QRF
# + dsc - DSC

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
        "QRD": [
                {
                        "name": "QRD",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "QRF": [
                {
                        "name": "QRF",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_PATIENT"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_PATIENT"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER.ORF_R04_OBSERVATION"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER.ORF_R04_OBSERVATION"
                }
        ],
        "CTI": [
                {
                        "name": "CTI",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER"
                }
        ],
        "DSC": [
                {
                        "name": "DSC",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {
        "ORF_R04_QUERY_RESPONSE": {
                "maxReps": -1,
                "required": true,
                "segments": {}
        },
        "ORF_R04_QUERY_RESPONSE.ORF_R04_PATIENT": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "PID": {
                                "name": "PID",
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
        "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        },
                        "OBR": {
                                "name": "OBR",
                                "maxReps": 1,
                                "required": true
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        },
                        "CTI": {
                                "name": "CTI",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "ORF_R04_QUERY_RESPONSE.ORF_R04_ORDER.ORF_R04_OBSERVATION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "OBX": {
                                "name": "OBX",
                                "maxReps": 1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type ORF_R04 record {
    *hl7v2:Message;
    string name = ORF_R04_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    QRD qrd;
    QRF qrf?;
    DSC dsc?;

};
