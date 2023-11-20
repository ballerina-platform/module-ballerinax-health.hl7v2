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
# + urs1 - R/U Where Subject Definition
# + urs2 - R/U When Data Start Date/Time
# + urs3 - R/U When Data End Date/Time
# + urs4 - R/U What User Qualifier
# + urs5 - R/U Other Results Subject Definition
# + urs6 - R/U Which Date/Time Qualifier
# + urs7 - R/U Which Date/Time Status Qualifier
# + urs8 - R/U Date/Time Selection Qualifier
# + urs9 - R/U Quantity/Timing Qualifier
@hl7v2:SegmentDefinition {
    name: "URS",
    required: false,
    maxReps: 0,
    fields: {
        "urs1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urs2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "urs3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "urs4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urs5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urs6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "urs7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "urs8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "urs9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        }
    }
}
public type URS record {
    *hl7v2:Segment;
    string name = URS_SEGMENT_NAME;
    ST[] urs1 = [""];
    TS urs2 = {};
    TS urs3 = {};
    ST[] urs4 = [""];
    ST[] urs5 = [""];
    ID[] urs6 = [""];
    ID[] urs7 = [""];
    ID[] urs8 = [""];
    TQ urs9 = {};
};

public const URS_SEGMENT_NAME = "URS";