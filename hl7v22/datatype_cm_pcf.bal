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

# Pre-certification Required
# + cm_pcf1 - Pre-certification Patient Type
# + cm_pcf2 - Pre-certication Required
# + cm_pcf3 - Pre-certification Window

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_PCF record {
    *hl7v2:CompositeType;
    ID cm_pcf1 = "";
    ID cm_pcf2 = "";
    TS cm_pcf3 = {};
};
