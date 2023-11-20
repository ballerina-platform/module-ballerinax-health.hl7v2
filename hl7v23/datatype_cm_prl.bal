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

# Data type description
#
# + cm_prl1 - OBX-3 observation identifier of parent result
# + cm_prl2 - OBX-4 sub-ID of parent result
# + cm_prl3 - part of OBX-5 observation result from parent
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_PRL record {
    *hl7v2:CompositeType;
    CE cm_prl1 = {};
    ST cm_prl2 = "";
    TX cm_prl3 = "";
};
