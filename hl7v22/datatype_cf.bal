// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# Coded Element with Formatted Values
# This data type transmits codes and the formatted text associated with the code. This data type can be used to transmit for the first time the formatted text for the canned text portion of a report, for example, a stan...
# + cf1 - Identifier
# + cf2 - Formatted Text
# + cf3 - Name Of Coding System
# + cf4 - Alternate Identifier
# + cf5 - Alternate Formatted Text
# + cf6 - Name Of Alternate Coding System

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CF record {
    *hl7v2:CompositeType;
    ID cf1 = "";
    ST cf2 = "";
    ST cf3 = "";
    ST cf4 = "";
    ST cf5 = "";
    ST cf6 = "";
};
