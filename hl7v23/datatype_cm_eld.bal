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
# + cm_eld1 - segment ID
# + cm_eld2 - sequence
# + cm_eld3 - field position
# + cm_eld4 - code identifying error
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_ELD record {
    *hl7v2:CompositeType;
    ST cm_eld1 = "";
    NM cm_eld2 = "";
    NM cm_eld3 = "";
    CE cm_eld4 = {};
};
