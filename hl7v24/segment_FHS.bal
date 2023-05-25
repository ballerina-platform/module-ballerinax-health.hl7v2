
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
# + fhs1 - Segment Record Field
# + fhs2 - Segment Record Field
# + fhs3 - Segment Record Field
# + fhs4 - Segment Record Field
# + fhs5 - Segment Record Field
# + fhs6 - Segment Record Field
# + fhs7 - Segment Record Field
# + fhs8 - Segment Record Field
# + fhs9 - Segment Record Field
# + fhs10 - Segment Record Field
# + fhs11 - Segment Record Field
# + fhs12 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "FHS",
    required: false,
    maxReps: 0,
    fields: {
        "fhs1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "fhs8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "fhs12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type FHS record {
    *hl7v2:Segment;
    string name = FHS_SEGMENT_NAME;
    ST fhs1 = "";
    ST fhs2 = "";
    ST fhs3 = "";
    ST fhs4 = "";
    ST fhs5 = "";
    ST fhs6 = "";
    TS fhs7 = {};
    ST fhs8 = "";
    ST fhs9 = "";
    ST fhs10 = "";
    ST fhs11 = "";
    ST fhs12 = "";
};

public const FHS_SEGMENT_NAME = "FHS";