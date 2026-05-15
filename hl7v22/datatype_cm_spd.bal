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

# Specialty
# + cm_spd1 - Specialty Name
# + cm_spd2 - Governing Board
# + cm_spd3 - Eligible Or Certified
# + cm_spd4 - Date Of Certification

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_SPD record {
    *hl7v2:CompositeType;
    ST cm_spd1 = "";
    ST cm_spd2 = "";
    ID cm_spd3 = "";
    DT cm_spd4 = "";
};
