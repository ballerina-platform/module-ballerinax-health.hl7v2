
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
public type ORU_R01_ORDER_OBSERVATION record {
    *hl7v2:SegmentComponent;
    string name = ORU_R01_ORDER_OBSERVATION_SEGMENT_COMPONENT;
    boolean isRequired = true;
    OBR obr;
    NTE[] nte = [{}];
    PRT[] prt = [{}];
    CTD ctd?;
    FT1[] ft1 = [{}];
    CTI[] cti = [{}];
    ORU_R01_COMMON_ORDER oru_r01_common_order?;
    ORU_R01_TIMING_QTY[] oru_r01_timing_qty = [{tq1: {}}];
    ORU_R01_OBSERVATION[] oru_r01_observation = [{obx: {}}];
    ORU_R01_SPECIMEN[] oru_r01_specimen = [{spm: {}}];
};

public const ORU_R01_ORDER_OBSERVATION_SEGMENT_COMPONENT = "ORU_R01_ORDER_OBSERVATION";
