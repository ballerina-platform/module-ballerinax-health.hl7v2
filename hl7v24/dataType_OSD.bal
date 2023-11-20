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
# + osd1 - sequence/results flag
# + osd2 - placer order number: entity identifier
# + osd3 - placer order number: namespace ID
# + osd4 - filler order number: entity identifier
# + osd5 - filler order number: namespace ID
# + osd6 - sequence condition value
# + osd7 - maximum number of repeats
# + osd8 - placer order number: universal ID
# + osd9 - placer order number; universal ID type
# + osd10 - filler order number: universal ID
# + osd11 - filler order number: universal ID type
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
