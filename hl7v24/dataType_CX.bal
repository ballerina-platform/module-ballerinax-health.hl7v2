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
# + cx1 - ID
# + cx2 - check digit (ST)
# + cx3 - code identifying the check digit scheme employed
# + cx4 - assigning authority
# + cx5 - identifier type code (ID)
# + cx6 - assigning facility
# + cx7 - effective date (DT)
# + cx8 - expiration date
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CX record {
    *hl7v2:CompositeType;
    ST cx1 = "";
    ST cx2 = "";
    ID cx3 = "";
    HD cx4 = {};
    ID cx5 = "";
    HD cx6 = {};
    DT cx7 = "";
    DT cx8 = "";
};
