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
# + prc1 - Primary Key Value - PRC
# + prc2 - Facility ID - PRC
# + prc3 - Department
# + prc4 - Valid Patient Classes
# + prc5 - Price
# + prc6 - Formula
# + prc7 - Minimum Quantity
# + prc8 - Maximum Quantity
# + prc9 - Minimum Price
# + prc10 - Maximum Price
# + prc11 - Effective Start Date
# + prc12 - Effective End Date
# + prc13 - Price Override Flag
# + prc14 - Billing Category
# + prc15 - Chargeable Flag
# + prc16 - Active/Inactive Flag
# + prc17 - Cost
# + prc18 - Charge On Indicator
@hl7v2:SegmentDefinition {
    name: "PRC",
    required: false,
    maxReps: 0,
    fields: {
        "prc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prc2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "prc3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "prc4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "prc5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CP
        },
        "prc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "prc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "prc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "prc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "prc14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "prc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prc16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prc17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "prc18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type PRC record {
    *hl7v2:Segment;
    string name = PRC_SEGMENT_NAME;
    CE prc1 = {};
    CE[] prc2 = [{}];
    CE[] prc3 = [{}];
    IS[] prc4 = [""];
    CP[] prc5 = [{}];
    ST[] prc6 = [""];
    NM prc7 = "";
    NM prc8 = "";
    MO prc9 = {};
    MO prc10 = {};
    TS prc11 = {};
    TS prc12 = {};
    IS prc13 = "";
    CE[] prc14 = [{}];
    ID prc15 = "";
    ID prc16 = "";
    MO prc17 = {};
    IS prc18 = "";
};

public const PRC_SEGMENT_NAME = "PRC";