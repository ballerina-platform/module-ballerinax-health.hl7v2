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
# + cne1 - identifier
# + cne2 - text
# + cne3 - name of coding system
# + cne4 - alternate identifier
# + cne5 - alternate text
# + cne6 - name of alternate coding system
# + cne7 - coding system version ID
# + cne8 - alternate coding system version ID
# + cne9 - original text
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CNE record {
    *hl7v2:CompositeType;
    ST cne1 = "";
    ST cne2 = "";
    ST cne3 = "";
    ST cne4 = "";
    ST cne5 = "";
    ST cne6 = "";
    ST cne7 = "";
    ST cne8 = "";
    ST cne9 = "";
};
