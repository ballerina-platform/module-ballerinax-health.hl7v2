
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

public const DOC_T12_MESSAGE_TYPE = "DOC_T12";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + qrd - QRD
# + dsc - DSC
# + result - DOC_T12_RESULT Segment Group

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
        "ERR": [
                {
                        "name": "ERR",
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
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DOC_T12_RESULT"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DOC_T12_RESULT"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DOC_T12_RESULT"
                }
        ],
        "TXA": [
                {
                        "name": "TXA",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DOC_T12_RESULT"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DOC_T12_RESULT"
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
        "DOC_T12_RESULT": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "EVN": {
                                "name": "EVN",
                                "maxReps": 1,
                                "required": false
                        },
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": true
                        },
                        "PV1": {
                                "name": "PV1",
                                "maxReps": 1,
                                "required": true
                        },
                        "TXA": {
                                "name": "TXA",
                                "maxReps": 1,
                                "required": true
                        },
                        "OBX": {
                                "name": "OBX",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type DOC_T12 record {
    *hl7v2:Message;
    string name = DOC_T12_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    DSC dsc?;
    DOC_T12_RESULT[] result = [{pid: {}, pv1: {}, txa: {}}];
};
