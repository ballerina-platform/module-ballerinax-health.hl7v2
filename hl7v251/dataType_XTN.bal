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
# + xtn1 - Telephone Number
# + xtn2 - Telecommunication Use Code
# + xtn3 - Telecommunication Equipment Type
# + xtn4 - Email Address
# + xtn5 - Country Code
# + xtn6 - Area/City Code
# + xtn7 - Local Number
# + xtn8 - Extension
# + xtn9 - Any Text
# + xtn10 - Extension Prefix
# + xtn11 - Speed Dial Code
# + xtn12 - Unformatted Telephone number
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XTN record {
    *hl7v2:CompositeType;
    ST xtn1 = "";
    ID xtn2 = "";
    ID xtn3 = "";
    ST xtn4 = "";
    NM xtn5 = "";
    NM xtn6 = "";
    NM xtn7 = "";
    NM xtn8 = "";
    ST xtn9 = "";
    ST xtn10 = "";
    ST xtn11 = "";
    ST xtn12 = "";
};
