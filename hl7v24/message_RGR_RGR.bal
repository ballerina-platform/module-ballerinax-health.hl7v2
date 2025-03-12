
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

public const RGR_RGR_MESSAGE_TYPE = "RGR_RGR";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + msa - MSA
# + err - ERR
# + dsc - DSC
# + defintion - RGR_RGR_DEFINTION Segment Group

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
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION"
                }
        ],
        "QRF": [
                {
                        "name": "QRF",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "RGR_RGR_DEFINTION"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_PATIENT"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_PATIENT"
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER"
                }
        ],
        "RXE": [
                {
                        "name": "RXE",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER.RGR_RGR_ENCODING"
                }
        ],
        "RXR": [
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER.RGR_RGR_ENCODING"
                },
                {
                        "name": "RXR",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER"
                }
        ],
        "RXC": [
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER.RGR_RGR_ENCODING"
                },
                {
                        "name": "RXC",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER"
                }
        ],
        "RXG": [
                {
                        "name": "RXG",
                        "maxReps": -1,
                        "required": true,
                        "segmentComponentName": "RGR_RGR_DEFINTION.RGR_RGR_ORDER"
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
        "RGR_RGR_DEFINTION": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "QRD": {
                                "name": "QRD",
                                "maxReps": 1,
                                "required": true
                        },
                        "QRF": {
                                "name": "QRF",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "RGR_RGR_DEFINTION.RGR_RGR_PATIENT": {
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
        "RGR_RGR_DEFINTION.RGR_RGR_ORDER": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXG": {
                                "name": "RXG",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXC": {
                                "name": "RXC",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "RGR_RGR_DEFINTION.RGR_RGR_ORDER.RGR_RGR_ENCODING": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "RXE": {
                                "name": "RXE",
                                "maxReps": 1,
                                "required": true
                        },
                        "RXR": {
                                "name": "RXR",
                                "maxReps": -1,
                                "required": true
                        },
                        "RXC": {
                                "name": "RXC",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type RGR_RGR record {
    *hl7v2:Message;
    string name = RGR_RGR_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    DSC dsc?;
    RGR_RGR_DEFINTION[] defintion = [{qrd: {}}];
};
