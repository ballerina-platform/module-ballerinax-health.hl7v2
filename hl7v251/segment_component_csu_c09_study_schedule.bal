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
public type CSU_C09_STUDY_SCHEDULE record {
    *hl7v2:SegmentComponent;
    string name = CSU_C09_STUDY_SCHEDULE_SEGMENT_COMPONENT;
    boolean isRequired = true;
    CSS css?;
    CSU_C09_ORCRXARXR_SUPPGRP[] csu_c09_orcrxarxr_suppgrp = [{}];
    CSU_C09_STUDY_OBSERVATION[] csu_c09_study_observation = [{obr:{}}];
};

public const CSU_C09_STUDY_SCHEDULE_SEGMENT_COMPONENT = "CSU_C09_STUDY_SCHEDULE";