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
# + csu1 - Channel Sensitivity
# + csu2 - Unit of Measure Identifier
# + csu3 - Unit of Measure Description
# + csu4 - Unit of Measure Coding System
# + csu5 - Alternate Unit of Measure Identifier
# + csu6 - Alternate Unit of Measure Description
# + csu7 - Alternate Unit of Measure Coding System
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
    ID csu4 = "";
    ST csu5 = "";
    ST csu6 = "";
    ID csu7 = "";
};
