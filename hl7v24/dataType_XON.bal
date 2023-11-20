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
# + xon1 - organization name
# + xon2 - organization name type code
# + xon3 - ID number (NM)
# + xon4 - check digit (NM)
# + xon5 - code identifying the check digit scheme employed
# + xon6 - assigning authority
# + xon7 - identifier type code (IS)
# + xon8 - assigning facility ID
# + xon9 - Name Representation code
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XON record {
    *hl7v2:CompositeType;
    ST xon1 = "";
    IS xon2 = "";
    NM xon3 = "";
    NM xon4 = "";
    ID xon5 = "";
    HD xon6 = {};
    IS xon7 = "";
    HD xon8 = {};
    ID xon9 = "";
};
