
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
public type PPV_PCA_GOAL record {
    *hl7v2:SegmentComponent;
    string name = PPV_PCA_GOAL_SEGMENT_COMPONENT;
    boolean isRequired = true;
    GOL gol;
    NTE[] nte = [{}];
    VAR[] 'var = [{}];
    PPV_PCA_GOAL_ROLE[] ppv_pca_goal_role = [{rol: {}}];
    PPV_PCA_GOAL_PATHWAY[] ppv_pca_goal_pathway = [{pth: {}}];
    PPV_PCA_GOAL_OBSERVATION[] ppv_pca_goal_observation = [{obx: {}}];
    PPV_PCA_PROBLEM[] ppv_pca_problem = [{prb: {}}];
    PPV_PCA_ORDER[] ppv_pca_order = [{orc: {}}];
};

public const PPV_PCA_GOAL_SEGMENT_COMPONENT = "PPV_PCA_GOAL";
