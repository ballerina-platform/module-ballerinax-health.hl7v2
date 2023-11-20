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
public const OML_O21_MESSAGE_TYPE = "OML_O21";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - OML_O21_PATIENT Segment Group
# + order_general - OML_O21_ORDER_GENERAL Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OML_O21_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OML_O21_PATIENT_VISIT": {name: "OML_O21_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OML_O21_PATIENT_VISIT},
                "OML_O21_INSURANCE": {name: "OML_O21_INSURANCE", maxReps: -1, required: false, segmentType: typeof OML_O21_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OML_O21_ORDER_GENERAL": {
            maxReps: -1,
            required: true,
            segments: {
                "OML_O21_CONTAINER_1": {name: "OML_O21_CONTAINER_1", maxReps: 1, required: false, segmentType: typeof OML_O21_CONTAINER_1},
                "OML_O21_ORDER": {name: "OML_O21_ORDER", maxReps: -1, required: true, segmentType: typeof OML_O21_ORDER}
            }
        }
    }
}
public type OML_O21 record {
    *hl7v2:Message;
    string name = OML_O21_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    OML_O21_PATIENT[] patient = [{pid:{}}];
    OML_O21_ORDER_GENERAL[] order_general = [{}];
};