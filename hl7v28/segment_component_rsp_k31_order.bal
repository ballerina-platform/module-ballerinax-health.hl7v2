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
public type RSP_K31_ORDER record {
    *hl7v2:SegmentComponent;
    string name = RSP_K31_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    PRT[] prt = [{}];
    RSP_K31_TIMING[] rsp_k31_timing = [{tq1:{}}];
    RSP_K31_OBSERVATION[] rsp_k31_observation = [{obx:{}}];
    RXC[] rxc = [{}];
    RSP_K31_ORDER_DETAIL rsp_k31_order_detail?;
    RSP_K31_ENCODING rsp_k31_encoding?;
    RXR[] rxr = [{}];
    RXD rxd;
};

public const RSP_K31_ORDER_SEGMENT_COMPONENT = "RSP_K31_ORDER";