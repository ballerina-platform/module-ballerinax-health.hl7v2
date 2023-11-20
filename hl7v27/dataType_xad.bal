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
# + xad1 - Street Address
# + xad2 - Other Designation
# + xad3 - City
# + xad4 - State or Province
# + xad5 - Zip or Postal Code
# + xad6 - Country
# + xad7 - Address Type
# + xad8 - Other Geographic Designation
# + xad9 - County/Parish Code
# + xad10 - Census Tract
# + xad11 - Address Representation Code
# + xad13 - Effective Date
# + xad14 - Expiration Date
# + xad15 - Expiration Reason
# + xad16 - Temporary Indicator
# + xad17 - Bad Address Indicator
# + xad18 - Address Usage
# + xad19 - Addressee
# + xad20 - Comment
# + xad21 - Preference Order
# + xad22 - Protection Code
# + xad23 - Address Identifier
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XAD record {
    *hl7v2:CompositeType;
    SAD xad1 = {};
    ST xad2 = "";
    ST xad3 = "";
    ST xad4 = "";
    ST xad5 = "";
    ID xad6 = "";
    ID xad7 = "";
    ST xad8 = "";
    CWE xad9 = {};
    CWE xad10 = {};
    ID xad11 = "";
    DTM xad13 = "";
    DTM xad14 = "";
    CWE xad15 = {};
    ID xad16 = "";
    ID xad17 = "";
    ID xad18 = "";
    ST xad19 = "";
    ST xad20 = "";
    NM xad21 = "";
    CWE xad22 = {};
    EI xad23 = {};
};
