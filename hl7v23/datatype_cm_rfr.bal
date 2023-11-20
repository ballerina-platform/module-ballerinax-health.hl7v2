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
# + cm_rfr1 - reference range
# + cm_rfr2 - sex
# + cm_rfr3 - age range
# + cm_rfr4 - age gestation
# + cm_rfr5 - species
# + cm_rfr6 - race/subspecies
# + cm_rfr7 - conditions
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_RFR record {
    *hl7v2:CompositeType;
    CM_RANGE cm_rfr1 = {};
    IS cm_rfr2 = "";
    CM_RANGE cm_rfr3 = {};
    CM_RANGE cm_rfr4 = {};
    TX cm_rfr5 = "";
    ST cm_rfr6 = "";
    TX cm_rfr7 = "";
};
