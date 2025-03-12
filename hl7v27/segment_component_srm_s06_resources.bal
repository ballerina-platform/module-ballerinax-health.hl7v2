
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
public type SRM_S06_RESOURCES record {
    *hl7v2:SegmentComponent;
    string name = SRM_S06_RESOURCES_SEGMENT_COMPONENT;
    boolean isRequired = true;
    RGS rgs;
    SRM_S06_SERVICE[] srm_s06_service = [{ais: {}}];
    SRM_S06_GENERAL_RESOURCE[] srm_s06_general_resource = [{aig: {}}];
    SRM_S06_LOCATION_RESOURCE[] srm_s06_location_resource = [{ail: {}}];
    SRM_S06_PERSONNEL_RESOURCE[] srm_s06_personnel_resource = [{aip: {}}];
};

public const SRM_S06_RESOURCES_SEGMENT_COMPONENT = "SRM_S06_RESOURCES";
