
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
public type PEX_P07_PEX_CAUSE record {
    *hl7v2:SegmentComponent;
    string name = PEX_P07_PEX_CAUSE_SEGMENT_COMPONENT;
    boolean isRequired = true;
    PCR pcr;
    PRB[] prb = [{}];
    OBX[] obx = [{}];
    NTE[] nte = [{}];
    PEX_P07_RX_ORDER pex_p07_rx_order?;
    PEX_P07_RX_ADMINISTRATION[] pex_p07_rx_administration = [{rxa: {}}];
    PEX_P07_ASSOCIATED_PERSON pex_p07_associated_person?;
    PEX_P07_STUDY[] pex_p07_study = [{csr: {}}];
};

public const PEX_P07_PEX_CAUSE_SEGMENT_COMPONENT = "PEX_P07_PEX_CAUSE";
