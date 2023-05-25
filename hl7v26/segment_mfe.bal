
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
# + mfe1 - Segment Record Field
# + mfe2 - Segment Record Field
# + mfe3 - Segment Record Field
# + mfe4 - Segment Record Field
# + mfe5 - Segment Record Field
# + mfe6 - Segment Record Field
# + mfe7 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "MFE",
    required: false,
    maxReps: 0,
    fields: {
        "mfe1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "mfe2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "mfe3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "mfe4": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: varies
        },
        "mfe5": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "mfe6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "mfe7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        }
    }
}
public type MFE record {
    *hl7v2:Segment;
    string name = MFE_SEGMENT_NAME;
    ID mfe1 = "";
    ST mfe2 = "";
    DTM mfe3 = "";
    varies[] mfe4 = [{}];
    ID[] mfe5 = [""];
    DTM mfe6 = "";
    XCN mfe7 = {};
};

public const MFE_SEGMENT_NAME = "MFE";