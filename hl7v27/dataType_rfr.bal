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
# + rfr1 - Numeric Range
# + rfr2 - Administrative Sex
# + rfr3 - Age Range
# + rfr4 - Gestational Age Range
# + rfr5 - Species
# + rfr6 - Race/subspecies
# + rfr7 - Conditions
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type RFR record {
    *hl7v2:CompositeType;
    NR rfr1 = {};
    CWE rfr2 = {};
    NR rfr3 = {};
    NR rfr4 = {};
    ST rfr5 = "";
    ST rfr6 = "";
    TX rfr7 = "";
};
