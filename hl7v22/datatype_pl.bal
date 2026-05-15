// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# Person Location
# This data type is used to specify a patient location within a healthcare institution. Which components are valued depends on the needs of the site. It is most commonly used for specifying patient locations, but may re...
# + pl1 - Point Of Care
# + pl2 - Room
# + pl3 - Bed
# + pl4 - Facility
# + pl5 - Location Status
# + pl6 - Person Location Type
# + pl7 - Building
# + pl8 - Floor
# + pl9 - Location Type

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type PL record {
    *hl7v2:CompositeType;
    ID pl1 = "";
    IS pl2 = "";
    IS pl3 = "";
    HD pl4 = {};
    IS pl5 = "";
    IS pl6 = "";
    IS pl7 = "";
    ST pl8 = "";
    ST pl9 = "";
};
