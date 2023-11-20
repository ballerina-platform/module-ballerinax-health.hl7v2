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
public const OMN_O07_MESSAGE_TYPE = "OMN_O07";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + patient - OMN_O07_PATIENT Segment Group
# + order - OMN_O07_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMN_O07_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMN_O07_PATIENT_VISIT": {name: "OMN_O07_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMN_O07_PATIENT_VISIT},
                "OMN_O07_INSURANCE": {name: "OMN_O07_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMN_O07_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMN_O07_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OMN_O07_TIMING": {name: "OMN_O07_TIMING", maxReps: -1, required: false, segmentType: typeof OMN_O07_TIMING},
                "RQD": {name: "RQD", maxReps: 1, required: true, segmentType: typeof RQD},
                "RQ1": {name: "RQ1", maxReps: 1, required: false, segmentType: typeof RQ1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMN_O07_OBSERVATION": {name: "OMN_O07_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OMN_O07_OBSERVATION},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        }
    }
}
public type OMN_O07 record {
    *hl7v2:Message;
    string name = OMN_O07_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE[] nte = [];
    OMN_O07_PATIENT[] patient = [{pid:{}}];
    OMN_O07_ORDER[] 'order = [{orc:{}, rqd:{}}];
};