// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

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
public const ORU_R30_MESSAGE_TYPE = "ORU_R30";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + prt - PRT Segment
# + orc - ORC Segment
# + obr - OBR Segment
# + nte - NTE Segment
# + patient_observation - ORU_R30_PATIENT_OBSERVATION Segment Group
# + visit - ORU_R30_VISIT Segment Group
# + timing_qty - ORU_R30_TIMING_QTY Segment Group
# + observation - ORU_R30_OBSERVATION Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: PRT},
        "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: ORC},
        "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: OBR},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "ORU_R30_PATIENT_OBSERVATION": {
            maxReps: -1,
            required: false,
            segments: {
                "OBX": {name: "OBX", maxReps: 1, required: true, segmentType: typeof OBX},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT}
            }
        },
        "ORU_R30_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT}
            }
        },
        "ORU_R30_TIMING_QTY": {
            maxReps: -1,
            required: false,
            segments: {
                "TQ1": {name: "TQ1", maxReps: 1, required: true, segmentType: typeof TQ1},
                "TQ2": {name: "TQ2", maxReps: -1, required: false, segmentType: typeof TQ2}
            }
        },
        "ORU_R30_OBSERVATION": {
            maxReps: -1,
            required: true,
            segments: {
                "OBX": {name: "OBX", maxReps: 1, required: true, segmentType: typeof OBX},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        }
    }
}
public type ORU_R30 record {
    *hl7v2:Message;
    string name = ORU_R30_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    PID pid;
    PD1 pd1?;
    PRT[] prt = [];
    ORC orc;
    OBR obr;
    NTE[] nte = [];
    ORU_R30_PATIENT_OBSERVATION[] patient_observation = [{obx:{}}];
    ORU_R30_VISIT[] visit = [{pv1:{}}];
    ORU_R30_TIMING_QTY[] timing_qty = [{tq1:{}}];
    ORU_R30_OBSERVATION[] observation = [{obx:{}}];
};