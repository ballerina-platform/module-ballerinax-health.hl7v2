// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# RXD segment. Pharmacy Dispense
# + name - Segment Name
# + rxd1 - Dispense Sub-id Counter
# + rxd2 - Dispense / Give Code
# + rxd3 - Date / Time Dispensed
# + rxd4 - Actual Dispense Amount
# + rxd5 - Actual Dispense Units
# + rxd6 - Actual Dosage Form
# + rxd7 - Prescription Number
# + rxd8 - Number Of Refills Remaining
# + rxd9 - Dispense Notes
# + rxd10 - Dispensing Provider
# + rxd11 - Substitution Status
# + rxd12 - Total Daily Dose
# + rxd13 - Dispense-to location
# + rxd14 - Needs Human Review
# + rxd15 - Pharmacy Special Dispensing Instructions

@hl7v2:SegmentDefinition {
    name: "RXD",
    required: false,
    maxReps: 0,
    fields: {
        "rxd1": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "rxd2": {
            required: true,
            length: 100,
            maxReps: 1,
            dataType: CE
        },
        "rxd3": {
            required: true,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "rxd4": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxd5": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxd6": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxd7": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxd8": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxd9": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: ST
        },
        "rxd10": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "rxd11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd12": {
            required: false,
            length: 10,
            maxReps: 1,
            dataType: NM
        },
        "rxd13": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_LA1
        },
        "rxd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd15": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        }

    }
}
public type RXD record {
    *hl7v2:Segment;
    string name = RXD_SEGMENT_NAME;
    NM rxd1 = "";
    CE rxd2 = {};
    TS rxd3 = {};
    NM rxd4 = "";
    CE rxd5 = {};
    CE rxd6 = {};
    NM rxd7 = "";
    NM rxd8 = "";
    ST[] rxd9 = [""];
    CN_PERSON rxd10 = {};
    ID rxd11 = "";
    NM rxd12 = "";
    CM_LA1 rxd13 = {};
    ID rxd14 = "";
    CE[] rxd15 = [{}];
};

public const RXD_SEGMENT_NAME = "RXD";
