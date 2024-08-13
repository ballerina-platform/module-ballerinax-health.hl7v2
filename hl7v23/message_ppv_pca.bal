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
public const PPV_PCA_MESSAGE_TYPE = "PPV_PCA";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qrd - QRD Segment
# + patient - PPV_PCA_PATIENT Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "MSA": [{name: "MSA", maxReps: 1, required: false}],
        "ERR": [{name: "ERR", maxReps: 1, required: false}],
        "QRD": [{name: "QRD", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_PATIENT_VISIT"}],
        "PID": [{name: "PID", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT"}],
        "GOL": [{name: "GOL", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL"}],
        "ROL": [{name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_ROLE"}],
        "PRB": [{name: "PRB", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL"}],
        "PTH": [{name: "PTH", maxReps: 1, required: false, segmentComponentName: "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_PATHWAY"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD}
    }
    ,groups: {
        "PPV_PCA_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PPV_PCA_PATIENT_VISIT": {name: "PPV_PCA_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof PPV_PCA_PATIENT_VISIT},
                "PPV_PCA_GOAL": {name: "PPV_PCA_GOAL", maxReps: -1, required: true, segmentType: typeof PPV_PCA_GOAL}
            }
        },
        "PPV_PCA_PATIENT.PPV_PCA_PATIENT_VISIT": {
		   maxReps: 1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL.PPV_PCA_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_PATHWAY": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_GOAL_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_PROBLEM.PPV_PCA_PROBLEM_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPV_PCA_PATIENT.PPV_PCA_GOAL.PPV_PCA_ORDER.PPV_PCA_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		}
    }
}
public type PPV_PCA record {
    *hl7v2:Message;
    string name = PPV_PCA_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QRD qrd;
    PPV_PCA_PATIENT[] patient = [{pid:{}}];
};