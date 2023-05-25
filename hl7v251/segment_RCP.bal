
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
# + rcp1 - Segment Record Field
# + rcp2 - Segment Record Field
# + rcp3 - Segment Record Field
# + rcp4 - Segment Record Field
# + rcp5 - Segment Record Field
# + rcp6 - Segment Record Field
# + rcp7 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RCP",
    required: false,
    maxReps: 0,
    fields: {
        "rcp1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rcp2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rcp3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rcp4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "rcp5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rcp6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: SRT
        },
        "rcp7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        }
    }
}
public type RCP record {
    *hl7v2:Segment;
    string name = RCP_SEGMENT_NAME;
    ID rcp1 = "";
    CQ rcp2 = {};
    CE rcp3 = {};
    TS rcp4 = {};
    ID rcp5 = "";
    SRT[] rcp6 = [{}];
    ID[] rcp7 = [""];
};

public const RCP_SEGMENT_NAME = "RCP";