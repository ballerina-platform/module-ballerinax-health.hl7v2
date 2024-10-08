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
public const RDS_O01_MESSAGE_TYPE = "RDS_O01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - RDS_O01_PATIENT Segment Group
# + order - RDS_O01_ORDER Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "RDS_O01_PATIENT"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL.RDS_O01_ORDER_DETAIL_SUPPLEMENT.RDS_O01_COMPONENT"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL.RDS_O01_ORDER_DETAIL_SUPPLEMENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "RDS_O01_PATIENT.RDS_O01_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "RDS_O01_PATIENT.RDS_O01_PATIENT_VISIT"}],
        "AL1": [{name: "AL1", maxReps: -1, required: false, segmentComponentName: "RDS_O01_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "RDS_O01_PATIENT"}],
        "PD1": [{name: "PD1", maxReps: 1, required: false, segmentComponentName: "RDS_O01_PATIENT"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "RDS_O01_ORDER"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_OBSERVATION"}],
        "RXC": [{name: "RXC", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ENCODING"}, {name: "RXC", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL.RDS_O01_ORDER_DETAIL_SUPPLEMENT.RDS_O01_COMPONENT"}, {name: "RXC", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER"}],
        "RXR": [{name: "RXR", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ENCODING"}, {name: "RXR", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL.RDS_O01_ORDER_DETAIL_SUPPLEMENT"}, {name: "RXR", maxReps: -1, required: false, segmentComponentName: "RDS_O01_ORDER"}],
        "RXE": [{name: "RXE", maxReps: 1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ENCODING"}],
        "RXO": [{name: "RXO", maxReps: 1, required: false, segmentComponentName: "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL"}],
        "RXD": [{name: "RXD", maxReps: 1, required: false, segmentComponentName: "RDS_O01_ORDER"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RDS_O01_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1},
                "RDS_O01_PATIENT_VISIT": {name: "RDS_O01_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof RDS_O01_PATIENT_VISIT}
            }
        },
        "RDS_O01_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "RDS_O01_ORDER_DETAIL": {name: "RDS_O01_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof RDS_O01_ORDER_DETAIL},
                "RDS_O01_ENCODING": {name: "RDS_O01_ENCODING", maxReps: 1, required: false, segmentType: typeof RDS_O01_ENCODING},
                "RXD": {name: "RXD", maxReps: 1, required: true, segmentType: typeof RXD},
                "RXR": {name: "RXR", maxReps: -1, required: true, segmentType: typeof RXR},
                "RXC": {name: "RXC", maxReps: -1, required: false, segmentType: typeof RXC},
                "RDS_O01_OBSERVATION": {name: "RDS_O01_OBSERVATION", maxReps: -1, required: true, segmentType: typeof RDS_O01_OBSERVATION}
            }
        },
        "RDS_O01_PATIENT.RDS_O01_PATIENT_VISIT": {
		   maxReps: 1,
		   required: false
		},
        "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL.RDS_O01_ORDER_DETAIL_SUPPLEMENT": {
		   maxReps: 1,
		   required: false
		},
        "RDS_O01_ORDER.RDS_O01_ENCODING": {
		   maxReps: 1,
		   required: false
		},
        "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "RDS_O01_ORDER.RDS_O01_ORDER_DETAIL.RDS_O01_ORDER_DETAIL_SUPPLEMENT.RDS_O01_COMPONENT": {
		   maxReps: 1,
		   required: false
		},
        "RDS_O01_ORDER.RDS_O01_OBSERVATION": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type RDS_O01 record {
    *hl7v2:Message;
    string name = RDS_O01_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    RDS_O01_PATIENT[] patient = [{pid:{}}];
    RDS_O01_ORDER[] 'order = [{orc:{}, rxd:{}}];
};