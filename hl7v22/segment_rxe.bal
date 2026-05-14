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

# RXE segment. Pharmacy Encoded Order The RXE segment details the pharmacy application s encoding of the order. It also contains several pharmacyspecific order status fields, such as RXE-16-number of refills remaining, RXE-17-number of refills/doses dispensed, RXE-18-date/time o...
# + name - Segment Name
# + rxe1 - Quantity / Timing
# + rxe2 - Give Code
# + rxe3 - Give Amount - Minimum
# + rxe4 - Give Amount - Maximum
# + rxe5 - Give Units
# + rxe6 - Give Dosage Form
# + rxe7 - Provider s Administration Instructions
# + rxe8 - Deliver-to Location
# + rxe9 - Substitution Status
# + rxe10 - Dispense Amount
# + rxe11 - Dispense Units
# + rxe12 - Number Of Refills
# + rxe13 - Ordering Provider s Dea Number
# + rxe14 - Pharmacist Verifier Id
# + rxe15 - Prescription Number
# + rxe16 - Number Of Refills Remaining
# + rxe17 - Number Of Refills / Doses Dispensed
# + rxe18 - Date / Time Of Most Recent Refill Or Dose Dispensed
# + rxe19 - Total Daily Dose
# + rxe20 - Needs Human Review
# + rxe21 - Pharmacy Special Dispensing Instructions
# + rxe22 - Give Per (time Unit)
# + rxe23 - Give Rate Amount
# + rxe24 - Give Rate Units

@hl7v2:SegmentDefinition {
    name: "RXE",
    required: false,
    maxReps: 0,
    fields: {
        "rxe1": {
            required: true,
            length: 200,
            maxReps: 1,
            dataType: TQ
        },
        "rxe2": {
            required: true,
            length: 100,
            maxReps: 1,
            dataType: CE
        },
        "rxe3": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxe4": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxe5": {
            required: true,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxe6": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxe7": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "rxe8": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_LA1
        },
        "rxe9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe10": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxe11": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxe12": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: NM
        },
        "rxe13": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "rxe14": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "rxe15": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "rxe16": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxe17": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxe18": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "rxe19": {
            required: false,
            length: 10,
            maxReps: 1,
            dataType: CQ
        },
        "rxe20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe21": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "rxe22": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "rxe23": {
            required: false,
            length: 6,
            maxReps: 1,
            dataType: CE
        },
        "rxe24": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        }

    }
}
public type RXE record {
    *hl7v2:Segment;
    string name = RXE_SEGMENT_NAME;
    TQ rxe1 = {};
    CE rxe2 = {};
    NM rxe3 = "";
    NM rxe4 = "";
    CE rxe5 = {};
    CE rxe6 = {};
    CE[] rxe7 = [{}];
    CM_LA1 rxe8 = {};
    ID rxe9 = "";
    NM rxe10 = "";
    CE rxe11 = {};
    NM rxe12 = "";
    CN_PERSON rxe13 = {};
    CN_PERSON rxe14 = {};
    ST rxe15 = "";
    NM rxe16 = "";
    NM rxe17 = "";
    TS rxe18 = {};
    CQ rxe19 = {};
    ID rxe20 = "";
    CE[] rxe21 = [{}];
    ST rxe22 = "";
    CE rxe23 = {};
    CE rxe24 = {};
};

public const RXE_SEGMENT_NAME = "RXE";
