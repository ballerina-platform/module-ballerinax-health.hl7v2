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
    required: true,
    maxReps: -1
}
public type BAR_P01_VISIT record {
    *hl7v2:SegmentComponent;
    string name = BAR_P01_VISIT_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ACC acc?;
    OBX[] obx = [{}];
    UB2 ub2?;
    GT1[] gt1 = [{}];
    UB1 ub1?;
    AL1[] al1 = [{}];
    BAR_P01_INSURANCE[] bar_p01_insurance = [{in1:{}}];
    PV1 pv1?;
    PV2 pv2?;
    ROL[] rol = [{}];
    DG1[] dg1 = [{}];
    DB1[] db1 = [{}];
    NK1[] nk1 = [{}];
    DRG drg?;
    BAR_P01_PROCEDURE[] bar_p01_procedure = [{pr1:{}}];
};

public const BAR_P01_VISIT_SEGMENT_COMPONENT = "BAR_P01_VISIT";