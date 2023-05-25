
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
# + ub21 - Segment Record Field
# + ub22 - Segment Record Field
# + ub23 - Segment Record Field
# + ub24 - Segment Record Field
# + ub25 - Segment Record Field
# + ub26 - Segment Record Field
# + ub27 - Segment Record Field
# + ub28 - Segment Record Field
# + ub29 - Segment Record Field
# + ub210 - Segment Record Field
# + ub211 - Segment Record Field
# + ub212 - Segment Record Field
# + ub213 - Segment Record Field
# + ub214 - Segment Record Field
# + ub215 - Segment Record Field
# + ub216 - Segment Record Field
# + ub217 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "UB2",
    required: false,
    maxReps: 0,
    fields: {
        "ub21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ub22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "ub24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: UVC
        },
        "ub27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: OCD
        },
        "ub28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: OSP
        },
        "ub29": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "ub210": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "ub211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub212": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "ub213": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "ub214": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "ub215": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ub216": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "ub217": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type UB2 record {
    *hl7v2:Segment;
    string name = UB2_SEGMENT_NAME;
    SI ub21 = "";
    ST ub22 = "";
    IS[] ub23 = [""];
    ST ub24 = "";
    ST ub25 = "";
    UVC[] ub26 = [{}];
    OCD[] ub27 = [{}];
    OSP[] ub28 = [{}];
    ST[] ub29 = [""];
    ST[] ub210 = [""];
    ST ub211 = "";
    ST[] ub212 = [""];
    ST[] ub213 = [""];
    ST[] ub214 = [""];
    ST ub215 = "";
    ST[] ub216 = [""];
    NM ub217 = "";
};

public const UB2_SEGMENT_NAME = "UB2";