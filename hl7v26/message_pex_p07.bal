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
public const PEX_P07_MESSAGE_TYPE = "PEX_P07";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + evn - EVN Segment
# + pid - PID Segment
# + pd1 - PD1 Segment
# + nte - NTE Segment
# + visit - PEX_P07_VISIT Segment Group
# + experience - PEX_P07_EXPERIENCE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "PEX_P07_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "PEX_P07_EXPERIENCE": {
            maxReps: -1,
            required: true,
            segments: {
                "PES": {name: "PES", maxReps: 1, required: true, segmentType: typeof PES},
                "PEX_P07_PEX_OBSERVATION": {name: "PEX_P07_PEX_OBSERVATION", maxReps: -1, required: true, segmentType: typeof PEX_P07_PEX_OBSERVATION}
            }
        }
    }
}
public type PEX_P07 record {
    *hl7v2:Message;
    string name = PEX_P07_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    PID pid;
    PD1 pd1?;
    NTE[] nte = [];
    PEX_P07_VISIT[] visit = [{pv1:{}}];
    PEX_P07_EXPERIENCE[] experience = [{pes:{}}];
};