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

# Performing Person Time Stamp.
#
# + ppn1 - ID Number  
# + ppn2 - Family Name  
# + ppn3 - Given Name  
# + ppn4 - Middle Initial Or Name  
# + ppn5 - Suffix  
# + ppn6 - Prefix  
# + ppn7 - Degree  
# + ppn8 - Source Table  
# + ppn9 - Assigning Authority  
# + ppn10 - Name Type Code  
# + ppn11 - Identifier Check Digit  
# + ppn12 - Code Identifying The Check Digit Scheme Employed  
# + ppn13 - Identifier Type Code  
# + ppn14 - Assigning Facility  
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
