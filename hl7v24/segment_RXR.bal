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
# + rxr1 - Route
# + rxr2 - Administration Site
# + rxr3 - Administration Device
# + rxr4 - Administration Method
# + rxr5 - Routing Instruction
@hl7v2:SegmentDefinition {
    name: "RXR",
    required: false,
    maxReps: 0,
    fields: {
        "rxr1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxr4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type RXR record {
    *hl7v2:Segment;
    string name = RXR_SEGMENT_NAME;
    CE rxr1 = {};
    CE rxr2 = {};
    CE rxr3 = {};
    CE rxr4 = {};
    CE rxr5 = {};
};

public const RXR_SEGMENT_NAME = "RXR";