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

# Extended Telecommunication Number.
#
# + xtn1 - Telephone Number  
# + xtn2 - Telecommunication Use Code  
# + xtn3 - Telecommunication Equipment Type  
# + xtn4 - Email Address  
# + xtn5 - Country Code  
# + xtn6 - Area/city Code  
# + xtn7 - Phone Number  
# + xtn8 - Extension  
# + xtn9 - Any Text
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XTN record {
    *hl7v2:CompositeType;
    TN xtn1 = "";
    ID xtn2 = "";
    ID xtn3 = "";
    ST xtn4 = "";
    NM xtn5 = -1;
    NM xtn6 = -1;
    NM xtn7 = -1;
    NM xtn8 = -1;
    ST xtn9 = "";
};
