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

# Location With Address Information (variant 1).
#
# + la11 - Point Of Care  
# + la12 - Room  
# + la13 - Bed  
# + la14 - Facility  
# + la15 - Location Status  
# + la16 - Person Location Type  
# + la17 - Building  
# + la18 - Floor  
# + la19 - Address
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type LA1 record {
    *hl7v2:CompositeType;
    IS la11 = "";
    IS la12 = "";
    IS la13 = "";
    HD la14 = {};
    IS la15 = "";
    IS la16 = "";
    IS la17 = "";
    IS la18 = "";
    AD la19 = {};
};
