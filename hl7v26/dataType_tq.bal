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
# + tq1 - Data type field
# + tq2 - Data type field
# + tq3 - Data type field
# + tq4 - Data type field
# + tq5 - Data type field
# + tq6 - Data type field
# + tq7 - Data type field
# + tq8 - Data type field
# + tq9 - Data type field
# + tq10 - Data type field
# + tq11 - Data type field
# + tq12 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type TQ record {
    *hl7v2:CompositeType;
    CQ tq1 = {};
    RI tq2 = {};
    ST tq3 = "";
    DTM tq4 = "";
    DTM tq5 = "";
    ST tq6 = "";
    ST tq7 = "";
    TX tq8 = "";
    ID tq9 = "";
    OSD tq10 = {};
    CWE tq11 = {};
    NM tq12 = "";
};
