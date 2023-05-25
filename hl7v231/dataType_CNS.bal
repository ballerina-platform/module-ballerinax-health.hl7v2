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
# + cns1 - Data type field
# + cns2 - Data type field
# + cns3 - Data type field
# + cns4 - Data type field
# + cns5 - Data type field
# + cns6 - Data type field
# + cns7 - Data type field
# + cns8 - Data type field
# + cns9 - Data type field
# + cns10 - Data type field
# + cns11 - Data type field
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
