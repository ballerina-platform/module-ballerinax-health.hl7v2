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

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + rel1 - Set ID -REL
# + rel2 - Relationship Type
# + rel3 - This Relationship Instance Identifier
# + rel4 - Source Information Instance Identifier
# + rel5 - Target Information Instance Identifier
# + rel6 - Asserting Entity Instance ID
# + rel7 - Asserting Person
# + rel8 - Asserting Organization
# + rel9 - Assertor Address
# + rel10 - Assertor Contact
# + rel11 - Assertion Date Range
# + rel12 - Negation Indicator
# + rel13 - Certainty of Relationship
# + rel14 - Priority No
# + rel15 - Priority Sequence No (rel preference for consideration)
# + rel16 - Separability Indicator
@hl7v2:SegmentDefinition {
    name: "REL",
    required: false,
    maxReps: 0,
    fields: {
        "rel1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "rel2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rel3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rel4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rel5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rel6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rel7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "rel8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "rel9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rel10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "rel11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "rel12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rel13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rel14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rel15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rel16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type REL record {
    *hl7v2:Segment;
    string name = REL_SEGMENT_NAME;
    SI rel1 = "";
    CWE rel2 = {};
    EI rel3 = {};
    EI rel4 = {};
    EI rel5 = {};
    EI rel6 = {};
    XCN rel7 = {};
    XON rel8 = {};
    XAD rel9 = {};
    XTN rel10 = {};
    DR rel11 = {};
    ID rel12 = "";
    CWE rel13 = {};
    NM rel14 = "";
    NM rel15 = "";
    ID rel16 = "";
};

public const REL_SEGMENT_NAME = "REL";