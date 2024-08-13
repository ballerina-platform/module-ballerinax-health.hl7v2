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
public const PGL_PC6_MESSAGE_TYPE = "PGL_PC6";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + pid - PID Segment
# + patient_visit - PGL_PC6_PATIENT_VISIT Segment Group
# + goal - PGL_PC6_GOAL Segment Group
@hl7v2:MessageDefinition {
    orderedSegments: {
        "MSH": [{name: "MSH", maxReps: 1, required: false}],
        "PID": [{name: "PID", maxReps: 1, required: false}],
        "PV1": [{name: "PV1", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_PATIENT_VISIT"}],
        "PV2": [{name: "PV2", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_PATIENT_VISIT"}],
        "ROL": [{name: "ROL", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_GOAL_ROLE"}, {name: "ROL", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_PROBLEM.PGL_PC6_PROBLEM_ROLE"}],
        "OBX": [{name: "OBX", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_ORDER.PGL_PC6_ORDER_DETAIL.PGL_PC6_ORDER_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_OBSERVATION"}, {name: "OBX", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_PROBLEM.PGL_PC6_PROBLEM_OBSERVATION"}],
        "NTE": [{name: "NTE", maxReps: -1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_ORDER.PGL_PC6_ORDER_DETAIL.PGL_PC6_ORDER_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_ORDER.PGL_PC6_ORDER_DETAIL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PGL_PC6_GOAL"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_PROBLEM.PGL_PC6_PROBLEM_OBSERVATION"}, {name: "NTE", maxReps: -1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_PROBLEM"}],
        "OBR": [{name: "OBR", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_ORDER.PGL_PC6_ORDER_DETAIL"}],
        "ORC": [{name: "ORC", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_ORDER"}],
        "GOL": [{name: "GOL", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL"}],
        "PTH": [{name: "PTH", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_PATHWAY"}],
        "PRB": [{name: "PRB", maxReps: 1, required: false, segmentComponentName: "PGL_PC6_GOAL.PGL_PC6_PROBLEM"}]
    }
,
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID}
    }
    ,groups: {
        "PGL_PC6_PATIENT_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2}
            }
        },
        "PGL_PC6_GOAL": {
            maxReps: -1,
            required: true,
            segments: {
                "GOL": {name: "GOL", maxReps: 1, required: true, segmentType: typeof GOL},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "'VAR": {name: "'VAR", maxReps: -1, required: false, segmentType: typeof 'VAR},
                "PGL_PC6_GOAL_ROLE": {name: "PGL_PC6_GOAL_ROLE", maxReps: -1, required: false, segmentType: typeof PGL_PC6_GOAL_ROLE},
                "PGL_PC6_PATHWAY": {name: "PGL_PC6_PATHWAY", maxReps: -1, required: false, segmentType: typeof PGL_PC6_PATHWAY},
                "PGL_PC6_OBSERVATION": {name: "PGL_PC6_OBSERVATION", maxReps: -1, required: false, segmentType: typeof PGL_PC6_OBSERVATION},
                "PGL_PC6_PROBLEM": {name: "PGL_PC6_PROBLEM", maxReps: -1, required: false, segmentType: typeof PGL_PC6_PROBLEM},
                "PGL_PC6_ORDER": {name: "PGL_PC6_ORDER", maxReps: -1, required: false, segmentType: typeof PGL_PC6_ORDER}
            }
        },
        "PGL_PC6_GOAL.PGL_PC6_PROBLEM": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_ORDER.PGL_PC6_ORDER_DETAIL.PGL_PC6_ORDER_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_PROBLEM.PGL_PC6_PROBLEM_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_ORDER.PGL_PC6_ORDER_DETAIL": {
		   maxReps: 1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_GOAL_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_OBSERVATION": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_PATHWAY": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_PROBLEM.PGL_PC6_PROBLEM_ROLE": {
		   maxReps: -1,
		   required: false
		},
        "PGL_PC6_GOAL.PGL_PC6_ORDER": {
		   maxReps: -1,
		   required: false
		}
    }
}
public type PGL_PC6 record {
    *hl7v2:Message;
    string name = PGL_PC6_MESSAGE_TYPE;
    MSH msh;
    PID pid;
    PGL_PC6_PATIENT_VISIT[] patient_visit = [{pv1:{}}];
    PGL_PC6_GOAL[] goal = [{gol:{}}];
};