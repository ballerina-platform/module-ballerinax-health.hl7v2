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

# Cn For Physicians
# + cn_physician1 - Physician Id
# + cn_physician2 - Familiy Name
# + cn_physician3 - Given Name
# + cn_physician4 - Middle Initial Or Name
# + cn_physician5 - Suffix (e.g. Jr Or Iii)
# + cn_physician6 - Prefix (e.g. Dr)
# + cn_physician7 - Degree (e.g. Md)
# + cn_physician8 - Source Table Id

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CN_PHYSICIAN record {
    *hl7v2:CompositeType;
    ID cn_physician1 = "";
    ST cn_physician2 = "";
    ST cn_physician3 = "";
    ST cn_physician4 = "";
    ST cn_physician5 = "";
    ST cn_physician6 = "";
    ST cn_physician7 = "";
    ID cn_physician8 = "";
};
