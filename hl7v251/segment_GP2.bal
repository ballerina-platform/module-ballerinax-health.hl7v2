
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
# + gp21 - Segment Record Field
# + gp22 - Segment Record Field
# + gp23 - Segment Record Field
# + gp24 - Segment Record Field
# + gp25 - Segment Record Field
# + gp26 - Segment Record Field
# + gp27 - Segment Record Field
# + gp28 - Segment Record Field
# + gp29 - Segment Record Field
# + gp210 - Segment Record Field
# + gp211 - Segment Record Field
# + gp212 - Segment Record Field
# + gp213 - Segment Record Field
# + gp214 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "GP2",
    required: false,
    maxReps: 0,
    fields: {
        "gp21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gp22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gp23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gp24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gp25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gp26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "gp27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gp28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "gp29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gp210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gp211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gp212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "gp213": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "gp214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type GP2 record {
    *hl7v2:Segment;
    string name = GP2_SEGMENT_NAME;
    IS gp21 = "";
    NM gp22 = "";
    CP gp23 = {};
    IS gp24 = "";
    IS gp25 = "";
    IS[] gp26 = [""];
    CE gp27 = {};
    IS[] gp28 = [""];
    IS gp29 = "";
    IS gp210 = "";
    CP gp211 = {};
    IS gp212 = "";
    CP gp213 = {};
    NM gp214 = "";
};

public const GP2_SEGMENT_NAME = "GP2";