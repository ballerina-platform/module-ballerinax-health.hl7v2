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


# Description.
#
# + spr1 - Query Tag
# + spr2 - Query/Response Format Code  
# + spr3 - Stored Procedure Name  
# + spr4 - Input Parameter List
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type SPR record {
    *hl7v2:CompositeType;
    ST spr1 = "";
    ID spr2 = "";
    CE spr3 = {};
    QIP spr4 = {};
};
