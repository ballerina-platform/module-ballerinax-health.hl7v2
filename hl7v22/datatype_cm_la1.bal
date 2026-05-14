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

# Location With Address Information
# + cm_la11 - Dispense / Deliver To Location
# + cm_la12 - Location

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_LA1 record {
    *hl7v2:CompositeType;
    CM_INTERNAL_LOCATION cm_la11 = {};
    AD cm_la12 = {};
};
