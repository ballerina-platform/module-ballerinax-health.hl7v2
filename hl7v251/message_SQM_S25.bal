
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

public const SQM_S25_MESSAGE_TYPE = "SQM_S25";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + qrd - QRD
# + qrf - QRF
# + dsc - DSC
# + request - SQM_S25_REQUEST Segment Group

@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [
                {
                        "name": "MSH",
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
        "ARQ": [
                {
                        "name": "ARQ",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SQM_S25_REQUEST"
                }
        ],
        "APR": [
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SQM_S25_REQUEST"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_SERVICE"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_GENERAL_RESOURCE"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_PERSONNEL_RESOURCE"
                },
                {
                        "name": "APR",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_LOCATION_RESOURCE"
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "SQM_S25_REQUEST"
                }
        ],
        "RGS": [
                {
                        "name": "RGS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES"
                }
        ],
        "AIS": [
                {
                        "name": "AIS",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_SERVICE"
                }
        ],
        "AIG": [
                {
                        "name": "AIG",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_GENERAL_RESOURCE"
                }
        ],
        "AIP": [
                {
                        "name": "AIP",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_PERSONNEL_RESOURCE"
                }
        ],
        "AIL": [
                {
                        "name": "AIL",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_LOCATION_RESOURCE"
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
        "SQM_S25_REQUEST": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "ARQ": {
                                "name": "ARQ",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
                                "maxReps": 1,
                                "required": false
                        },
                        "PID": {
                                "name": "PID",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "SQM_S25_REQUEST.SQM_S25_RESOURCES": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "RGS": {
                                "name": "RGS",
                                "maxReps": 1,
                                "required": true
                        }
                }
        },
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_SERVICE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIS": {
                                "name": "AIS",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_GENERAL_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIG": {
                                "name": "AIG",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_PERSONNEL_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIP": {
                                "name": "AIP",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "SQM_S25_REQUEST.SQM_S25_RESOURCES.SQM_S25_LOCATION_RESOURCE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "AIL": {
                                "name": "AIL",
                                "maxReps": 1,
                                "required": true
                        },
                        "APR": {
                                "name": "APR",
                                "maxReps": 1,
                                "required": false
                        }
                }
        }
}
}
public type SQM_S25 record {
    *hl7v2:Message;
    string name = SQM_S25_MESSAGE_TYPE;
    MSH msh;
    QRD qrd;
    QRF qrf?;
    DSC dsc?;
    SQM_S25_REQUEST request?;
};
