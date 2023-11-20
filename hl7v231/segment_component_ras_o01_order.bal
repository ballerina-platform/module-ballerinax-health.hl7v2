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
public type RAS_O01_ORDER record {
    *hl7v2:SegmentComponent;
    string name = RAS_O01_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    RAS_O01_ORDER_DETAIL ras_o01_order_detail?;
    RAS_O01_ENCODING ras_o01_encoding?;
    CTI[] cti = [{}];
    RXA[] rxa = [{}];
    RXR rxr;
    RAS_O01_OBSERVATION[] ras_o01_observation = [{obx:{}}];
};

public const RAS_O01_ORDER_SEGMENT_COMPONENT = "RAS_O01_ORDER";