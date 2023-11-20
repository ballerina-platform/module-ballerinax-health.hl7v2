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
# + xcn1 - ID Number
# + xcn2 - Family Name
# + xcn3 - Given Name
# + xcn4 - Second and Further Given Names or Initials Thereof
# + xcn5 - Suffix (e.g., JR or III)
# + xcn6 - Prefix (e.g., DR)
# + xcn7 - Degree (e.g., MD)
# + xcn8 - Source Table
# + xcn9 - Assigning Authority
# + xcn10 - Name Type Code
# + xcn11 - Identifier Check Digit
# + xcn12 - Check Digit Scheme
# + xcn13 - Identifier Type Code
# + xcn14 - Assigning Facility
# + xcn15 - Name Representation Code
# + xcn16 - Name Context
# + xcn17 - Name Validity Range
# + xcn18 - Name Assembly Order
# + xcn19 - Effective Date
# + xcn20 - Expiration Date
# + xcn21 - Professional Suffix
# + xcn22 - Assigning Jurisdiction
# + xcn23 - Assigning Agency or Department
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
    ID xcn13 = "";
    HD xcn14 = {};
    ID xcn15 = "";
    CWE xcn16 = {};
    DR xcn17 = {};
    ID xcn18 = "";
    DTM xcn19 = "";
    DTM xcn20 = "";
    ST xcn21 = "";
    CWE xcn22 = {};
    CWE xcn23 = {};
};
