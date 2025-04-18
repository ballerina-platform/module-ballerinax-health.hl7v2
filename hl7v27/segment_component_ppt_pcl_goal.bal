
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
    required: false,
    maxReps: -1
}
public type PPT_PCL_GOAL record {
    *hl7v2:SegmentComponent;
    string name = PPT_PCL_GOAL_SEGMENT_COMPONENT;
    boolean isRequired = false;
    GOL gol;
    NTE[] nte = [{}];
    VAR[] 'var = [{}];
    PPT_PCL_GOAL_ROLE[] ppt_pcl_goal_role = [{rol: {}}];
    PPT_PCL_GOAL_OBSERVATION[] ppt_pcl_goal_observation = [{obx: {}}];
    PPT_PCL_PROBLEM[] ppt_pcl_problem = [{prb: {}}];
    PPT_PCL_ORDER[] ppt_pcl_order = [{orc: {}}];
};

public const PPT_PCL_GOAL_SEGMENT_COMPONENT = "PPT_PCL_GOAL";
