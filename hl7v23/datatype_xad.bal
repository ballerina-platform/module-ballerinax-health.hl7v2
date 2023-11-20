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
# + xad1 - street address
# + xad2 - other designation
# + xad3 - city
# + xad4 - state or province
# + xad5 - zip or postal code
# + xad6 - country
# + xad7 - address type
# + xad8 - other geographic designation
# + xad9 - county/parish code
# + xad10 - census tract
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XAD record {
    *hl7v2:CompositeType;
    ST xad1 = "";
    ST xad2 = "";
    ST xad3 = "";
    ST xad4 = "";
    ST xad5 = "";
    ID xad6 = "";
    ID xad7 = "";
    ST xad8 = "";
    IS xad9 = "";
    IS xad10 = "";
};
