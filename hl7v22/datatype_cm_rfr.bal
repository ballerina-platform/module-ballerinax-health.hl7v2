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

# Reference Range
# + cm_rfr1 - Reference Range
# + cm_rfr2 - Sex
# + cm_rfr3 - Age Range
# + cm_rfr4 - Gestational Age Range
# + cm_rfr5 - Species
# + cm_rfr6 - Race / Subspecies
# + cm_rfr7 - Text Condition

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_RFR record {
    *hl7v2:CompositeType;
    CM_RANGE cm_rfr1 = {};
    ID cm_rfr2 = "";
    CM_RANGE cm_rfr3 = {};
    CM_RANGE cm_rfr4 = {};
    ST cm_rfr5 = "";
    ID cm_rfr6 = "";
    ST cm_rfr7 = "";
};
