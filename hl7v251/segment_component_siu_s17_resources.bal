
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
public type SIU_S17_RESOURCES record {
    *hl7v2:SegmentComponent;
    string name = SIU_S17_RESOURCES_SEGMENT_COMPONENT;
    boolean isRequired = true;
    RGS rgs;
    SIU_S17_SERVICE[] siu_s17_service = [{ais: {}}];
    SIU_S17_GENERAL_RESOURCE[] siu_s17_general_resource = [{aig: {}}];
    SIU_S17_LOCATION_RESOURCE[] siu_s17_location_resource = [{ail: {}}];
    SIU_S17_PERSONNEL_RESOURCE[] siu_s17_personnel_resource = [{aip: {}}];
};

public const SIU_S17_RESOURCES_SEGMENT_COMPONENT = "SIU_S17_RESOURCES";
