
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
# + aut1 - Segment Record Field
# + aut2 - Segment Record Field
# + aut3 - Segment Record Field
# + aut4 - Segment Record Field
# + aut5 - Segment Record Field
# + aut6 - Segment Record Field
# + aut7 - Segment Record Field
# + aut8 - Segment Record Field
# + aut9 - Segment Record Field
# + aut10 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "AUT",
    required: false,
    maxReps: 0,
    fields: {
        "aut1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aut2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "aut3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "aut4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "aut5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "aut6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "aut7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "aut8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aut9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aut10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type AUT record {
    *hl7v2:Segment;
    string name = AUT_SEGMENT_NAME;
    CE aut1 = {};
    CE aut2 = {};
    ST aut3 = "";
    TS aut4 = {};
    TS aut5 = {};
    EI aut6 = {};
    CP aut7 = {};
    NM aut8 = "";
    NM aut9 = "";
    TS aut10 = {};
};

public const AUT_SEGMENT_NAME = "AUT";