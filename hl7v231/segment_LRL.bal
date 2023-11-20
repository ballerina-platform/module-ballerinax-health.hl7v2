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
# + lrl1 - Primary Key Value - LRL
# + lrl2 - Segment Action Code
# + lrl3 - Segment Unique Key
# + lrl4 - Location Relationship ID
# + lrl5 - Organizational Location Relationship Value
# + lrl6 - Patient Location Relationship Value
@hl7v2:SegmentDefinition {
    name: "LRL",
    required: false,
    maxReps: 0,
    fields: {
        "lrl1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "lrl2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "lrl3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "lrl4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "lrl5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "lrl6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        }
    }
}
public type LRL record {
    *hl7v2:Segment;
    string name = LRL_SEGMENT_NAME;
    PL lrl1 = {};
    ID lrl2 = "";
    EI lrl3 = {};
    CE lrl4 = {};
    XON[] lrl5 = [{}];
    PL lrl6 = {};
};

public const LRL_SEGMENT_NAME = "LRL";