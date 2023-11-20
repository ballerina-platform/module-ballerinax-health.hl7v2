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
# + ppn1 - ID number
# + ppn2 - family name
# + ppn3 - given name
# + ppn4 - middle initial or name
# + ppn5 - suffix (e.g., JR or III)
# + ppn6 - prefix (e.g., DR)
# + ppn7 - degree (e.g., MD)
# + ppn8 - source table
# + ppn9 - assigning authority
# + ppn10 - name type code
# + ppn11 - identifier check digit
# + ppn12 - code identifying the check digit scheme employed
# + ppn13 - identifier type code
# + ppn14 - assigning facility
# + ppn15 - Date/Time Action Performed
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PPN record {
    *hl7v2:CompositeType;
    ST ppn1 = "";
    ST ppn2 = "";
    ST ppn3 = "";
    ST ppn4 = "";
    ST ppn5 = "";
    ST ppn6 = "";
    ST ppn7 = "";
    ID ppn8 = "";
    HD ppn9 = {};
    ID ppn10 = "";
    ST ppn11 = "";
    ID ppn12 = "";
    IS ppn13 = "";
    HD ppn14 = {};
    TS ppn15 = {};
};
