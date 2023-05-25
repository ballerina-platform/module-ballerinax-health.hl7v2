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
# + ppn1 - Data type field
# + ppn2 - Data type field
# + ppn3 - Data type field
# + ppn4 - Data type field
# + ppn5 - Data type field
# + ppn6 - Data type field
# + ppn7 - Data type field
# + ppn8 - Data type field
# + ppn9 - Data type field
# + ppn10 - Data type field
# + ppn11 - Data type field
# + ppn12 - Data type field
# + ppn13 - Data type field
# + ppn14 - Data type field
# + ppn15 - Data type field
# + ppn16 - Data type field
# + ppn17 - Data type field
# + ppn18 - Data type field
# + ppn19 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PPN record {
    *hl7v2:CompositeType;
    ST ppn1 = "";
    FN ppn2 = {};
    ST ppn3 = "";
    ST ppn4 = "";
    ST ppn5 = "";
    ST ppn6 = "";
    IS ppn7 = "";
    IS ppn8 = "";
    HD ppn9 = {};
    ID ppn10 = "";
    ST ppn11 = "";
    ID ppn12 = "";
    IS ppn13 = "";
    HD ppn14 = {};
    TS ppn15 = {};
    ID ppn16 = "";
    CE ppn17 = {};
    DR ppn18 = {};
    ID ppn19 = "";
};
