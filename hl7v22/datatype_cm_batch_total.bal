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

# Cm For Batch Totals
# as many types of totals as needed for the batch may be carried by this field as separate components. Each component is an NM data type
# + cm_batch_total1 - Batch Total 1
# + cm_batch_total2 - Batch Total 2
# + cm_batch_total3 - ...

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_BATCH_TOTAL record {
    *hl7v2:CompositeType;
    NM cm_batch_total1 = "";
    NM cm_batch_total2 = "";
    NM cm_batch_total3 = "";
};
