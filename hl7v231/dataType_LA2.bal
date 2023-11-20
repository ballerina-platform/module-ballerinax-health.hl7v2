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
# + la21 - point of care (IS)
# + la22 - room
# + la23 - bed
# + la24 - facility (HD)
# + la25 - location status
# + la26 - person location type
# + la27 - building
# + la28 - floor
# + la29 - street address
# + la210 - other designation
# + la211 - city
# + la212 - state or province
# + la213 - zip or postal code
# + la214 - country
# + la215 - address type
# + la216 - other geographic designation
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type LA2 record {
    *hl7v2:CompositeType;
    IS la21 = "";
    IS la22 = "";
    IS la23 = "";
    HD la24 = {};
    IS la25 = "";
    IS la26 = "";
    IS la27 = "";
    IS la28 = "";
    ST la29 = "";
    ST la210 = "";
    ST la211 = "";
    ST la212 = "";
    ST la213 = "";
    ID la214 = "";
    ID la215 = "";
    ST la216 = "";
};
