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
# + fn1 - surname
# + fn2 - own surname prefix
# + fn3 - own surname
# + fn4 - surname prefix from partner/spouse
# + fn5 - surname from partner/spouse
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type FN record {
    *hl7v2:CompositeType;
    ST fn1 = "";
    ST fn2 = "";
    ST fn3 = "";
    ST fn4 = "";
    ST fn5 = "";
};
