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

# Coded with No Exceptions.
#
# + cne1 - Identifier  
# + cne2 - Text  
# + cne3 - Name of Coding System  
# + cne4 - Alternate Identifier  
# + cne5 - Alternate Text  
# + cne6 - Name of Alternate Coding System  
# + cne7 - Coding System Version ID  
# + cne8 - Alternate Coding System Version ID  
# + cne9 - Original Text
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CNE record {
    *hl7v2:CompositeType;
    ST cne1 = "";
    ST cne2 = "";
    ID cne3 = "";
    ST cne4 = "";
    ST cne5 = "";
    ID cne6 = "";
    ST cne7 = "";
    ST cne8 = "";
    ST cne9 = "";
};
