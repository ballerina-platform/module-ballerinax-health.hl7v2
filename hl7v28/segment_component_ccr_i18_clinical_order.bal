
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
public type CCR_I18_CLINICAL_ORDER record {
    *hl7v2:SegmentComponent;
    string name = CCR_I18_CLINICAL_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = false;
    ORC orc;
    CTI[] cti = [{}];
    CCR_I18_CLINICAL_ORDER_TIMING[] ccr_i18_clinical_order_timing = [{tq1: {}}];
    CCR_I18_CLINICAL_ORDER_DETAIL[] ccr_i18_clinical_order_detail = [{ccr_i18_clinical_order_object: {}}];
};

public const CCR_I18_CLINICAL_ORDER_SEGMENT_COMPONENT = "CCR_I18_CLINICAL_ORDER";
