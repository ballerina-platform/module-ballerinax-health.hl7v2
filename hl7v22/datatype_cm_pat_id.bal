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

# Patient Id
# + cm_pat_id1 - Patient Id
# + cm_pat_id2 - Check Digit
# + cm_pat_id3 - Check Digit Scheme
# + cm_pat_id4 - Facility Id
# + cm_pat_id5 - Type

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_PAT_ID record {
    *hl7v2:CompositeType;
    ST cm_pat_id1 = "";
    NM cm_pat_id2 = "";
    ID cm_pat_id3 = "";
    ID cm_pat_id4 = "";
    ID cm_pat_id5 = "";
};
