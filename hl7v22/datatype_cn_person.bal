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

# Cn For Person
# A field identifying a person both as a coded value and with a text name. The first component is the coded ID according to a site-specific table. The second through the seventh components are the person s name as a PN ...
# + cn_person1 - Id Number
# + cn_person2 - Familiy Name
# + cn_person3 - Given Name
# + cn_person4 - Middle Initial Or Name
# + cn_person5 - Suffix (e.g. Jr Or Iii)
# + cn_person6 - Prefix (e.g. Dr)
# + cn_person7 - Degree (e.g. Md)
# + cn_person8 - Source Table Id

@hl7v2:TypeDefinition {
    length: (),
    maxReps: (),
    required: false
}
public type CN_PERSON record {
    *hl7v2:CompositeType;
    ID cn_person1 = "";
    ST cn_person2 = "";
    ST cn_person3 = "";
    ST cn_person4 = "";
    ST cn_person5 = "";
    ST cn_person6 = "";
    ST cn_person7 = "";
    ID cn_person8 = "";
};
