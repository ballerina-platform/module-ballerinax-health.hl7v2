
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
    required: true,
    maxReps: -1
}
public type RGV_O15_ORDER record {
    *hl7v2:SegmentComponent;
    string name = RGV_O15_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    RGV_O15_ORDER_DETAIL rgv_o15_order_detail?;
    RGV_O15_ENCODING rgv_o15_encoding?;
    RGV_O15_GIVE[] rgv_o15_give = [{rxg: {}}];
};

public const RGV_O15_ORDER_SEGMENT_COMPONENT = "RGV_O15_ORDER";
