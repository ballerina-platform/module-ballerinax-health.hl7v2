
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
public type OMI_O23_ORDER record {
    *hl7v2:SegmentComponent;
    string name = OMI_O23_ORDER_SEGMENT_COMPONENT;
    boolean isRequired = true;
    ORC orc;
    OBR obr;
    NTE[] nte = [{}];
    ROL[] rol = [{}];
    CTD ctd?;
    DG1[] dg1 = [{}];
    IPC[] ipc = [{}];
    OMI_O23_TIMING[] omi_o23_timing = [{tq1: {}}];
    OMI_O23_OBSERVATION[] omi_o23_observation = [{obx: {}}];
};

public const OMI_O23_ORDER_SEGMENT_COMPONENT = "OMI_O23_ORDER";
