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
public const OMG_O19_MESSAGE_TYPE = "OMG_O19";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - OMG_O19_PATIENT Segment Group
# + order - OMG_O19_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMG_O19_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMG_O19_PATIENT_VISIT": {name: "OMG_O19_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMG_O19_PATIENT_VISIT},
                "OMG_O19_INSURANCE": {name: "OMG_O19_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMG_O19_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMG_O19_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD},
                "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: typeof DG1},
                "OMG_O19_OBSERVATION": {name: "OMG_O19_OBSERVATION", maxReps: -1, required: false, segmentType: typeof OMG_O19_OBSERVATION},
                "OMG_O19_PRIOR_RESULT": {name: "OMG_O19_PRIOR_RESULT", maxReps: -1, required: false, segmentType: typeof OMG_O19_PRIOR_RESULT},
                "FT1": {name: "FT1", maxReps: -1, required: false, segmentType: typeof FT1},
                "CTI": {name: "CTI", maxReps: -1, required: false, segmentType: typeof CTI},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        }
    }
}
public type OMG_O19 record {
    *hl7v2:Message;
    string name = OMG_O19_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    OMG_O19_PATIENT[] patient = [{pid:{}}];
    OMG_O19_ORDER[] 'order = [{orc:{}, obr:{}}];
};