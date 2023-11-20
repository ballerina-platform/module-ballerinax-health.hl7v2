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
# + rxa1 - Give Sub-ID Counter
# + rxa2 - Administration Sub-ID Counter
# + rxa3 - Date/Time Start of Administration
# + rxa4 - Date/Time End of Administration
# + rxa5 - Administered Code
# + rxa6 - Administered Amount
# + rxa7 - Administered Units
# + rxa8 - Administered Dosage Form
# + rxa9 - Administration Notes
# + rxa10 - Administering Provider
# + rxa11 - Administered-at Location
# + rxa12 - Administered Per (Time Unit)
# + rxa13 - Administered Strength
# + rxa14 - Administered Strength Units
# + rxa15 - Substance Lot Number
# + rxa16 - Substance Expiration Date
# + rxa17 - Substance Manufacturer Name
# + rxa18 - Substance Refusal Reason
# + rxa19 - Indication
# + rxa20 - Completion Status
# + rxa21 - Action Code-RXA
# + rxa22 - System Entry Date/Time
@hl7v2:SegmentDefinition {
    name: "RXA",
    required: false,
    maxReps: 0,
    fields: {
        "rxa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "rxa4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "rxa5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxa6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxa8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxa9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxa10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxa11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxa12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxa13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxa14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxa15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxa16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TS
        },
        "rxa17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxa18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxa19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxa20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxa22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        }
    }
}
public type RXA record {
    *hl7v2:Segment;
    string name = RXA_SEGMENT_NAME;
    NM rxa1 = "";
    NM rxa2 = "";
    TS rxa3 = {};
    TS rxa4 = {};
    CE rxa5 = {};
    NM rxa6 = "";
    CE rxa7 = {};
    CE rxa8 = {};
    CE[] rxa9 = [{}];
    XCN[] rxa10 = [{}];
    LA2 rxa11 = {};
    ST rxa12 = "";
    NM rxa13 = "";
    CE rxa14 = {};
    ST[] rxa15 = [""];
    TS[] rxa16 = [{}];
    CE[] rxa17 = [{}];
    CE[] rxa18 = [{}];
    CE[] rxa19 = [{}];
    ID rxa20 = "";
    ID rxa21 = "";
    TS rxa22 = {};
};

public const RXA_SEGMENT_NAME = "RXA";