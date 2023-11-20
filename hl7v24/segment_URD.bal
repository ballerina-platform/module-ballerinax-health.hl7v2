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
# + urd1 - R/U Date/Time
# + urd2 - Report Priority
# + urd3 - R/U Who Subject Definition
# + urd4 - R/U What Subject Definition
# + urd5 - R/U What Department Code
# + urd6 - R/U Display/Print Locations
# + urd7 - R/U Results Level
@hl7v2:SegmentDefinition {
    name: "URD",
    required: false,
    maxReps: 0,
    fields: {
        "urd1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "urd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "urd3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "urd4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "urd5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "urd6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "urd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type URD record {
    *hl7v2:Segment;
    string name = URD_SEGMENT_NAME;
    TS urd1 = {};
    ID urd2 = "";
    XCN[] urd3 = [{}];
    CE[] urd4 = [{}];
    CE[] urd5 = [{}];
    ST[] urd6 = [""];
    ID urd7 = "";
};

public const URD_SEGMENT_NAME = "URD";