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
public const MDM_T02_MESSAGE_TYPE = "MDM_T02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pv1 - PV1 Segment
# + txa - TXA Segment
# + con - CON Segment
# + common_order - MDM_T02_COMMON_ORDER Segment Group
# + observation - MDM_T02_OBSERVATION Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: PV1},
        "TXA": {name: "TXA", maxReps: 1, required: true, segmentType: TXA},
        "CON": {name: "CON", maxReps: -1, required: false, segmentType: CON}
    }
    ,groups: {
        "MDM_T02_COMMON_ORDER": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "MDM_T02_TIMING": {name: "MDM_T02_TIMING", maxReps: -1, required: false, segmentType: typeof MDM_T02_TIMING},
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        },
        "MDM_T02_OBSERVATION": {
            maxReps: -1,
            required: true,
            segments: {
                "OBX": {name: "OBX", maxReps: 1, required: true, segmentType: typeof OBX},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        }
    }
}
public type MDM_T02 record {
    *hl7v2:Message;
    string name = MDM_T02_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    PID pid;
    PV1 pv1;
    TXA txa;
    CON[] con = [];
    MDM_T02_COMMON_ORDER[] common_order = [{orc:{}, obr:{}}];
    MDM_T02_OBSERVATION[] observation = [{obx:{}}];
};