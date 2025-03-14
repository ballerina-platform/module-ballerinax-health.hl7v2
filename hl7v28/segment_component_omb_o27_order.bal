
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
public type OMB_O27_ORDER record {
    *hl7v2:SegmentComponent;
    string name = OMB_O27_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    PRT[] prt = [{}];
    BPO bpo;
    SPM spm?;
    NTE[] nte = [{}];
    DG1[] dg1 = [{}];
    FT1[] ft1 = [{}];
    BLG blg?;
    OMB_O27_TIMING[] omb_o27_timing = [{tq1: {}}];
    OMB_O27_OBSERVATION[] omb_o27_observation = [{obx: {}}];
};

public const OMB_O27_ORDER_SEGMENT_COMPONENT = "OMB_O27_ORDER";
