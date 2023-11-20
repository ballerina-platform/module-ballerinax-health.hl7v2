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
# + ad1 - street address
# + ad2 - other designation
# + ad3 - city
# + ad4 - state or province
# + ad5 - zip or postal code
# + ad6 - country
# + ad7 - address type
# + ad8 - other geographic designation
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type AD record {
    *hl7v2:CompositeType;
    ST ad1 = "";
    ST ad2 = "";
    ST ad3 = "";
    ST ad4 = "";
    ST ad5 = "";
    ID ad6 = "";
    ID ad7 = "";
    ST ad8 = "";
};
