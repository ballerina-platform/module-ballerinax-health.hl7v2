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
# + sps1 - Specimen Source Name or Code
# + sps2 - Additives
# + sps3 - Specimen Collection Method
# + sps4 - Body Site
# + sps5 - Site Modifier
# + sps6 - Collection Method Modifier Code
# + sps7 - Specimen Role
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type SPS record {
    *hl7v2:CompositeType;
    CWE sps1 = {};
    CWE sps2 = {};
    TX sps3 = "";
    CWE sps4 = {};
    CWE sps5 = {};
    CWE sps6 = {};
    CWE sps7 = {};
};
