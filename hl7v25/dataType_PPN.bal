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
# + ppn1 - ID Number
# + ppn2 - Family Name
# + ppn3 - Given Name
# + ppn4 - Second and Further Given Names or Initials Thereof
# + ppn5 - Suffix (e.g., JR or III)
# + ppn6 - Prefix (e.g., DR)
# + ppn7 - Degree (e.g., MD)
# + ppn8 - Source Table
# + ppn9 - Assigning Authority
# + ppn10 - Name Type Code
# + ppn11 - Identifier Check Digit
# + ppn12 - Check Digit Scheme
# + ppn13 - Identifier Type Code
# + ppn14 - Assigning Facility
# + ppn15 - Date/Time Action Performed
# + ppn16 - Name Representation Code
# + ppn17 - Name Context
# + ppn18 - Name Validity Range
# + ppn19 - Name Assembly Order
# + ppn20 - Effective Date
# + ppn21 - Expiration Date
# + ppn22 - Professional Suffix
# + ppn23 - Assigning Jurisdiction
# + ppn24 - Assigning Agency or Department
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PPN record {
    *hl7v2:CompositeType;
    ST ppn1 = "";
    FN ppn2 = {};
    ST ppn3 = "";
    ST ppn4 = "";
    ST ppn5 = "";
    ST ppn6 = "";
    IS ppn7 = "";
    IS ppn8 = "";
    HD ppn9 = {};
    ID ppn10 = "";
    ST ppn11 = "";
    ID ppn12 = "";
    ID ppn13 = "";
    HD ppn14 = {};
    TS ppn15 = {};
    ID ppn16 = "";
    CE ppn17 = {};
    DR ppn18 = {};
    ID ppn19 = "";
    TS ppn20 = {};
    TS ppn21 = {};
    ST ppn22 = "";
    CWE ppn23 = {};
    CWE ppn24 = {};
};
