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
# + csu1 - Channel Sensitivity
# + csu2 - Unit of Measure Identifier
# + csu3 - Unit of Measure Description
# + csu4 - Unit of Measure Coding System
# + csu5 - Alternate Unit of Measure Identifier
# + csu6 - Alternate Unit of Measure Description
# + csu7 - Alternate Unit of Measure Coding System
# + csu8 - Unit of Measure Coding System Version ID
# + csu9 - Alternate Unit of Measure Coding System Version ID
# + csu10 - Original Text
# + csu11 - Second Alternate Unit of Measure Identifier
# + csu12 - Second Alternate Unit of Measure Text
# + csu13 - Name of Second Alternate Unit of Measure Coding Sy
# + csu14 - Second Alternate Unit of Measure Coding System Ver
# + csu15 - Unit of Measure Coding System OID
# + csu16 - Unit of Measure Value Set OID
# + csu17 - Unit of Measure Value Set Version ID
# + csu18 - Alternate Unit of Measure Coding System OID
# + csu19 - Alternate Unit of Measure Value Set OID
# + csu20 - Alternate Unit of Measure Value Set Version ID
# + csu21 - Alternate Unit of Measure Coding System OID
# + csu22 - Alternate Unit of Measure Value Set OID
# + csu23 - Alternate Unit of Measure Value Set Version ID
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CSU record {
    *hl7v2:CompositeType;
    NM csu1 = "";
    ST csu2 = "";
    ST csu3 = "";
    ID csu4 = "";
    ST csu5 = "";
    ST csu6 = "";
    ID csu7 = "";
    ST csu8 = "";
    ST csu9 = "";
    ST csu10 = "";
    ST csu11 = "";
    ST csu12 = "";
    ID csu13 = "";
    ST csu14 = "";
    ST csu15 = "";
    ST csu16 = "";
    DTM csu17 = "";
    ST csu18 = "";
    ST csu19 = "";
    DTM csu20 = "";
    ST csu21 = "";
    ST csu22 = "";
    ST csu23 = "";
};
