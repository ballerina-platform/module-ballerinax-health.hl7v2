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
# + cm_la11 - Data type field
# + cm_la12 - Data type field
# + cm_la13 - Data type field
# + cm_la14 - Data type field
# + cm_la15 - Data type field
# + cm_la16 - Data type field
# + cm_la17 - Data type field
# + cm_la18 - Data type field
# + cm_la19 - Data type field
# + cm_la110 - Data type field
# + cm_la111 - Data type field
# + cm_la112 - Data type field
# + cm_la113 - Data type field
# + cm_la114 - Data type field
# + cm_la115 - Data type field
# + cm_la116 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_LA1 record {
    *hl7v2:CompositeType;
    ST cm_la11 = "";
    IS cm_la12 = "";
    IS cm_la13 = "";
    HD cm_la14 = {};
    IS cm_la15 = "";
    IS cm_la16 = "";
    IS cm_la17 = "";
    ST cm_la18 = "";
    ST cm_la19 = "";
    ST cm_la110 = "";
    ST cm_la111 = "";
    ST cm_la112 = "";
    ST cm_la113 = "";
    ID cm_la114 = "";
    ID cm_la115 = "";
    ST cm_la116 = "";
};
