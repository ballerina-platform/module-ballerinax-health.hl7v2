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
# + psh1 - Report Type
# + psh2 - Report Form Identifier
# + psh3 - Report Date
# + psh4 - Report Interval Start Date
# + psh5 - Report Interval End Date
# + psh6 - Quantity Manufactured
# + psh7 - Quantity Distributed
# + psh8 - Quantity Distributed Method
# + psh9 - Quantity Distributed Comment
# + psh10 - Quantity in Use
# + psh11 - Quantity in Use Method
# + psh12 - Quantity in Use Comment
# + psh13 - Number of Product Experience Reports Filed by Facility
# + psh14 - Number of Product Experience Reports Filed by Distributor
@hl7v2:SegmentDefinition {
    name: "PSH",
    required: false,
    maxReps: 0,
    fields: {
        "psh1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psh2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psh3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "psh4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "psh5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "psh6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psh9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "psh10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psh12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "psh13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "psh14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        }
    }
}
public type PSH record {
    *hl7v2:Segment;
    string name = PSH_SEGMENT_NAME;
    ST psh1 = "";
    ST psh2 = "";
    TS psh3 = {};
    TS psh4 = {};
    TS psh5 = {};
    CQ psh6 = {};
    CQ psh7 = {};
    ID psh8 = "";
    FT psh9 = "";
    CQ psh10 = {};
    ID psh11 = "";
    FT psh12 = "";
    NM[] psh13 = [""];
    NM[] psh14 = [""];
};

public const PSH_SEGMENT_NAME = "PSH";