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
# + lch1 - Primary Key Value - LCH
# + lch2 - Segment Action Code
# + lch3 - Segment Unique Key
# + lch4 - Location Characteristic ID
# + lch5 - Location Characteristic Value-LCH
@hl7v2:SegmentDefinition {
    name: "LCH",
    required: false,
    maxReps: 0,
    fields: {
        "lch1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "lch2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "lch3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "lch4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "lch5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type LCH record {
    *hl7v2:Segment;
    string name = LCH_SEGMENT_NAME;
    PL lch1 = {};
    ID lch2 = "";
    EI lch3 = {};
    CE lch4 = {};
    CE lch5 = {};
};

public const LCH_SEGMENT_NAME = "LCH";