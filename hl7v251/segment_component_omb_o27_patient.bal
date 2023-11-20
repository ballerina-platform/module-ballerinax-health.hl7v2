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
public type OMB_O27_PATIENT record {
    *hl7v2:SegmentComponent;
    string name = OMB_O27_PATIENT_SEGMENT_COMPONENT;
    boolean isRequired = true;
    GT1 gt1?;
    OMB_O27_INSURANCE[] omb_o27_insurance = [{in1:{}}];
    AL1[] al1 = [{}];
    OMB_O27_PATIENT_VISIT omb_o27_patient_visit?;
    PID pid;
    PD1 pd1?;
    NTE[] nte = [{}];
};

public const OMB_O27_PATIENT_SEGMENT_COMPONENT = "OMB_O27_PATIENT";