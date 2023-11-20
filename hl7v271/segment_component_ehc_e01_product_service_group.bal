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
public type EHC_E01_PRODUCT_SERVICE_GROUP record {
    *hl7v2:SegmentComponent;
    string name = EHC_E01_PRODUCT_SERVICE_GROUP_SEGMENT_COMPONENT;
    boolean isRequired = true;
    LOC[] loc = [{}];
    EHC_E01_INVOICE_PROCESSING[] ehc_e01_invoice_processing = [{ipr:{}}];
    PSG psg;
    EHC_E01_PRODUCT_SERVICE_LINE_ITEM[] ehc_e01_product_service_line_item = [{psl:{}}];
    EHC_E01_PATIENT_INFO[] ehc_e01_patient_info = [{pid:{}}];
    ROL[] rol = [{}];
    EHC_E01_PROCEDURE[] ehc_e01_procedure = [{pr1:{}}];
};

public const EHC_E01_PRODUCT_SERVICE_GROUP_SEGMENT_COMPONENT = "EHC_E01_PRODUCT_SERVICE_GROUP";