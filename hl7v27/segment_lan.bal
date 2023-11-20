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
# + lan1 - Set ID - LAN
# + lan2 - Language Code
# + lan3 - Language Ability Code
# + lan4 - Language Proficiency Code
@hl7v2:SegmentDefinition {
    name: "LAN",
    required: false,
    maxReps: 0,
    fields: {
        "lan1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "lan2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "lan3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "lan4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type LAN record {
    *hl7v2:Segment;
    string name = LAN_SEGMENT_NAME;
    SI lan1 = "";
    CWE lan2 = {};
    CWE[] lan3 = [{}];
    CWE lan4 = {};
};

public const LAN_SEGMENT_NAME = "LAN";