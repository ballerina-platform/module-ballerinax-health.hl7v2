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

# Composite Id With Check Digit
# This data type is used for certain fields that commonly contain check digits, e.g., PID-3-Patient ID (Internal ID). If a site is not using check-digits for a particular CK field, the second and third components are no...
# + ck1 - ID Number
# + ck2 - Check Digit
# + ck3 - Code Identifying the Check Digit Scheme Employed
# + ck4 - Assigning Facility ID

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CK record {
    *hl7v2:CompositeType;
    NM ck1 = "";
    NM ck2 = "";
    ID ck3 = "";
    ST ck4 = "";
};
