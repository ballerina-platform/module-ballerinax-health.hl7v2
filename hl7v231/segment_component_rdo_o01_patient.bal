
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
    maxReps: 1
}
public type RDO_O01_PATIENT record {
    *hl7v2:SegmentComponent;
    string name = RDO_O01_PATIENT_SEGMENT_COMPONENT;
    boolean isRequired = false;
    PID pid;
    PD1 pd1?;
    NTE[] nte = [{}];
    GT1 gt1?;
    AL1[] al1 = [{}];
    RDO_O01_PATIENT_VISIT rdo_o01_patient_visit?;
    RDO_O01_INSURANCE[] rdo_o01_insurance = [{in1: {}}];
};

public const RDO_O01_PATIENT_SEGMENT_COMPONENT = "RDO_O01_PATIENT";
