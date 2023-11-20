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
# + cnn1 - ID Number
# + cnn2 - Family Name
# + cnn3 - Given Name
# + cnn4 - Second and Further Given Names or Initials Thereof
# + cnn5 - Suffix (e.g., JR or III)
# + cnn6 - Prefix (e.g., DR)
# + cnn7 - Degree (e.g., MD
# + cnn8 - Source Table
# + cnn9 - Assigning Authority   - Namespace ID
# + cnn10 - Assigning Authority  - Universal ID
# + cnn11 - Assigning Authority  - Universal ID Type
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CNN record {
    *hl7v2:CompositeType;
    ST cnn1 = "";
    ST cnn2 = "";
    ST cnn3 = "";
    ST cnn4 = "";
    ST cnn5 = "";
    ST cnn6 = "";
    IS cnn7 = "";
    IS cnn8 = "";
    IS cnn9 = "";
    ST cnn10 = "";
    ID cnn11 = "";
};
