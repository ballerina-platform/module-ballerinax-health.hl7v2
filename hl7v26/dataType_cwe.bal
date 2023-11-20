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
# + cwe1 - Identifier
# + cwe2 - Text
# + cwe3 - Name of Coding System
# + cwe4 - Alternate Identifier
# + cwe5 - Alternate Text
# + cwe6 - Name of Alternate Coding System
# + cwe7 - Coding System Version ID
# + cwe8 - Alternate Coding System Version ID
# + cwe9 - Original Text
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CWE record {
    *hl7v2:CompositeType;
    ST cwe1 = "";
    ST cwe2 = "";
    ID cwe3 = "";
    ST cwe4 = "";
    ST cwe5 = "";
    ID cwe6 = "";
    ST cwe7 = "";
    ST cwe8 = "";
    ST cwe9 = "";
};
