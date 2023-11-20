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
public type RDE_O11_ORDER record {
    *hl7v2:SegmentComponent;
    string name = RDE_O11_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    FT1[] ft1 = [{}];
    RDE_O11_OBSERVATION[] rde_o11_observation = [{obx:{}}];
    RDE_O11_TIMING_ENCODED[] rde_o11_timing_encoded = [{tq1:{}}];
    RDE_O11_TIMING[] rde_o11_timing = [{tq1:{}}];
    RDE_O11_ORDER_DETAIL rde_o11_order_detail?;
    CTI[] cti = [{}];
    RXC[] rxc = [{}];
    BLG blg?;
    RXR[] rxr = [{}];
    RXE rxe;
    NTE[] nte = [{}];
};

public const RDE_O11_ORDER_SEGMENT_COMPONENT = "RDE_O11_ORDER";