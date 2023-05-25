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
# + pl1 - Data type field
# + pl2 - Data type field
# + pl3 - Data type field
# + pl4 - Data type field
# + pl5 - Data type field
# + pl6 - Data type field
# + pl7 - Data type field
# + pl8 - Data type field
# + pl9 - Data type field
# + pl10 - Data type field
# + pl11 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PL record {
    *hl7v2:CompositeType;
    HD pl1 = {};
    HD pl2 = {};
    HD pl3 = {};
    HD pl4 = {};
    IS pl5 = "";
    IS pl6 = "";
    HD pl7 = {};
    HD pl8 = {};
    ST pl9 = "";
    EI pl10 = {};
    HD pl11 = {};
};
