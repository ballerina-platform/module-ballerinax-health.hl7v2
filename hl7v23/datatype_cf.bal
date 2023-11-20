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
# + cf1 - identifier
# + cf2 - formatted text
# + cf3 - name of coding system
# + cf4 - alternate identifier
# + cf5 - alternate formatted text
# + cf6 - name of alternate coding system
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CF record {
    *hl7v2:CompositeType;
    ID cf1 = "";
    FT cf2 = "";
    ST cf3 = "";
    ID cf4 = "";
    FT cf5 = "";
    ST cf6 = "";
};
