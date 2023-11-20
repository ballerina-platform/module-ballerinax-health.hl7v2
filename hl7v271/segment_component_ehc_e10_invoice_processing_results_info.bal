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
public type EHC_E10_INVOICE_PROCESSING_RESULTS_INFO record {
    *hl7v2:SegmentComponent;
    string name = EHC_E10_INVOICE_PROCESSING_RESULTS_INFO_SEGMENT_COMPONENT;
    boolean isRequired = true;
    EHC_E10_PRODUCT_SERVICE_SECTION[] ehc_e10_product_service_section = [{pss:{}}];
    IVC ivc;
    IPR ipr;
    IN2 in2?;
    PYE pye;
    IN1 in1;
    NTE[] nte = [{}];
};

public const EHC_E10_INVOICE_PROCESSING_RESULTS_INFO_SEGMENT_COMPONENT = "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO";