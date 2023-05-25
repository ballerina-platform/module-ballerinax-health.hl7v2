
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
# + sid1 - Segment Record Field
# + sid2 - Segment Record Field
# + sid3 - Segment Record Field
# + sid4 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "SID",
    required: false,
    maxReps: 0,
    fields: {
        "sid1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "sid2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sid3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "sid4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type SID record {
    *hl7v2:Segment;
    string name = SID_SEGMENT_NAME;
    CE sid1 = {};
    ST sid2 = "";
    ST sid3 = "";
    CE sid4 = {};
};

public const SID_SEGMENT_NAME = "SID";