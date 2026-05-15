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

# Cm For Location Information In Hospital
# + cm_internal_location1 - Nurse Unit (station)
# + cm_internal_location2 - Room
# + cm_internal_location3 - Bed
# + cm_internal_location4 - Facility Id
# + cm_internal_location5 - Bed Status

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_INTERNAL_LOCATION record {
    *hl7v2:CompositeType;
    ID cm_internal_location1 = "";
    ID cm_internal_location2 = "";
    ID cm_internal_location3 = "";
    ID cm_internal_location4 = "";
    ID cm_internal_location5 = "";
};
