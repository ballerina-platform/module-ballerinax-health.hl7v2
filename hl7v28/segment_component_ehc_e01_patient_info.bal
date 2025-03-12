
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
public type EHC_E01_PATIENT_INFO record {
    *hl7v2:SegmentComponent;
    string name = EHC_E01_PATIENT_INFO_SEGMENT_COMPONENT;
    boolean isRequired = false;
    PID pid;
    PV1 pv1?;
    PV2 pv2?;
    ACC[] acc = [{}];
    OBX[] obx = [{}];
    EHC_E01_INSURANCE[] ehc_e01_insurance = [{in1: {}}];
    EHC_E01_DIAGNOSIS[] ehc_e01_diagnosis = [{dg1: {}}];
};

public const EHC_E01_PATIENT_INFO_SEGMENT_COMPONENT = "EHC_E01_PATIENT_INFO";
