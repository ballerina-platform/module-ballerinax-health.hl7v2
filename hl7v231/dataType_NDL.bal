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
# + ndl1 - Data type field
# + ndl2 - Data type field
# + ndl3 - Data type field
# + ndl4 - Data type field
# + ndl5 - Data type field
# + ndl6 - Data type field
# + ndl7 - Data type field
# + ndl8 - Data type field
# + ndl9 - Data type field
# + ndl10 - Data type field
# + ndl11 - Data type field
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type NDL record {
    *hl7v2:CompositeType;
    CN ndl1 = {};
    TS ndl2 = {};
    TS ndl3 = {};
    IS ndl4 = "";
    IS ndl5 = "";
    IS ndl6 = "";
    HD ndl7 = {};
    IS ndl8 = "";
    IS ndl9 = "";
    IS ndl10 = "";
    IS ndl11 = "";
};
