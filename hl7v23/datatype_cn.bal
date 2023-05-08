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

# Composite ID Number And Name. A field identifying a person both as a coded value and with a text name. 
#
# + cn1 - ID Number  
# + cn2 - Family Name  
# + cn3 - Given Name  
# + cn4 - Middle Initial Or Name  
# + cn5 - Suffix  
# + cn6 - Prefix  
# + cn7 - Degree  
# + cn8 - Source Table  
# + cn9 - Assigning Authority
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CN record {
    *hl7v2:CompositeType;
    ST cn1 = "";
    ST cn2 = "";
    ST cn3 = "";
    ST cn4 = "";
    ST cn5 = "";
    ST cn6 = "";
    ST cn7 = "";
    ID cn8 = "";
    ST cn9 = "";
};
