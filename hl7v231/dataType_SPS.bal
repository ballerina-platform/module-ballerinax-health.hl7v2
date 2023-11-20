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
# + sps1 - specimen source name or code
# + sps2 - additives
# + sps3 - freetext
# + sps4 - body site
# + sps5 - site modifier
# + sps6 - collection modifier method code
# + sps7 - specimen role
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type SPS record {
    *hl7v2:CompositeType;
    CE sps1 = {};
    TX sps2 = "";
    TX sps3 = "";
    CE sps4 = {};
    CE sps5 = {};
    CE sps6 = {};
    CE sps7 = {};
};
