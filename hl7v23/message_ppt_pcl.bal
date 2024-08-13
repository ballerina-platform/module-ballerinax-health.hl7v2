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
public const PPT_PCL_MESSAGE_TYPE = "PPT_PCL";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qrd - QRD Segment
# + patient - PPT_PCL_PATIENT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATIENT_VISIT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER.PPT_PCL_ORDER_DETAIL"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER.PPT_PCL_ORDER_DETAIL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER.PPT_PCL_ORDER_DETAIL.PPT_PCL_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM.PPT_PCL_PROBLEM_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_GOAL_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER.PPT_PCL_ORDER_DETAIL.PPT_PCL_ORDER_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM.PPT_PCL_PROBLEM_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_GOAL_OBSERVATION"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER"}],
        "GOL": [{name: "GOL", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL"}],
        "PRB": [{name: "PRB", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM"}],
        "ROL": [{name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM.PPT_PCL_PROBLEM_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_GOAL_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_PATHWAY_ROLE"}],
        "PTH": [{name: "PTH", maxReps: 1, required: false, segmentComponentName: "PPT_PCL_PATIENT.PPT_PCL_PATHWAY"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD}
    }
    ,groups: {
        "PPT_PCL_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PPT_PCL_PATIENT_VISIT": {name: "PPT_PCL_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof PPT_PCL_PATIENT_VISIT},
                "PPT_PCL_PATHWAY": {name: "PPT_PCL_PATHWAY", maxReps: -1, required: true, segmentType: typeof PPT_PCL_PATHWAY}
            }
        },
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM.PPT_PCL_PROBLEM_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER.PPT_PCL_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_ORDER.PPT_PCL_ORDER_DETAIL.PPT_PCL_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_PATHWAY_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_GOAL_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATIENT_VISIT": {
		   maxReps: 1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_GOAL_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPT_PCL_PATIENT.PPT_PCL_PATHWAY.PPT_PCL_GOAL.PPT_PCL_PROBLEM.PPT_PCL_PROBLEM_OBSERVATION": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type PPT_PCL record {
    *hl7v2:Message;
    string name = PPT_PCL_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    PPT_PCL_PATIENT[] patient = [{pid:{}}];
};