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
public type ADR_A19_QUERY_RESPONSE record {
    *hl7v2:SegmentComponent;
    string name = ADR_A19_QUERY_RESPONSE_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ACC acc?;
    OBX[] obx = [{}];
    UB2 ub2?;
    ARV[] arv = [{}];
    GT1[] gt1 = [{}];
    UB1 ub1?;
    AL1[] al1 = [{}];
    ADR_A19_INSURANCE[] adr_a19_insurance = [{in1:{}}];
    PID pid;
    PV1 pv1;
    PV2 pv2?;
    ROL[] rol = [{}];
    DG1[] dg1 = [{}];
    DB1[] db1 = [{}];
    ADR_A19_PROCEDURE[] adr_a19_procedure = [{pr1:{}}];
    NK1[] nk1 = [{}];
    DRG drg?;
    EVN evn?;
    PD1 pd1?;
};

public const ADR_A19_QUERY_RESPONSE_SEGMENT_COMPONENT = "ADR_A19_QUERY_RESPONSE";