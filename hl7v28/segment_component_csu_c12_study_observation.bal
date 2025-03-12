
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
public type CSU_C12_STUDY_OBSERVATION record {
    *hl7v2:SegmentComponent;
    string name = CSU_C12_STUDY_OBSERVATION_SEGMENT_COMPONENT;
    boolean isRequired = true;
    OBR obr;
    PRT[] prt = [{}];
    OBX obx;
    CSU_C12_COMMON_ORDER csu_c12_common_order?;
    CSU_C12_TIMING_QTY[] csu_c12_timing_qty = [{tq1: {}}];
};

public const CSU_C12_STUDY_OBSERVATION_SEGMENT_COMPONENT = "CSU_C12_STUDY_OBSERVATION";
