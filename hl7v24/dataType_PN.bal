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
# + pn1 - family name
# + pn2 - given name
# + pn3 - second and further given names or initials thereof
# + pn4 - suffix (e.g., JR or III)
# + pn5 - prefix (e.g., DR)
# + pn6 - degree (e.g., MD)
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PN record {
    *hl7v2:CompositeType;
    FN pn1 = {};
    ST pn2 = "";
    ST pn3 = "";
    ST pn4 = "";
    ST pn5 = "";
    IS pn6 = "";
};
