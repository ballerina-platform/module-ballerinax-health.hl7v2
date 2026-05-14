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

# Timing Quantity
# Quantity/timing (ORC-7, OBR-27) provides a means of specifying when the service described by the order segment is to be performed and how frequently. It is a complex multicomponent field that can have repeats; i.e., m...
# + tq1 - Quantity
# + tq2 - Interval
# + tq3 - Duration
# + tq4 - Start Date/Time
# + tq5 - End Date/Time
# + tq6 - Priority
# + tq7 - Condition
# + tq8 - Text
# + tq9 - Conjunction
# + tq10 - Order Sequencing

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
    ID tq6 = "";
    ST tq7 = "";
    TX tq8 = "";
    ID tq9 = "";
    CM_OSD tq10 = {};
};
