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
# + xon1 - Organization Name
# + xon2 - Organization Name Type Code
# + xon4 - Identifier Check Digit
# + xon5 - Check Digit Scheme
# + xon6 - Assigning Authority
# + xon7 - Identifier Type Code
# + xon8 - Assigning Facility
# + xon9 - Name Representation Code
# + xon10 - Organization Identifier
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XON record {
    *hl7v2:CompositeType;
    ST xon1 = "";
    CWE xon2 = {};
    NM xon4 = "";
    ID xon5 = "";
    HD xon6 = {};
    ID xon7 = "";
    HD xon8 = {};
    ID xon9 = "";
    ST xon10 = "";
};
