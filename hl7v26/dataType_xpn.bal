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
# + xpn1 - Family Name
# + xpn2 - Given Name
# + xpn3 - Second and Further Given Names or Initials Thereof
# + xpn4 - Suffix (e.g., JR or III)
# + xpn5 - Prefix (e.g., DR)
# + xpn6 - Degree (e.g., MD)
# + xpn7 - Name Type Code
# + xpn8 - Name Representation Code
# + xpn9 - Name Context
# + xpn10 - Name Validity Range
# + xpn11 - Name Assembly Order
# + xpn12 - Effective Date
# + xpn13 - Expiration Date
# + xpn14 - Professional Suffix
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XPN record {
    *hl7v2:CompositeType;
    FN xpn1 = {};
    ST xpn2 = "";
    ST xpn3 = "";
    ST xpn4 = "";
    ST xpn5 = "";
    IS xpn6 = "";
    ID xpn7 = "";
    ID xpn8 = "";
    CWE xpn9 = {};
    DR xpn10 = {};
    ID xpn11 = "";
    DTM xpn12 = "";
    DTM xpn13 = "";
    ST xpn14 = "";
};
