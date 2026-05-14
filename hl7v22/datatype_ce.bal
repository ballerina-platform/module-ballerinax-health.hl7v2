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

# Coded Element
# This data type transmits codes and the text associated with the code. Example: |54.21^Laparoscopy^I9^42112^^AS4|
# + ce1 - Identifier
# + ce2 - Text
# + ce3 - Name Of Coding System
# + ce4 - Alternate Identifier
# + ce5 - Alternate Text
# + ce6 - Name Of Alternate Coding System

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CE record {
    *hl7v2:CompositeType;
    ID ce1 = "";
    ST ce2 = "";
    ST ce3 = "";
    ST ce4 = "";
    ST ce5 = "";
    ST ce6 = "";
};
