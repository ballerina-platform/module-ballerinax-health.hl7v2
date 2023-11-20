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
# + cf1 - Identifier
# + cf2 - Formatted Text
# + cf3 - Name of Coding System
# + cf4 - Alternate Identifier
# + cf5 - Alternate Formatted Text
# + cf6 - Name of Alternate Coding System
# + cf7 - Coding System Version ID
# + cf8 - Alternate Coding System Version ID
# + cf9 - Original Text
# + cf10 - Second Alternate Identifier
# + cf11 - Second Alternate Formatted Text
# + cf12 - Name of Second Alternate Coding System
# + cf13 - Second Alternate Coding System Version ID
# + cf14 - Coding System OID
# + cf15 - Value Set OID
# + cf16 - Value Set Version ID
# + cf17 - Alternate Coding System OID
# + cf18 - Alternate Value Set OID
# + cf19 - Alternate Value Set Version ID
# + cf20 - Second Alternate Coding System OID
# + cf21 - Second Alternate Value Set OID
# + cf22 - Second Alternate Value Set Version ID
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CF record {
    *hl7v2:CompositeType;
    ST cf1 = "";
    FT cf2 = "";
    ID cf3 = "";
    ST cf4 = "";
    FT cf5 = "";
    ID cf6 = "";
    ST cf7 = "";
    ST cf8 = "";
    ST cf9 = "";
    ST cf10 = "";
    FT cf11 = "";
    ID cf12 = "";
    ST cf13 = "";
    ST cf14 = "";
    ST cf15 = "";
    DTM cf16 = "";
    ST cf17 = "";
    ST cf18 = "";
    DTM cf19 = "";
    ST cf20 = "";
    ST cf21 = "";
    DTM cf22 = "";
};
