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
# + xcn1 - ID number (ST)
# + xcn2 - family+last name
# + xcn3 - given name
# + xcn4 - middle initial or name
# + xcn5 - suffix (e.g., JR or III)
# + xcn6 - prefix (e.g., DR)
# + xcn7 - degree (e.g., MD)
# + xcn8 - source table
# + xcn9 - assigning authority
# + xcn10 - name type code
# + xcn11 - identifier check digit
# + xcn12 - code identifying the check digit scheme employed
# + xcn13 - identifier type code
# + xcn14 - assigning facility
# + xcn15 - Name Representation code
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XCN record {
    *hl7v2:CompositeType;
    ST xcn1 = "";
    FN xcn2 = {};
    ST xcn3 = "";
    ST xcn4 = "";
    ST xcn5 = "";
    ST xcn6 = "";
    IS xcn7 = "";
    IS xcn8 = "";
    HD xcn9 = {};
    ID xcn10 = "";
    ST xcn11 = "";
    ID xcn12 = "";
    IS xcn13 = "";
    HD xcn14 = {};
    ID xcn15 = "";
};
