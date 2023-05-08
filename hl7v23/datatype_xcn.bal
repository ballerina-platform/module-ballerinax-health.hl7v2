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

# Extended Composite ID Number And Name.
#
# + xcn1 - ID Number  
# + xcn2 - Family Name  
# + xcn3 - Given Name  
# + xcn4 - Middle Initial Or Name  
# + xcn5 - Suffix  
# + xcn6 - Prefix  
# + xcn7 - Degree  
# + xcn8 - Source Table  
# + xcn9 - Assigning Authority  
# + xcn10 - Name Type  
# + xcn11 - Identifier Check Digit  
# + xcn12 - Code Identifying The Check Digit Scheme Employed  
# + xcn13 - Identifier Type Code  
# + xcn14 - Assigning Facility ID
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XCN record {
    *hl7v2:CompositeType;
    ST xcn1 = "";
    ST xcn2 = "";
    ST xcn3 = "";
    ST xcn4 = "";
    ST xcn5 = "";
    ST xcn6 = "";
    ST xcn7 = "";
    IS xcn8 = "";
    HD xcn9 = {};
    ID xcn10 = "";
    ST xcn11 = "";
    ID xcn12 = "";
    IS xcn13 = "";
    HD xcn14 = {};
};
