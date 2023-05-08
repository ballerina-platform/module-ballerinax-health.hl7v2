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

# Extended Person Name.
#
# + xpn1 - Family Name  
# + xpn2 - Given Name  
# + xpn3 - Middle Initial Or Name  
# + xpn4 - Suffix  
# + xpn5 - Prefix  
# + xpn6 - Degree  
# + xpn7 - Name Type Code  
# + xpn8 - Name Representation Code
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XPN record {
    *hl7v2:CompositeType;
    ST xpn1 = "";
    ST xpn2 = "";
    ST xpn3 = "";
    ST xpn4 = "";
    ST xpn5 = "";
    ST xpn6 = "";
    ID xpn7 = "";
    ID xpn8 = "";
};
