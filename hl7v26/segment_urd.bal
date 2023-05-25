
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
# + urd1 - Segment Record Field
# + urd2 - Segment Record Field
# + urd3 - Segment Record Field
# + urd4 - Segment Record Field
# + urd5 - Segment Record Field
# + urd6 - Segment Record Field
# + urd7 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "URD",
    required: false,
    maxReps: 0,
    fields: {
        "urd1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "urd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "urd3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "urd4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "urd5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "urd6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type URD record {
    *hl7v2:Segment;
    string name = URD_SEGMENT_NAME;
    DTM urd1 = "";
    ID urd2 = "";
    XCN[] urd3 = [{}];
    CWE[] urd4 = [{}];
    CWE[] urd5 = [{}];
    ST[] urd6 = [""];
    ID urd7 = "";
};

public const URD_SEGMENT_NAME = "URD";