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
# + xtn1 - [(999)] 999-9999 [X99999][C any text]
# + xtn2 - telecommunication use code
# + xtn3 - telecommunication equipment type (ID)
# + xtn4 - Email address
# + xtn5 - Country Code
# + xtn6 - Area/city code
# + xtn7 - Phone number
# + xtn8 - Extension
# + xtn9 - any text
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
    NM xtn5 = "";
    NM xtn6 = "";
    NM xtn7 = "";
    NM xtn8 = "";
    ST xtn9 = "";
};
