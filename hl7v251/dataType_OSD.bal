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
# + osd1 - Sequence/Results Flag
# + osd2 - Placer Order Number: Entity Identifier
# + osd3 - Placer Order Number: Namespace ID
# + osd4 - Filler Order Number: Entity Identifier
# + osd5 - Filler Order Number: Namespace ID
# + osd6 - Sequence Condition Value
# + osd7 - Maximum Number of Repeats
# + osd8 - Placer Order Number: Universal ID
# + osd9 - Placer Order Number: Universal ID Type
# + osd10 - Filler Order Number: Universal ID
# + osd11 - Filler Order Number: Universal ID Type
@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type OSD record {
    *hl7v2:CompositeType;
    ID osd1 = "";
    ST osd2 = "";
    IS osd3 = "";
    ST osd4 = "";
    IS osd5 = "";
    ST osd6 = "";
    NM osd7 = "";
    ST osd8 = "";
    ID osd9 = "";
    ST osd10 = "";
    ID osd11 = "";
};
