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
# + cns1 - ID number (ST)
# + cns2 - family name
# + cns3 - given name
# + cns4 - second and further given names or initials thereof
# + cns5 - suffix (e.g., JR or III)
# + cns6 - prefix (e.g., DR)
# + cns7 - degree (e.g., MD)
# + cns8 - source table
# + cns9 - assigning authority namespace ID
# + cns10 - assigning authority universal ID
# + cns11 - assigning authority universal ID type
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CNS record {
    *hl7v2:CompositeType;
    ST cns1 = "";
    ST cns2 = "";
    ST cns3 = "";
    ST cns4 = "";
    ST cns5 = "";
    ST cns6 = "";
    IS cns7 = "";
    IS cns8 = "";
    IS cns9 = "";
    ST cns10 = "";
    ID cns11 = "";
};
