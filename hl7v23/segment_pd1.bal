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
# + pd11 - Living Dependency
# + pd12 - Living Arrangement
# + pd13 - Patient Primary Facility
# + pd14 - Patient Primary Care Provider Name & ID No.
# + pd15 - Student Indicator
# + pd16 - Handicap
# + pd17 - Living Will
# + pd18 - Organ Donor
# + pd19 - Separate Bill
# + pd110 - Duplicate Patient
# + pd111 - Publicity Indicator
# + pd112 - Protection Indicator
@hl7v2:SegmentDefinition {
    name: "PD1",
    required: false,
    maxReps: 0,
    fields: {
        "pd11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pd13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pd14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pd15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pd16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pd17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pd18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pd19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pd110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pd111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "pd112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type PD1 record {
    *hl7v2:Segment;
    string name = PD1_SEGMENT_NAME;
    IS pd11 = "";
    IS pd12 = "";
    XON[] pd13 = [{}];
    XCN[] pd14 = [{}];
    IS pd15 = "";
    IS pd16 = "";
    IS pd17 = "";
    IS pd18 = "";
    ID pd19 = "";
    CX[] pd110 = [{}];
    CE pd111 = {};
    ID pd112 = "";
};

public const PD1_SEGMENT_NAME = "PD1";