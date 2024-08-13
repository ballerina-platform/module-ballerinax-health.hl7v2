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
public const PPG_PCG_MESSAGE_TYPE = "PPG_PCG";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + pid - PID Segment
# + patient_visit - PPG_PCG_PATIENT_VISIT Segment Group
# + pathway - PPG_PCG_PATHWAY Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATIENT_VISIT"}],
        "PTH": [{name: "PTH", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY"}],
        "PRB": [{name: "PRB", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM"}],
        "ROL": [{name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM.PPG_PCG_PROBLEM_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_GOAL_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_PATHWAY_ROLE"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM.PPG_PCG_PROBLEM_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER.PPG_PCG_ORDER_DETAIL.PPG_PCG_ORDER_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_GOAL_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM.PPG_PCG_PROBLEM_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER.PPG_PCG_ORDER_DETAIL.PPG_PCG_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER.PPG_PCG_ORDER_DETAIL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_GOAL_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPG_PCG_PATHWAY"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER.PPG_PCG_ORDER_DETAIL"}],
        "GOL": [{name: "GOL", maxReps: 1, required: false, segmentComponentName: "PPG_PCG_PATHWAY.PPG_PCG_GOAL"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID}
    }
    ,groups: {
        "PPG_PCG_PATIENT_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "PPG_PCG_PATHWAY": {
            maxReps: -1,
            required: true,
            segments: {
                "PTH": {name: "PTH", maxReps: 1, required: true, segmentType: typeof PTH},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "PPG_PCG_PATHWAY_ROLE": {name: "PPG_PCG_PATHWAY_ROLE", maxReps: -1, required: false, segmentType: typeof PPG_PCG_PATHWAY_ROLE},
                "PPG_PCG_GOAL": {name: "PPG_PCG_GOAL", maxReps: -1, required: false, segmentType: typeof PPG_PCG_GOAL}
            }
        },
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM.PPG_PCG_PROBLEM_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_GOAL_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER.PPG_PCG_ORDER_DETAIL.PPG_PCG_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_ORDER.PPG_PCG_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_PATHWAY_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_PROBLEM.PPG_PCG_PROBLEM_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPG_PCG_PATHWAY.PPG_PCG_GOAL.PPG_PCG_GOAL_OBSERVATION": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type PPG_PCG record {
    *hl7v2:Message;
    string name = PPG_PCG_MESSAGE_TYPE;
    MSH msh;
    PID pid;
    PPG_PCG_PATIENT_VISIT[] patient_visit = [{pv1:{}}];
    PPG_PCG_PATHWAY[] pathway = [{pth:{}}];
};