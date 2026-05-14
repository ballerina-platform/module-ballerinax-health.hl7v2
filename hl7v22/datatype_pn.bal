// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# Person Name
# A name includes multiple free text components as listed above. The maximum length of a PN field is 48 characters including component separators. The sending system may send upper- and lowercase or all uppercase. The r...
# + pn1 - Familiy Name
# + pn2 - Given Name
# + pn3 - Middle Initial Or Name
# + pn4 - Suffix (e.g. Jr Or Iii)
# + pn5 - Prefix (e.g. Dr)
# + pn6 - Degree (e.g. Md)

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PN record {
    *hl7v2:CompositeType;
    ST pn1 = "";
    ST pn2 = "";
    ST pn3 = "";
    ST pn4 = "";
    ST pn5 = "";
    ST pn6 = "";
};
