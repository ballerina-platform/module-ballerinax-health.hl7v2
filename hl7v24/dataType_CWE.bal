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
# + cwe1 - identifier (ST)
# + cwe2 - text
# + cwe3 - name of coding system
# + cwe4 - alternate identifier (ST)
# + cwe5 - alternate text
# + cwe6 - name of alternate coding system
# + cwe7 - coding system version ID
# + cwe8 - alternate coding system version ID
# + cwe9 - original text
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CWE record {
    *hl7v2:CompositeType;
    ST cwe1 = "";
    ST cwe2 = "";
    IS cwe3 = "";
    ST cwe4 = "";
    ST cwe5 = "";
    IS cwe6 = "";
    ST cwe7 = "";
    ST cwe8 = "";
    ST cwe9 = "";
};
