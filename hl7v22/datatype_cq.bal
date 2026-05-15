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

# Composite Quantity With Units
# Quantity of the service that should be provided at each service interval. E.g, if two blood cultures to be obtained every 4 hours, the quantity would be 2. If three units of blood are to be typed and cross-matched, th...
# + cq1 - Quantity
# + cq2 - Units

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CQ record {
    *hl7v2:CompositeType;
    NM cq1 = "";
    ST cq2 = "";
};
