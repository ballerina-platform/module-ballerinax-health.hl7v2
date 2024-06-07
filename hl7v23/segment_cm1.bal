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
# + cm11 - CM1 - Set ID
# + cm12 - Study Phase Identifier
# + cm13 - Description of Study Phase
@hl7v2:SegmentDefinition {
    name: "CM1",
    required: false,
    maxReps: 0,
    fields: {
        "cm11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "cm12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "cm13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type CM1 record {
    *hl7v2:Segment;
    string name = CM1_SEGMENT_NAME;
    SI cm11 = "";
    CE cm12 = {};
    ST cm13 = "";
};

public const CM1_SEGMENT_NAME = "CM1";
