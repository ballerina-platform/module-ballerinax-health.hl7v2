
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

public const MFR_M05_MESSAGE_TYPE = "MFR_M05";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + msa - MSA
# + err - ERR
# + qak - QAK
# + qrd - QRD
# + qrf - QRF
# + mfi - MFI
# + dsc - DSC
# + mf_query - MFR_M05_MF_QUERY Segment Group

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
        "QAK": [
                {
                        "name": "QAK",
                        "maxReps": 1,
                        "required": false
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
                        "segmentComponentName": "MFR_M05_MF_QUERY"
                }
        ],
        "LOC": [
                {
                        "name": "LOC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "MFR_M05_MF_QUERY"
                }
        ],
        "LCH": [
                {
                        "name": "LCH",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFR_M05_MF_QUERY"
                },
                {
                        "name": "LCH",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFR_M05_MF_QUERY"
                }
        ],
        "LRL": [
                {
                        "name": "LRL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFR_M05_MF_QUERY"
                }
        ],
        "LDP": [
                {
                        "name": "LDP",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "MFR_M05_MF_QUERY"
                }
        ],
        "LCC": [
                {
                        "name": "LCC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "MFR_M05_MF_QUERY"
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
        "MFR_M05_MF_QUERY": {
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
                        },
                        "LDP": {
                                "name": "LDP",
                                "maxReps": -1,
                                "required": true
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
public type MFR_M05 record {
    *hl7v2:Message;
    string name = MFR_M05_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    ERR[] err = [];
    QAK qak?;
    QRD qrd;
    QRF qrf?;
    MFI mfi;
    DSC dsc?;
    MFR_M05_MF_QUERY[] mf_query = [{mfe: {}, loc: {}}];
};
