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
public const OMN_O01_MESSAGE_TYPE = "OMN_O01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - OMN_O01_PATIENT Segment Group
# + order - OMN_O01_ORDER Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "OMN_O01_PATIENT"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL.OMN_O01_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL"}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT.OMN_O01_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT.OMN_O01_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT.OMN_O01_INSURANCE"}],
        "GT1": [{name: "GT1", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT"}],
        "AL1": [{name: "AL1", maxReps: -1, required: false, segmentComponentName: "OMN_O01_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT"}],
        "PD1": [{name: "PD1", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT.OMN_O01_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "OMN_O01_PATIENT.OMN_O01_PATIENT_VISIT"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "OMN_O01_ORDER"}],
        "RQ1": [{name: "RQ1", maxReps: 1, required: false, segmentComponentName: "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL"}],
        "RQD": [{name: "RQD", maxReps: 1, required: false, segmentComponentName: "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL.OMN_O01_OBSERVATION"}],
        "BLG": [{name: "BLG", maxReps: 1, required: false, segmentComponentName: "OMN_O01_ORDER"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "OMN_O01_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "OMN_O01_PATIENT_VISIT": {name: "OMN_O01_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof OMN_O01_PATIENT_VISIT},
                "OMN_O01_INSURANCE": {name: "OMN_O01_INSURANCE", maxReps: -1, required: false, segmentType: typeof OMN_O01_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "OMN_O01_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "OMN_O01_ORDER_DETAIL": {name: "OMN_O01_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof OMN_O01_ORDER_DETAIL},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        },
        "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL.OMN_O01_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "OMN_O01_PATIENT.OMN_O01_PATIENT_VISIT": {
		   maxReps: 1,
		   required: false
		},
        "OMN_O01_PATIENT.OMN_O01_INSURANCE": {
		   maxReps: -1,
		   required: false
		},
        "OMN_O01_ORDER.OMN_O01_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		}
    }
}
public type OMN_O01 record {
    *hl7v2:Message;
    string name = OMN_O01_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    OMN_O01_PATIENT[] patient = [{pid:{}}];
    OMN_O01_ORDER[] 'order = [{orc:{}}];
};