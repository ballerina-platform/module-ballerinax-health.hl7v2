
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
    maxReps: 1
}
public type PEX_P07_ASSOCIATED_PERSON record {
    *hl7v2:SegmentComponent;
    string name = PEX_P07_ASSOCIATED_PERSON_SEGMENT_COMPONENT;
    boolean isRequired = false;
    NK1 nk1;
    PRB[] prb = [{}];
    PEX_P07_ASSOCIATED_RX_ORDER pex_p07_associated_rx_order?;
    PEX_P07_ASSOCIATED_RX_ADMIN[] pex_p07_associated_rx_admin = [{rxa: {}}];
    PEX_P07_ASSOCIATED_OBSERVATION[] pex_p07_associated_observation = [{obx: {}}];
};

public const PEX_P07_ASSOCIATED_PERSON_SEGMENT_COMPONENT = "PEX_P07_ASSOCIATED_PERSON";
