
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
public type OPU_R25_ORDER record {
    *hl7v2:SegmentComponent;
    string name = OPU_R25_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    OBR obr;
    PRT[] prt = [{}];
    NTE[] nte = [{}];
    OPU_R25_COMMON_ORDER opu_r25_common_order?;
    OPU_R25_TIMING_QTY[] opu_r25_timing_qty = [{tq1: {}}];
    OPU_R25_RESULT[] opu_r25_result = [{obx: {}}];
};

public const OPU_R25_ORDER_SEGMENT_COMPONENT = "OPU_R25_ORDER";
