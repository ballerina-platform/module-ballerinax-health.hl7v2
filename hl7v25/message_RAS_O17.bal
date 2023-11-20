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
public const RAS_O17_MESSAGE_TYPE = "RAS_O17";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + patient - RAS_O17_PATIENT Segment Group
# + order - RAS_O17_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RAS_O17_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1},
                "RAS_O17_PATIENT_VISIT": {name: "RAS_O17_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof RAS_O17_PATIENT_VISIT}
            }
        },
        "RAS_O17_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "RAS_O17_TIMING": {name: "RAS_O17_TIMING", maxReps: -1, required: false, segmentType: typeof RAS_O17_TIMING},
                "RAS_O17_ORDER_DETAIL": {name: "RAS_O17_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof RAS_O17_ORDER_DETAIL},
                "RAS_O17_ENCODING": {name: "RAS_O17_ENCODING", maxReps: 1, required: false, segmentType: typeof RAS_O17_ENCODING},
                "RAS_O17_ADMINISTRATION": {name: "RAS_O17_ADMINISTRATION", maxReps: -1, required: true, segmentType: typeof RAS_O17_ADMINISTRATION},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI}
            }
        }
    }
}
public type RAS_O17 record {
    *hl7v2:Message;
    string name = RAS_O17_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    NTE[] nte = [];
    RAS_O17_PATIENT[] patient = [{pid:{}}];
    RAS_O17_ORDER[] 'order = [{orc:{}}];
};