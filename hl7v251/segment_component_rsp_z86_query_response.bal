
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
public type RSP_Z86_QUERY_RESPONSE record {
    *hl7v2:SegmentComponent;
    string name = RSP_Z86_QUERY_RESPONSE_SEGMENT_COMPONENT;
    boolean isRequired = true;
    RSP_Z86_PATIENT rsp_z86_patient?;
    RSP_Z86_COMMON_ORDER[] rsp_z86_common_order = [{orc: {}}];
};

public const RSP_Z86_QUERY_RESPONSE_SEGMENT_COMPONENT = "RSP_Z86_QUERY_RESPONSE";
