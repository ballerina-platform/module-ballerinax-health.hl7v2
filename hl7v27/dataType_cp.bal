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
# + cp1 - Price
# + cp2 - Price Type
# + cp3 - From Value
# + cp4 - To Value
# + cp5 - Range Units
# + cp6 - Range Type
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CP record {
    *hl7v2:CompositeType;
    MO cp1 = {};
    ID cp2 = "";
    NM cp3 = "";
    NM cp4 = "";
    CWE cp5 = {};
    ID cp6 = "";
};
