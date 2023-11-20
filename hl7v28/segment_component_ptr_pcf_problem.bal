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

@hl7v2:SegmentComponentDefinition {
    required: false,
    maxReps: 0
}
public type PTR_PCF_PROBLEM record {
    *hl7v2:SegmentComponent;
    string name = PTR_PCF_PROBLEM_SEGMENT_COMPONENT;
    boolean isRequired = true;
    PTR_PCF_PROBLEM_ROLE[] ptr_pcf_problem_role = [{rol:{}}];
    PTR_PCF_ORDER[] ptr_pcf_order = [{orc:{}}];
    PRB prb;
    'VAR[] 'var = [{}];
    PTR_PCF_PROBLEM_OBSERVATION[] ptr_pcf_problem_observation = [{obx:{}}];
    PTR_PCF_GOAL[] ptr_pcf_goal = [{gol:{}}];
    NTE[] nte = [{}];
};

public const PTR_PCF_PROBLEM_SEGMENT_COMPONENT = "PTR_PCF_PROBLEM";