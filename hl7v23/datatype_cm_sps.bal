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
# + cm_sps1 - specimen source name or code
# + cm_sps2 - additives
# + cm_sps3 - freetext
# + cm_sps4 - body site
# + cm_sps5 - site modifier
# + cm_sps6 - collection modifier method code
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_SPS record {
    *hl7v2:CompositeType;
    CE cm_sps1 = {};
    TX cm_sps2 = "";
    TX cm_sps3 = "";
    CE cm_sps4 = {};
    CE cm_sps5 = {};
    CE cm_sps6 = {};
};
