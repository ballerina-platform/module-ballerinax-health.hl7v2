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
public type RSP_Z86_COMMON_ORDER record {
    *hl7v2:SegmentComponent;
    string name = RSP_Z86_COMMON_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    RSP_Z86_DISPENSE rsp_z86_dispense?;
    RSP_Z86_ENCODED_ORDER rsp_z86_encoded_order?;
    RSP_Z86_ORDER_DETAIL rsp_z86_order_detail?;
    RSP_Z86_GIVE rsp_z86_give?;
    RSP_Z86_OBSERVATION[] rsp_z86_observation = [{}];
    RSP_Z86_TIMING[] rsp_z86_timing = [{tq1:{}}];
    RSP_Z86_ADMINISTRATION rsp_z86_administration?;
};

public const RSP_Z86_COMMON_ORDER_SEGMENT_COMPONENT = "RSP_Z86_COMMON_ORDER";