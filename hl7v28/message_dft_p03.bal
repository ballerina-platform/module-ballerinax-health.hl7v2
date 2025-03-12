
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

public const DFT_P03_MESSAGE_TYPE = "DFT_P03";

#  HL7 Message
#
# + name - Message name
# + msh - MSH
# + sft - SFT
# + uac - UAC
# + evn - EVN
# + pid - PID
# + pd1 - PD1
# + prt - PRT
# + rol - ROL
# + pv1 - PV1
# + pv2 - PV2
# + db1 - DB1
# + dg1 - DG1
# + drg - DRG
# + gt1 - GT1
# + acc - ACC
# + financial - DFT_P03_FINANCIAL Segment Group
# + insurance - DFT_P03_INSURANCE Segment Group
# + common_order - DFT_P03_COMMON_ORDER Segment Group

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
        "PRT": [
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE"
                },
                {
                        "name": "PRT",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_INSURANCE"
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
                        "segmentComponentName": "DFT_P03_FINANCIAL"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE"
                },
                {
                        "name": "ROL",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_INSURANCE"
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
                        "segmentComponentName": "DFT_P03_COMMON_ORDER"
                },
                {
                        "name": "ORC",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER"
                }
        ],
        "TQ1": [
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_COMMON_ORDER.DFT_P03_TIMING_QUANTITY"
                },
                {
                        "name": "TQ1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_TIMING_QUANTITY"
                }
        ],
        "TQ2": [
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_COMMON_ORDER.DFT_P03_TIMING_QUANTITY"
                },
                {
                        "name": "TQ2",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_TIMING_QUANTITY"
                }
        ],
        "OBR": [
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_COMMON_ORDER.DFT_P03_ORDER"
                },
                {
                        "name": "OBR",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_ORDER"
                }
        ],
        "NTE": [
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_COMMON_ORDER.DFT_P03_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_COMMON_ORDER.DFT_P03_OBSERVATION"
                },
                {
                        "name": "NTE",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_ORDER"
                },
                {
                        "name": "NTE",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_OBSERVATION"
                }
        ],
        "OBX": [
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_COMMON_ORDER.DFT_P03_OBSERVATION"
                },
                {
                        "name": "OBX",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_OBSERVATION"
                }
        ],
        "FT1": [
                {
                        "name": "FT1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_FINANCIAL"
                }
        ],
        "PR1": [
                {
                        "name": "PR1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE"
                }
        ],
        "DG1": [
                {
                        "name": "DG1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "DRG": [
                {
                        "name": "DRG",
                        "maxReps": 1,
                        "required": false
                }
        ],
        "GT1": [
                {
                        "name": "GT1",
                        "maxReps": -1,
                        "required": false
                }
        ],
        "IN1": [
                {
                        "name": "IN1",
                        "maxReps": 1,
                        "required": true,
                        "segmentComponentName": "DFT_P03_INSURANCE"
                }
        ],
        "IN2": [
                {
                        "name": "IN2",
                        "maxReps": 1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_INSURANCE"
                }
        ],
        "IN3": [
                {
                        "name": "IN3",
                        "maxReps": -1,
                        "required": false,
                        "segmentComponentName": "DFT_P03_INSURANCE"
                }
        ],
        "ACC": [
                {
                        "name": "ACC",
                        "maxReps": 1,
                        "required": false
                }
        ]
},
    groups: {
        "DFT_P03_COMMON_ORDER": {
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
        "DFT_P03_COMMON_ORDER.DFT_P03_TIMING_QUANTITY": {
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
        "DFT_P03_COMMON_ORDER.DFT_P03_ORDER": {
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
        "DFT_P03_COMMON_ORDER.DFT_P03_OBSERVATION": {
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
        "DFT_P03_FINANCIAL": {
                "maxReps": -1,
                "required": true,
                "segments": {
                        "FT1": {
                                "name": "FT1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
                                "maxReps": -1,
                                "required": false
                        },
                        "ROL": {
                                "name": "ROL",
                                "maxReps": -1,
                                "required": false
                        },
                        "NTE": {
                                "name": "NTE",
                                "maxReps": 1,
                                "required": false
                        }
                }
        },
        "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_PROCEDURE": {
                "maxReps": -1,
                "required": false,
                "segments": {
                        "PR1": {
                                "name": "PR1",
                                "maxReps": 1,
                                "required": true
                        },
                        "PRT": {
                                "name": "PRT",
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
        "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER": {
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
        "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_TIMING_QUANTITY": {
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
        "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_ORDER": {
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
        "DFT_P03_FINANCIAL.DFT_P03_FINANCIAL_COMMON_ORDER.DFT_P03_FINANCIAL_OBSERVATION": {
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
        "DFT_P03_INSURANCE": {
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
                        "PRT": {
                                "name": "PRT",
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
public type DFT_P03 record {
    *hl7v2:Message;
    string name = DFT_P03_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    PID pid;
    PD1 pd1?;
    PRT[] prt = [];
    ROL[] rol = [];
    PV1 pv1?;
    PV2 pv2?;
    DB1[] db1 = [];
    DG1[] dg1 = [];
    DRG drg?;
    GT1[] gt1 = [];
    ACC acc?;
    DFT_P03_FINANCIAL[] financial = [{ft1: {}}];
    DFT_P03_INSURANCE[] insurance = [{in1: {}}];
    DFT_P03_COMMON_ORDER[] common_order = [{}];
};
