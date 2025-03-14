
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
public type CQU_I19_PATHWAY record {
    *hl7v2:SegmentComponent;
    string name = CQU_I19_PATHWAY_SEGMENT_COMPONENT;
    boolean isRequired = false;
    PTH pth;
    VAR[] 'var = [{}];
    CQU_I19_ROLE_PATHWAY[] cqu_i19_role_pathway = [{cqu_i19_role_pathway_object: {}}];
    CQU_I19_PATHWAY_OBSERVATION[] cqu_i19_pathway_observation = [{}];
};

public const CQU_I19_PATHWAY_SEGMENT_COMPONENT = "CQU_I19_PATHWAY";
