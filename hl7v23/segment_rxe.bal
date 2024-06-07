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
# + rxe1 - Quantity/Timing
# + rxe2 - Give Code
# + rxe3 - Give Amount - Minimum
# + rxe4 - Give Amount - Maximum
# + rxe5 - Give Units
# + rxe6 - Give Dosage Form
# + rxe7 - Provider's Administration Instructions
# + rxe8 - Deliver To Location
# + rxe9 - Substitution Status
# + rxe10 - Dispense Amount
# + rxe11 - Dispense Units
# + rxe12 - Number of Refills
# + rxe13 - Ordering Provider's DEA Number
# + rxe14 - Pharmacist/Treatment Supplier's Verifier ID
# + rxe15 - Prescription Number
# + rxe16 - Number of Refills Remaining
# + rxe17 - Number of Refills/Doses Dispensed
# + rxe18 - Date / time of most recent refill or dose dispensed
# + rxe19 - Total Daily Dose
# + rxe20 - Needs Human Review
# + rxe21 - Pharmacy/Treatment Supplier's Special Dispensing Instructions
# + rxe22 - Give Per (Time Unit)
# + rxe23 - Give Rate Amount
# + rxe24 - Give Rate Units
# + rxe25 - Give Strength
# + rxe26 - Give Strength Units
# + rxe27 - Give Indication
# + rxe28 - Dispense Package Size
# + rxe29 - Dispense Package Size Unit
# + rxe30 - Dispense Package Method
@hl7v2:SegmentDefinition {
    name: "RXE",
    required: false,
    maxReps: 0,
    fields: {
        "rxe1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "rxe2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxe8": {
            required: false,
            length: 1,
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
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "rxe14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "rxe15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "rxe19": {
            required: false,
            length: 1,
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
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxe22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxe28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
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
    XCN rxe13 = {};
    XCN rxe14 = {};
    ST rxe15 = "";
    NM rxe16 = "";
    NM rxe17 = "";
    TS rxe18 = {};
    CQ rxe19 = {};
    ID rxe20 = "";
    CE[] rxe21 = [{}];
    ST rxe22 = "";
    ST rxe23 = "";
    CE rxe24 = {};
    NM rxe25 = "";
    CE rxe26 = {};
    CE[] rxe27 = [{}];
    NM rxe28 = "";
    CE rxe29 = {};
    ID rxe30 = "";
};

public const RXE_SEGMENT_NAME = "RXE";
