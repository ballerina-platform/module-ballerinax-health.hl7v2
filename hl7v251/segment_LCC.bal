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
# + lcc1 - Primary Key Value - LCC
# + lcc2 - Location Department
# + lcc3 - Accommodation Type
# + lcc4 - Charge Code
@hl7v2:SegmentDefinition {
    name: "LCC",
    required: false,
    maxReps: 0,
    fields: {
        "lcc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "lcc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "lcc3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "lcc4": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type LCC record {
    *hl7v2:Segment;
    string name = LCC_SEGMENT_NAME;
    PL lcc1 = {};
    CE lcc2 = {};
    CE[] lcc3 = [{}];
    CE[] lcc4 = [{}];
};

public const LCC_SEGMENT_NAME = "LCC";