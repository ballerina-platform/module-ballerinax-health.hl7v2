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
# + pl1 - point of care
# + pl2 - room
# + pl3 - bed
# + pl4 - facility (HD)
# + pl5 - location status
# + pl6 - person location type
# + pl7 - building
# + pl8 - floor
# + pl9 - Location description
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PL record {
    *hl7v2:CompositeType;
    IS pl1 = "";
    IS pl2 = "";
    IS pl3 = "";
    HD pl4 = {};
    IS pl5 = "";
    IS pl6 = "";
    IS pl7 = "";
    IS pl8 = "";
    ST pl9 = "";
};
