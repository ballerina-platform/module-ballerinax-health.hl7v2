
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
public type BAR_P05_VISIT record {
    *hl7v2:SegmentComponent;
    string name = BAR_P05_VISIT_SEGMENT_COMPONENT;
    boolean isRequired = true;
    PV1 pv1?;
    PV2 pv2?;
    PRT[] prt = [{}];
    ROL[] rol = [{}];
    DB1[] db1 = [{}];
    OBX[] obx = [{}];
    AL1[] al1 = [{}];
    DG1[] dg1 = [{}];
    DRG drg?;
    GT1[] gt1 = [{}];
    NK1[] nk1 = [{}];
    ACC acc?;
    UB1 ub1?;
    UB2 ub2?;
    ABS abs?;
    BLC[] blc = [{}];
    RMI rmi?;
    BAR_P05_PROCEDURE[] bar_p05_procedure = [{pr1: {}}];
    BAR_P05_INSURANCE[] bar_p05_insurance = [{in1: {}}];
};

public const BAR_P05_VISIT_SEGMENT_COMPONENT = "BAR_P05_VISIT";
