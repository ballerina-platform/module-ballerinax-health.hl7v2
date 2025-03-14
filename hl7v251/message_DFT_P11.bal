
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

public const DFT_P11_MESSAGE_TYPE = "DFT_P11";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + evn - EVN
# + pid - PID
# + pd1 - PD1
# + rol - ROL
# + pv1 - PV1
# + pv2 - PV2
# + db1 - DB1
# + dg1 - DG1
# + drg - DRG
# + gt1 - GT1
# + acc - ACC
# + insurance - DFT_P11_INSURANCE Segment Group
# + common_order - DFT_P11_COMMON_ORDER Segment Group
# + financial - DFT_P11_FINANCIAL Segment Group

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
        "EVN": [
                {
                        "name": "EVN",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PID": [
                {
                        "name": "PID",
                        "maxReps": 1,
                        "required": true
                }
        ],
        "PD1": [
                {
                        "name": "PD1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "ROL": [
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_INSURANCE"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_PROCEDURE"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_INSURANCE"
                }
        ],
        "PV1": [
                {
                        "name": "PV1",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "PV2": [
                {
                        "name": "PV2",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "DB1": [
                {
                        "name": "DB1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "ORC": [
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER.DFT_P11_TIMING_QUANTITY"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_TIMING_QUANTITY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER.DFT_P11_TIMING_QUANTITY"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_TIMING_QUANTITY"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER.DFT_P11_ORDER"
                },
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_ORDER"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER.DFT_P11_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER.DFT_P11_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_OBSERVATION"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_COMMON_ORDER.DFT_P11_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_OBSERVATION"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL"
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false
                },
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL"
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL"
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_INSURANCE"
                },
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_INSURANCE"
                },
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_INSURANCE"
                },
                {
                        "name": "IN3",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_INSURANCE"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "FT1": [
                {
                        "name": "FT1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_FINANCIAL"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_PROCEDURE"
                }
        ]
},
    groups: {
        "DFT_P11_COMMON_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "DFT_P11_COMMON_ORDER.DFT_P11_TIMING_QUANTITY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "TQ1": {
                                "name": "TQ1",
                                "maxReps": 1,
                                "required": true
                        },
                        "TQ2": {
                                "name": "TQ2",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "DFT_P11_COMMON_ORDER.DFT_P11_ORDER": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OBR": {
                                "name": "OBR",
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
        "DFT_P11_COMMON_ORDER.DFT_P11_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
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
        "DFT_P11_INSURANCE": {
                "maxReps": -1,
                "required": false,
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
                        },
                        "IN3": {
                                "name": "IN3",
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
        "DFT_P11_FINANCIAL": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "FT1": {
                                "name": "FT1",
                                "maxReps": 1,
                                "required": true
                        },
                        "DG1": {
                                "name": "DG1",
                                "maxReps": -1,
                                "required": false
                        },
                        "DRG": {
                                "name": "DRG",
                                "maxReps": 1,
                                "required": false
                        },
                        "GT1": {
                                "name": "GT1",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_PROCEDURE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": true
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "ORC": {
                                "name": "ORC",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_TIMING_QUANTITY": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "TQ1": {
                                "name": "TQ1",
                                "maxReps": 1,
                                "required": true
                        },
                        "TQ2": {
                                "name": "TQ2",
                                "maxReps": -1,
                                "required": false
                        }
                }
        },
        "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_ORDER": {
                "maxReps": 1,
                "required": false,
                "segments": {
                        "OBR": {
                                "name": "OBR",
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
        "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_COMMON_ORDER.DFT_P11_FINANCIAL_OBSERVATION": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "OBX": {
                                "name": "OBX",
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
        "DFT_P11_FINANCIAL.DFT_P11_FINANCIAL_INSURANCE": {
                "maxReps": -1,
                "required": false,
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
                        },
                        "IN3": {
                                "name": "IN3",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        }
                }
        }
}
}
public type DFT_P11 record {
    *hl7v2:Message;
    string name = DFT_P11_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    EVN evn;
    PID pid;
    PD1 pd1?;
    ROL[] rol = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
    DFT_P11_INSURANCE[] insurance = [{in1: {}}];
    DFT_P11_COMMON_ORDER[] common_order = [{}];
    DFT_P11_FINANCIAL[] financial = [{ft1: {}}];
};
