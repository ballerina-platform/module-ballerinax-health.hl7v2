
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
# + qri1 - Segment Record Field
# + qri2 - Segment Record Field
# + qri3 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "QRI",
    required: false,
    maxReps: 0,
    fields: {
        "qri1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "qri2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "qri3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type QRI record {
    *hl7v2:Segment;
    string name = QRI_SEGMENT_NAME;
    NM qri1 = "";
    IS[] qri2 = [""];
    CE qri3 = {};
};

public const QRI_SEGMENT_NAME = "QRI";