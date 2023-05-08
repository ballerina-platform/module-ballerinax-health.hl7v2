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

# Extended Composite Name And ID For Organizations.
#
# + xon1 - Organization Name  
# + xon2 - Organization Name Type Code  
# + xon3 - ID Number  
# + xon4 - Check Digit  
# + xon5 - Code Identifying The Check Digit Scheme Employed  
# + xon6 - Assigning Authority  
# + xon7 - Identifier Type Code  
# + xon8 - Assigning Facility ID
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XON record {
    *hl7v2:CompositeType;
    ST xon1 = "";
    IS xon2 = "";
    NM xon3 = -1;
    ST xon4 = "";
    ID xon5 = "";
    HD xon6 = {};
    IS xon7 = "";
    HD xon8 = {};
};
