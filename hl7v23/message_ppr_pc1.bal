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
public const PPR_PC1_MESSAGE_TYPE = "PPR_PC1";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + pid - PID Segment
# + patient_visit - PPR_PC1_PATIENT_VISIT Segment Group
# + problem - PPR_PC1_PROBLEM Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PATIENT_VISIT"}],
        "PRB": [{name: "PRB", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM"}],
        "ROL": [{name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_PROBLEM_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_GOAL.PPR_PC1_GOAL_ROLE"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_ORDER"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_ORDER.PPR_PC1_ORDER_DETAIL.PPR_PC1_ORDER_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_PROBLEM_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_GOAL.PPR_PC1_GOAL_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_ORDER.PPR_PC1_ORDER_DETAIL.PPR_PC1_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_ORDER.PPR_PC1_ORDER_DETAIL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_PROBLEM_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_GOAL.PPR_PC1_GOAL_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_GOAL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PPR_PC1_PROBLEM"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_ORDER.PPR_PC1_ORDER_DETAIL"}],
        "GOL": [{name: "GOL", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_GOAL"}],
        "PTH": [{name: "PTH", maxReps: 1, required: false, segmentComponentName: "PPR_PC1_PROBLEM.PPR_PC1_PATHWAY"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID}
    }
    ,groups: {
        "PPR_PC1_PATIENT_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "PPR_PC1_PROBLEM": {
            maxReps: -1,
            required: true,
            segments: {
                "PRB": {name: "PRB", maxReps: 1, required: true, segmentType: typeof PRB},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "PPR_PC1_PROBLEM_ROLE": {name: "PPR_PC1_PROBLEM_ROLE", maxReps: -1, required: false, segmentType: typeof PPR_PC1_PROBLEM_ROLE},
                "PPR_PC1_PATHWAY": {name: "PPR_PC1_PATHWAY", maxReps: -1, required: false, segmentType: typeof PPR_PC1_PATHWAY},
                "PPR_PC1_PROBLEM_OBSERVATION": {name: "PPR_PC1_PROBLEM_OBSERVATION", maxReps: -1, required: false, segmentType: typeof PPR_PC1_PROBLEM_OBSERVATION},
                "PPR_PC1_GOAL": {name: "PPR_PC1_GOAL", maxReps: -1, required: false, segmentType: typeof PPR_PC1_GOAL},
                "PPR_PC1_ORDER": {name: "PPR_PC1_ORDER", maxReps: -1, required: false, segmentType: typeof PPR_PC1_ORDER}
            }
        },
        "PPR_PC1_PROBLEM.PPR_PC1_ORDER": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_GOAL": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_ORDER.PPR_PC1_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_GOAL.PPR_PC1_GOAL_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_PROBLEM_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_GOAL.PPR_PC1_GOAL_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_PATHWAY": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_PROBLEM_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PPR_PC1_PROBLEM.PPR_PC1_ORDER.PPR_PC1_ORDER_DETAIL.PPR_PC1_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type PPR_PC1 record {
    *hl7v2:Message;
    string name = PPR_PC1_MESSAGE_TYPE;
    MSH msh;
    PID pid;
    PPR_PC1_PATIENT_VISIT[] patient_visit = [{pv1:{}}];
    PPR_PC1_PROBLEM[] problem = [{prb:{}}];
};