
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
# + fac1 - Segment Record Field
# + fac2 - Segment Record Field
# + fac3 - Segment Record Field
# + fac4 - Segment Record Field
# + fac5 - Segment Record Field
# + fac6 - Segment Record Field
# + fac7 - Segment Record Field
# + fac8 - Segment Record Field
# + fac9 - Segment Record Field
# + fac10 - Segment Record Field
# + fac11 - Segment Record Field
# + fac12 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "FAC",
    required: false,
    maxReps: 0,
    fields: {
        "fac1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "fac2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "fac3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "fac4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "fac5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "fac6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "fac7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "fac8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "fac9": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "fac10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fac11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "fac12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        }
    }
}
public type FAC record {
    *hl7v2:Segment;
    string name = FAC_SEGMENT_NAME;
    EI fac1 = {};
    ID fac2 = "";
    XAD[] fac3 = [{}];
    XTN fac4 = {};
    XCN[] fac5 = [{}];
    ST[] fac6 = [""];
    XAD[] fac7 = [{}];
    XTN[] fac8 = [{}];
    XCN[] fac9 = [{}];
    ST fac10 = "";
    XAD[] fac11 = [{}];
    XTN fac12 = {};
};

public const FAC_SEGMENT_NAME = "FAC";