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
# + tq1 - quantity
# + tq2 - interval
# + tq3 - duration
# + tq4 - start date/time
# + tq5 - end date/time
# + tq6 - priority
# + tq7 - condition
# + tq8 - text (TX)
# + tq9 - conjunction
# + tq10 - order sequencing
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type TQ record {
    *hl7v2:CompositeType;
    CQ tq1 = {};
    CM_RI tq2 = {};
    ST tq3 = "";
    TS tq4 = {};
    TS tq5 = {};
    ST tq6 = "";
    ST tq7 = "";
    TX tq8 = "";
    ST tq9 = "";
    CM_OSD tq10 = "";
};
