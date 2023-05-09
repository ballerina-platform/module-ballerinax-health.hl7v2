
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
# + cm21 - Segment Record Field
# + cm22 - Segment Record Field
# + cm23 - Segment Record Field
# + cm24 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "CM2",
    required: false,
    maxReps: 0,
    fields: {
        "cm21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "cm22": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "cm23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cm24": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type CM2 record {
    *hl7v2:Segment;
    string name = CM2_SEGMENT_NAME;
    SI cm21 = -1;
    CE cm22 = {};
    ST cm23 = "";
    CE[] cm24 = [{}];
};

public const CM2_SEGMENT_NAME = "CM2";
