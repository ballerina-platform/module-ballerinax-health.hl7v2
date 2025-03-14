
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
public type OMG_O19_PRIOR_RESULT record {
    *hl7v2:SegmentComponent;
    string name = OMG_O19_PRIOR_RESULT_SEGMENT_COMPONENT;
    boolean isRequired = false;
    AL1[] al1 = [{}];
    OMG_O19_PATIENT_PRIOR omg_o19_patient_prior?;
    OMG_O19_PATIENT_VISIT_PRIOR omg_o19_patient_visit_prior?;
    OMG_O19_ORDER_PRIOR[] omg_o19_order_prior = [{orc: {}, obr: {}}];
};

public const OMG_O19_PRIOR_RESULT_SEGMENT_COMPONENT = "OMG_O19_PRIOR_RESULT";
