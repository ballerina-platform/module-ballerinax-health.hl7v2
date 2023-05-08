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

# Location With Address Information (variant 2).
#
# + la21 - Point Of Care  
# + la22 - Room  
# + la23 - Bed  
# + la24 - Facility  
# + la25 - Location Status  
# + la26 - Person Location Type  
# + la27 - Building  
# + la28 - Floor  
# + la29 - Street Address  
# + la210 - Other Designation  
# + la211 - City  
# + la212 - State Or Province  
# + la213 - Zip Or Postal Code  
# + la214 - Country 
# + la215 - Address Type  
# + la216 - Other Geographic Designation
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type LA2 record {
    *hl7v2:CompositeType;
    IS la21 = "";
    IS la22 = "";
    IS la23 = "";
    HD la24 = {};
    IS la25 = "";
    IS la26 = "";
    IS la27 = "";
    IS la28 = "";
    ST la29 = "";
    ST la210 = "";
    ST la211 = "";
    ST la212 = "";
    ST la213 = "";
    ID la214 = "";
    ID la215 = "";
    ST la216 = "";
};
