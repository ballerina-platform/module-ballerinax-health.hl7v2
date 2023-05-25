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
# + xcn1 - Data type field
# + xcn2 - Data type field
# + xcn3 - Data type field
# + xcn4 - Data type field
# + xcn5 - Data type field
# + xcn6 - Data type field
# + xcn7 - Data type field
# + xcn8 - Data type field
# + xcn9 - Data type field
# + xcn10 - Data type field
# + xcn11 - Data type field
# + xcn12 - Data type field
# + xcn13 - Data type field
# + xcn14 - Data type field
# + xcn15 - Data type field
# + xcn16 - Data type field
# + xcn17 - Data type field
# + xcn18 - Data type field
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
    CE xcn16 = {};
    DR xcn17 = {};
    ID xcn18 = "";
};
