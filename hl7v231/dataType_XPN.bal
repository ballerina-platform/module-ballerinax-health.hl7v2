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
# + xpn1 - family+last name
# + xpn2 - given name
# + xpn3 - middle initial or name
# + xpn4 - suffix (e.g., JR or III)
# + xpn5 - prefix (e.g., DR)
# + xpn6 - degree (e.g., MD)
# + xpn7 - name type code
# + xpn8 - Name Representation code
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
};
