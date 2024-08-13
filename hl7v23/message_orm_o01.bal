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

public const ORM_O01_MESSAGE_TYPE = "ORM_O01";

# HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + nte - NTE Segment
# + patient - ORM_O01_PATIENT Segment Group
# + order - ORM_O01_ORDER Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "NTE": [{name: "NTE", maxReps: -1, required: false}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "ORM_O01_PATIENT"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL"}],
        "GT1": [{name: "GT1", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT"}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT.ORM_O01_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT.ORM_O01_PATIENT_VISIT"}],
        "AL1": [{name: "AL1", maxReps: -1, required: false, segmentComponentName: "ORM_O01_PATIENT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT"}],
        "PD1": [{name: "PD1", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT"}],
        "IN2": [{name: "IN2", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT.ORM_O01_INSURANCE"}],
        "IN1": [{name: "IN1", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT.ORM_O01_INSURANCE"}],
        "IN3": [{name: "IN3", maxReps: 1, required: false, segmentComponentName: "ORM_O01_PATIENT.ORM_O01_INSURANCE"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER"}],
        "CTI": [{name: "CTI", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT"}],    
        "RQD": [{name: "RQD", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT"}],
        "RQ1": [{name: "RQ1", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT"}],
        "RXO": [{name: "RXO", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT"}],
        "ODS": [{name: "ODS", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT"}],
        "ODT": [{name: "ODT", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_OBSERVATION"}],
        "DG1": [{name: "DG1", maxReps: -1, required: false, segmentComponentName: "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL"}],
        "BLG": [{name: "BLG", maxReps: 1, required: false, segmentComponentName: "ORM_O01_ORDER"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,
    groups: {
        "ORM_O01_PATIENT": {
            maxReps: -1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "ORM_O01_PATIENT_VISIT": {name: "ORM_O01_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof ORM_O01_PATIENT_VISIT},
                "ORM_O01_INSURANCE": {name: "ORM_O01_INSURANCE", maxReps: -1, required: false, segmentType: typeof ORM_O01_INSURANCE},
                "GT1": {name: "GT1", maxReps: 1, required: false, segmentType: typeof GT1},
                "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: typeof AL1}
            }
        },
        "ORM_O01_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "ORM_O01_ORDER_DETAIL": {name: "ORM_O01_ORDER_DETAIL", maxReps: 1, required: false, segmentType: typeof ORM_O01_ORDER_DETAIL},
                "CTI": {name: "CTI", maxReps: 1, required: false, segmentType: typeof CTI},
                "BLG": {name: "BLG", maxReps: 1, required: false, segmentType: typeof BLG}
            }
        },
        "ORM_O01_PATIENT.ORM_O01_PATIENT_VISIT": {
            maxReps: 1,
            required: false
        },
        "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "ORM_O01_ORDER.ORM_O01_ORDER_DETAIL.ORM_O01_ORDER_DETAIL_SEGMENT": {
           maxReps: 1,
		   required: false
        },
        "ORM_O01_PATIENT.ORM_O01_INSURANCE": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type ORM_O01 record {
    *hl7v2:Message;
    string name = ORM_O01_MESSAGE_TYPE;
    MSH msh;
    NTE[] nte = [];
    ORM_O01_PATIENT[] patient = [{pid: {}}];
    ORM_O01_ORDER[] 'order = [{orc: {}}];
};
