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
# + rxg1 - Give Sub-ID Counter
# + rxg2 - Dispense Sub-ID Counter
# + rxg3 - Quantity/Timing
# + rxg4 - Give Code
# + rxg5 - Give Amount - Minimum
# + rxg6 - Give Amount - Maximum
# + rxg7 - Give Units
# + rxg8 - Give Dosage Form
# + rxg9 - Administration Notes
# + rxg10 - Substitution Status
# + rxg11 - Dispense-To Location
# + rxg12 - Needs Human Review
# + rxg13 - Pharmacy/Treatment Supplier's Special Administration Instructions
# + rxg14 - Give Per (Time Unit)
# + rxg15 - Give Rate Amount
# + rxg16 - Give Rate Units
# + rxg17 - Give Strength
# + rxg18 - Give Strength Units
# + rxg19 - Substance Lot Number
# + rxg20 - Substance Expiration Date
# + rxg21 - Substance Manufacturer Name
# + rxg22 - Indication
@hl7v2:SegmentDefinition {
    name: "RXG",
    required: false,
    maxReps: 0,
    fields: {
        "rxg1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "rxg4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxg5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxg8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxg9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxg10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxg11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxg12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxg13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxg14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxg16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxg17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxg18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxg19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxg20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TS
        },
        "rxg21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxg22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type RXG record {
    *hl7v2:Segment;
    string name = RXG_SEGMENT_NAME;
    NM rxg1 = "";
    NM rxg2 = "";
    TQ rxg3 = {};
    CE rxg4 = {};
    NM rxg5 = "";
    NM rxg6 = "";
    CE rxg7 = {};
    CE rxg8 = {};
    CE[] rxg9 = [{}];
    ID rxg10 = "";
    LA2 rxg11 = {};
    ID rxg12 = "";
    CE[] rxg13 = [{}];
    ST rxg14 = "";
    ST rxg15 = "";
    CE rxg16 = {};
    NM rxg17 = "";
    CE rxg18 = {};
    ST[] rxg19 = [""];
    TS[] rxg20 = [{}];
    CE[] rxg21 = [{}];
    CE[] rxg22 = [{}];
};

public const RXG_SEGMENT_NAME = "RXG";