
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
public type PPR_PC3_PROBLEM record {
    *hl7v2:SegmentComponent;
    string name = PPR_PC3_PROBLEM_SEGMENT_COMPONENT;
    boolean isRequired = true;
    PRB prb;
    NTE[] nte = [{}];
    VAR[] 'var = [{}];
    PPR_PC3_PROBLEM_ROLE[] ppr_pc3_problem_role = [{rol: {}}];
    PPR_PC3_PATHWAY[] ppr_pc3_pathway = [{pth: {}}];
    PPR_PC3_PROBLEM_OBSERVATION[] ppr_pc3_problem_observation = [{obx: {}}];
    PPR_PC3_GOAL[] ppr_pc3_goal = [{gol: {}}];
    PPR_PC3_ORDER[] ppr_pc3_order = [{orc: {}}];
};

public const PPR_PC3_PROBLEM_SEGMENT_COMPONENT = "PPR_PC3_PROBLEM";
