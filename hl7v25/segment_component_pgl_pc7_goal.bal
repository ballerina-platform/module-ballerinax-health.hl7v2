
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
public type PGL_PC7_GOAL record {
    *hl7v2:SegmentComponent;
    string name = PGL_PC7_GOAL_SEGMENT_COMPONENT;
    boolean isRequired = true;
    GOL gol;
    NTE[] nte = [{}];
    VAR[] 'var = [{}];
    PGL_PC7_GOAL_ROLE[] pgl_pc7_goal_role = [{rol: {}}];
    PGL_PC7_PATHWAY[] pgl_pc7_pathway = [{pth: {}}];
    PGL_PC7_OBSERVATION[] pgl_pc7_observation = [{obx: {}}];
    PGL_PC7_PROBLEM[] pgl_pc7_problem = [{prb: {}}];
    PGL_PC7_ORDER[] pgl_pc7_order = [{orc: {}}];
};

public const PGL_PC7_GOAL_SEGMENT_COMPONENT = "PGL_PC7_GOAL";
