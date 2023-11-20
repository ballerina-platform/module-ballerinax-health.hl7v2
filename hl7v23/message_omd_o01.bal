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
public const OMD_O01_MESSAGE_TYPE = "OMD_O01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - OMD_O01_PATIENT Segment Group
# + order_diet - OMD_O01_ORDER_DIET Segment Group
# + order_tray - OMD_O01_ORDER_TRAY Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMD_O01_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMD_O01_PATIENT_VISIT": {name: "OMD_O01_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMD_O01_PATIENT_VISIT},
                "OMD_O01_INSURANCE": {name: "OMD_O01_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMD_O01_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMD_O01_ORDER_DIET": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OMD_O01_DIET": {name: "OMD_O01_DIET", maxReps: 1, required: false, segmentType: typeof OMD_O01_DIET}
            }
        },
        "OMD_O01_ORDER_TRAY": {
            maxReps: -1,
            required: false,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "ODT": {name: "ODT", maxReps: -1, required: true, segmentType: typeof ODT},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        }
    }
}
public type OMD_O01 record {
    *hl7v2:Message;
    string name = OMD_O01_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    OMD_O01_PATIENT[] patient = [{pid:{}}];
    OMD_O01_ORDER_DIET[] order_diet = [{orc:{}}];
    OMD_O01_ORDER_TRAY[] order_tray = [{orc:{}}];
};