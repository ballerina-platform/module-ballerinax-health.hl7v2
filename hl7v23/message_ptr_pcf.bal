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
public const PTR_PCF_MESSAGE_TYPE = "PTR_PCF";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qrd - QRD Segment
# + patient - PTR_PCF_PATIENT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATIENT_VISIT"}],
        "ROL": [{name: "ROL", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_PROBLEM_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL.PTR_PCF_GOAL_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PATHWAY_ROLE"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER.PTR_PCF_ORDER_DETAIL.PTR_PCF_ORDER_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_PROBLEM_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL.PTR_PCF_GOAL_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER.PTR_PCF_ORDER_DETAIL.PTR_PCF_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER.PTR_PCF_ORDER_DETAIL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_PROBLEM_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL.PTR_PCF_GOAL_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER.PTR_PCF_ORDER_DETAIL"}],
        "PRB": [{name: "PRB", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM"}],
        "GOL": [{name: "GOL", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL"}],
        "PTH": [{name: "PTH", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT.PTR_PCF_PATHWAY"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "PTR_PCF_PATIENT"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD}
    }
    ,groups: {
        "PTR_PCF_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PTR_PCF_PATIENT_VISIT": {name: "PTR_PCF_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof PTR_PCF_PATIENT_VISIT},
                "PTR_PCF_PATHWAY": {name: "PTR_PCF_PATHWAY", maxReps: -1, required: true, segmentType: typeof PTR_PCF_PATHWAY}
            }
        },
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_PROBLEM_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER.PTR_PCF_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_PROBLEM_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PATHWAY_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL.PTR_PCF_GOAL_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL.PTR_PCF_GOAL_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATIENT_VISIT": {
		   maxReps: 1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_GOAL": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY.PTR_PCF_PROBLEM.PTR_PCF_ORDER.PTR_PCF_ORDER_DETAIL.PTR_PCF_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PTR_PCF_PATIENT.PTR_PCF_PATHWAY": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type PTR_PCF record {
    *hl7v2:Message;
    string name = PTR_PCF_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    PTR_PCF_PATIENT[] patient = [{pid:{}}];
};