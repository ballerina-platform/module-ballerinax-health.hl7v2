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
# + cwe10 - Second Alternate Identifier
# + cwe11 - Second Alternate Text
# + cwe12 - Name of Second Alternate Coding System
# + cwe13 - Second Alternate Coding System Version ID
# + cwe14 - Coding System OID
# + cwe15 - Value Set OID
# + cwe16 - Value Set Version ID
# + cwe17 - Alternate Coding System OID
# + cwe18 - Alternate Value Set OID
# + cwe19 - Alternate Value Set Version ID
# + cwe20 - Second Alternate Coding System OID
# + cwe21 - Second Alternate Value Set OID
# + cwe22 - Second Alternate Value Set Version ID
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
    ST cwe10 = "";
    ST cwe11 = "";
    ID cwe12 = "";
    ST cwe13 = "";
    ST cwe14 = "";
    ST cwe15 = "";
    DTM cwe16 = "";
    ST cwe17 = "";
    ST cwe18 = "";
    DTM cwe19 = "";
    ST cwe20 = "";
    ST cwe21 = "";
    DTM cwe22 = "";
};
