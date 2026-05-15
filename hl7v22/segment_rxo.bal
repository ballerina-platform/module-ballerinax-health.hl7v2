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

# RXO segment. Pharmacy Prescription Order This is the "master" pharmacy order segment. It contains order data not specific to components or additives. Unlike the OBR, it does not contain status fields or other data that are results-only. It can be used for any type of pharmacy ...
# + name - Segment Name
# + rxo1 - Requested Give Code
# + rxo2 - Requested Give Amount - Minimum
# + rxo3 - Requested Give Amount - Maximum
# + rxo4 - Requested Give Units
# + rxo5 - Requested Dosage Form
# + rxo6 - Provider s Pharmacy Instructions
# + rxo7 - Provider s Administration Instructions
# + rxo8 - Deliver-to Location
# + rxo9 - Allow Substitutions
# + rxo10 - Requested Dispense Code
# + rxo11 - Requested Dispense Amount
# + rxo12 - Requested Dispense Units
# + rxo13 - Number Of Refills
# + rxo14 - Ordering Provider s Dea Number
# + rxo15 - Pharmacist Verifier Id
# + rxo16 - Needs Human Review
# + rxo17 - Requested Give Per (time Unit)

@hl7v2:SegmentDefinition {
    name: "RXO",
    required: false,
    maxReps: 0,
    fields: {
        "rxo1": {
            required: true,
            length: 100,
            maxReps: 1,
            dataType: CE
        },
        "rxo2": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxo3": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxo4": {
            required: true,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxo5": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxo6": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "rxo7": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "rxo8": {
            required: false,
            length: 12,
            maxReps: 1,
            dataType: CM_LA1
        },
        "rxo9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo10": {
            required: false,
            length: 100,
            maxReps: 1,
            dataType: CE
        },
        "rxo11": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "rxo12": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CE
        },
        "rxo13": {
            required: false,
            length: 3,
            maxReps: 1,
            dataType: NM
        },
        "rxo14": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "rxo15": {
            required: false,
            length: 60,
            maxReps: 1,
            dataType: CN_PERSON
        },
        "rxo16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo17": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        }

    }
}
public type RXO record {
    *hl7v2:Segment;
    string name = RXO_SEGMENT_NAME;
    CE rxo1 = {};
    NM rxo2 = "";
    NM rxo3 = "";
    CE rxo4 = {};
    CE rxo5 = {};
    CE[] rxo6 = [{}];
    CE[] rxo7 = [{}];
    CM_LA1 rxo8 = {};
    ID rxo9 = "";
    CE rxo10 = {};
    NM rxo11 = "";
    CE rxo12 = {};
    NM rxo13 = "";
    CN_PERSON rxo14 = {};
    CN_PERSON rxo15 = {};
    ID rxo16 = "";
    ST rxo17 = "";
};

public const RXO_SEGMENT_NAME = "RXO";
