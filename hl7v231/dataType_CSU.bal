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
# + csu1 - channel sensitivity
# + csu2 - unit of measure identifier
# + csu3 - unit of measure description
# + csu4 - unit of measure coding system
# + csu5 - alternate unit of measure identifier
# + csu6 - alternate unit of measure description
# + csu7 - alternate unit of measure coding system
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CSU record {
    *hl7v2:CompositeType;
    NM csu1 = "";
    ST csu2 = "";
    ST csu3 = "";
    IS csu4 = "";
    ST csu5 = "";
    ST csu6 = "";
    IS csu7 = "";
};
