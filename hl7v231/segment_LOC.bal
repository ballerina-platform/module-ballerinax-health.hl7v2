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
# + loc1 - Primary Key Value - LOC
# + loc2 - Location Description
# + loc3 - Location Type - LOC
# + loc4 - Organization Name - LOC
# + loc5 - Location Address
# + loc6 - Location Phone
# + loc7 - License Number
# + loc8 - Location Equipment
@hl7v2:SegmentDefinition {
    name: "LOC",
    required: false,
    maxReps: 0,
    fields: {
        "loc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "loc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "loc3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "loc4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "loc5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "loc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "loc7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "loc8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        }
    }
}
public type LOC record {
    *hl7v2:Segment;
    string name = LOC_SEGMENT_NAME;
    PL loc1 = {};
    ST loc2 = "";
    IS[] loc3 = [""];
    XON[] loc4 = [{}];
    XAD[] loc5 = [{}];
    XTN[] loc6 = [{}];
    CE[] loc7 = [{}];
    IS[] loc8 = [""];
};

public const LOC_SEGMENT_NAME = "LOC";