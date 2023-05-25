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
# + cwe1 - Data type field
# + cwe2 - Data type field
# + cwe3 - Data type field
# + cwe4 - Data type field
# + cwe5 - Data type field
# + cwe6 - Data type field
# + cwe7 - Data type field
# + cwe8 - Data type field
# + cwe9 - Data type field
# + cwe10 - Data type field
# + cwe11 - Data type field
# + cwe12 - Data type field
# + cwe13 - Data type field
# + cwe14 - Data type field
# + cwe15 - Data type field
# + cwe16 - Data type field
# + cwe17 - Data type field
# + cwe18 - Data type field
# + cwe19 - Data type field
# + cwe20 - Data type field
# + cwe21 - Data type field
# + cwe22 - Data type field
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
