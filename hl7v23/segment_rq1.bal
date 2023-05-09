
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
# + rq11 - Segment Record Field
# + rq12 - Segment Record Field
# + rq13 - Segment Record Field
# + rq14 - Segment Record Field
# + rq15 - Segment Record Field
# + rq16 - Segment Record Field
# + rq17 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RQ1",
    required: false,
    maxReps: 0,
    fields: {
        "rq11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rq12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rq13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rq14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rq15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rq16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rq17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type RQ1 record {
    *hl7v2:Segment;
    string name = RQ1_SEGMENT_NAME;
    ST rq11 = "";
    CE rq12 = {};
    ST rq13 = "";
    CE rq14 = {};
    ST rq15 = "";
    ID rq16 = "";
    ID rq17 = "";
};

public const RQ1_SEGMENT_NAME = "RQ1";
