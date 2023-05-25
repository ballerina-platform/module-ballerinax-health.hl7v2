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
# + cf1 - Data type field
# + cf2 - Data type field
# + cf3 - Data type field
# + cf4 - Data type field
# + cf5 - Data type field
# + cf6 - Data type field
# + cf7 - Data type field
# + cf8 - Data type field
# + cf9 - Data type field
# + cf10 - Data type field
# + cf11 - Data type field
# + cf12 - Data type field
# + cf13 - Data type field
# + cf14 - Data type field
# + cf15 - Data type field
# + cf16 - Data type field
# + cf17 - Data type field
# + cf18 - Data type field
# + cf19 - Data type field
# + cf20 - Data type field
# + cf21 - Data type field
# + cf22 - Data type field
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
