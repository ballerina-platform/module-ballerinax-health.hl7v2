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
# + csu1 - Data type field
# + csu2 - Data type field
# + csu3 - Data type field
# + csu4 - Data type field
# + csu5 - Data type field
# + csu6 - Data type field
# + csu7 - Data type field
# + csu8 - Data type field
# + csu9 - Data type field
# + csu10 - Data type field
# + csu11 - Data type field
# + csu12 - Data type field
# + csu13 - Data type field
# + csu14 - Data type field
# + csu15 - Data type field
# + csu16 - Data type field
# + csu17 - Data type field
# + csu18 - Data type field
# + csu19 - Data type field
# + csu20 - Data type field
# + csu21 - Data type field
# + csu22 - Data type field
# + csu23 - Data type field
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
    ST csu8 = "";
    ST csu9 = "";
    ST csu10 = "";
    ST csu11 = "";
    ST csu12 = "";
    ID csu13 = "";
    ST csu14 = "";
    ST csu15 = "";
    ST csu16 = "";
    DTM csu17 = "";
    ST csu18 = "";
    ST csu19 = "";
    DTM csu20 = "";
    ST csu21 = "";
    ST csu22 = "";
    ST csu23 = "";
};
