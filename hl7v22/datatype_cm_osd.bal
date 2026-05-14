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

# Order Sequence
# + cm_osd1 - Sequence/results Flag
# + cm_osd2 - Placer Order Number Entity Identifier
# + cm_osd3 - Placer Order Number Namespace ID
# + cm_osd4 - Filler Order Number Entity Identifier
# + cm_osd5 - Filler Order Number Namespace ID
# + cm_osd6 - Sequence Condition Value
# + cm_osd7 - Maximum Number Of Repeats

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CM_OSD record {
    *hl7v2:CompositeType;
    ID cm_osd1 = "";
    ST cm_osd2 = "";
    IS cm_osd3 = "";
    ST cm_osd4 = "";
    IS cm_osd5 = "";
    ST cm_osd6 = "";
    NM cm_osd7 = "";
};
