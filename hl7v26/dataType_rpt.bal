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
# + rpt1 - Repeat Pattern Code
# + rpt2 - Calendar Alignment
# + rpt3 - Phase Range Begin Value
# + rpt4 - Phase Range End Value
# + rpt5 - Period Quantity
# + rpt6 - Period Units
# + rpt7 - Institution Specified Time
# + rpt8 - Event
# + rpt9 - Event Offset Quantity
# + rpt10 - Event Offset Units
# + rpt11 - General Timing Specification
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type RPT record {
    *hl7v2:CompositeType;
    CWE rpt1 = {};
    ID rpt2 = "";
    NM rpt3 = "";
    NM rpt4 = "";
    NM rpt5 = "";
    IS rpt6 = "";
    ID rpt7 = "";
    ID rpt8 = "";
    NM rpt9 = "";
    IS rpt10 = "";
    GTS rpt11 = "";
};
