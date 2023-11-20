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
# + ma1 - Sample 1 From Channel 1
# + ma2 - Sample 1 From Channel 2
# + ma3 - Sample 1 From Channel N
# + ma4 - Sample 2 From Channel 1
# + ma5 - Sample 2 From Channel N
# + ma6 - Sample N From Channel N
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type MA record {
    *hl7v2:CompositeType;
    NM ma1 = "";
    NM ma2 = "";
    NM ma3 = "";
    NM ma4 = "";
    NM ma5 = "";
    NM ma6 = "";
};
