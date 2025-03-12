
// Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com).

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

@hl7v2:SegmentComponentDefinition {
    required: true,
    maxReps: -1
}
public type PRR_PC5_PROBLEM record {
    *hl7v2:SegmentComponent;
    string name = PRR_PC5_PROBLEM_SEGMENT_COMPONENT;
    boolean isRequired = true;
    PRB prb;
    NTE[] nte = [{}];
    VAR[] 'var = [{}];
    PRR_PC5_PROBLEM_ROLE[] prr_pc5_problem_role = [{rol: {}}];
    PRR_PC5_PROBLEM_PATHWAY[] prr_pc5_problem_pathway = [{pth: {}}];
    PRR_PC5_PROBLEM_OBSERVATION[] prr_pc5_problem_observation = [{obx: {}}];
    PRR_PC5_GOAL[] prr_pc5_goal = [{gol: {}}];
    PRR_PC5_ORDER[] prr_pc5_order = [{orc: {}}];
};

public const PRR_PC5_PROBLEM_SEGMENT_COMPONENT = "PRR_PC5_PROBLEM";
