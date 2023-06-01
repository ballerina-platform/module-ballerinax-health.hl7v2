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
# + xad1 - Data type field
# + xad2 - Data type field
# + xad3 - Data type field
# + xad4 - Data type field
# + xad5 - Data type field
# + xad6 - Data type field
# + xad7 - Data type field
# + xad8 - Data type field
# + xad9 - Data type field
# + xad10 - Data type field
# + xad11 - Data type field
# + xad12 - Data type field
# + xad13 - Data type field
# + xad14 - Data type field
# + xad15 - Data type field
# + xad16 - Data type field
# + xad17 - Data type field
# + xad18 - Data type field
# + xad19 - Data type field
# + xad20 - Data type field
# + xad21 - Data type field
# + xad22 - Data type field
# + xad23 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type XAD record {
    *hl7v2:CompositeType;
    SAD xad1 = {};
    ST xad2 = "";
    ST xad3 = "";
    ST xad4 = "";
    ST xad5 = "";
    ID xad6 = "";
    ID xad7 = "";
    ST xad8 = "";
    CWE xad9 = {};
    CWE xad10 = {};
    ID xad11 = "";
    ST xad12 = "";
    DTM xad13 = "";
    DTM xad14 = "";
    CWE xad15 = {};
    ID xad16 = "";
    ID xad17 = "";
    ID xad18 = "";
    ST xad19 = "";
    ST xad20 = "";
    NM xad21 = "";
    CWE xad22 = {};
    EI xad23 = {};
};
