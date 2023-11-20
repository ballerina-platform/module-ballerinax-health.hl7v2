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
public const RGV_O01_MESSAGE_TYPE = "RGV_O01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - RGV_O01_PATIENT Segment Group
# + order - RGV_O01_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RGV_O01_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1},
                "RGV_O01_PATIENT_VISIT": {name: "RGV_O01_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof RGV_O01_PATIENT_VISIT}
            }
        },
        "RGV_O01_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "RGV_O01_ORDER_DETAIL": {name: "RGV_O01_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof RGV_O01_ORDER_DETAIL},
                "RGV_O01_ENCODING": {name: "RGV_O01_ENCODING", maxReps: 1, required: false, segmentType: typeof RGV_O01_ENCODING},
                "RGV_O01_GIVE": {name: "RGV_O01_GIVE", maxReps: -1, required: true, segmentType: typeof RGV_O01_GIVE}
            }
        }
    }
}
public type RGV_O01 record {
    *hl7v2:Message;
    string name = RGV_O01_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    RGV_O01_PATIENT[] patient = [{pid:{}}];
    RGV_O01_ORDER[] 'order = [{orc:{}}];
};