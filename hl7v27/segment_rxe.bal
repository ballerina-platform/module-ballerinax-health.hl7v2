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
# + rxe2 - Give Code
# + rxe3 - Give Amount - Minimum
# + rxe4 - Give Amount - Maximum
# + rxe5 - Give Units
# + rxe6 - Give Dosage Form
# + rxe7 - Provider's Administration Instructions
# + rxe9 - Substitution Status
# + rxe10 - Dispense Amount
# + rxe11 - Dispense Units
# + rxe12 - Number Of Refills
# + rxe13 - Ordering Provider's DEA Number
# + rxe14 - Pharmacist/Treatment Supplier's Verifier ID
# + rxe15 - Prescription Number
# + rxe16 - Number of Refills Remaining
# + rxe17 - Number of Refills/Doses Dispensed
# + rxe18 - D/T of Most Recent Refill or Dose Dispensed
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
# + rxe31 - Supplementary Code
# + rxe32 - Original Order Date/Time
# + rxe33 - Give Drug Strength Volume
# + rxe34 - Give Drug Strength Volume Units
# + rxe35 - Controlled Substance Schedule
# + rxe36 - Formulary Status
# + rxe37 - Pharmaceutical Substance Alternative
# + rxe38 - Pharmacy of Most Recent Fill
# + rxe39 - Initial Dispense Amount
# + rxe40 - Dispensing Pharmacy
# + rxe41 - Dispensing Pharmacy Address
# + rxe42 - Deliver-to Patient Location
# + rxe43 - Deliver-to Address
# + rxe44 - Pharmacy Order Type
# + rxe45 - Pharmacy Phone Number
@hl7v2:SegmentDefinition {
    name: "RXE",
    required: false,
    maxReps: 0,
    fields: {
        "rxe2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
        },
        "rxe6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
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
            dataType: CWE
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
            maxReps: -1,
            dataType: XCN
        },
        "rxe14": {
            required: false,
            length: 1,
            maxReps: -1,
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
            dataType: DTM
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
            dataType: CWE
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
            dataType: CWE
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
            dataType: CWE
        },
        "rxe27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
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
            dataType: CWE
        },
        "rxe30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe31": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxe33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe37": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxe38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe39": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxe41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxe42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxe43": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxe44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe45": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type RXE record {
    *hl7v2:Segment;
    string name = RXE_SEGMENT_NAME;
    CWE rxe2 = {};
    NM rxe3 = "";
    NM rxe4 = "";
    CWE rxe5 = {};
    CWE rxe6 = {};
    CWE[] rxe7 = [{}];
    ID rxe9 = "";
    NM rxe10 = "";
    CWE rxe11 = {};
    NM rxe12 = "";
    XCN[] rxe13 = [{}];
    XCN[] rxe14 = [{}];
    ST rxe15 = "";
    NM rxe16 = "";
    NM rxe17 = "";
    DTM rxe18 = "";
    CQ rxe19 = {};
    ID rxe20 = "";
    CWE[] rxe21 = [{}];
    ST rxe22 = "";
    ST rxe23 = "";
    CWE rxe24 = {};
    NM rxe25 = "";
    CWE rxe26 = {};
    CWE[] rxe27 = [{}];
    NM rxe28 = "";
    CWE rxe29 = {};
    ID rxe30 = "";
    CWE[] rxe31 = [{}];
    DTM rxe32 = "";
    NM rxe33 = "";
    CWE rxe34 = {};
    CWE rxe35 = {};
    ID rxe36 = "";
    CWE[] rxe37 = [{}];
    CWE rxe38 = {};
    NM rxe39 = "";
    CWE rxe40 = {};
    XAD rxe41 = {};
    PL rxe42 = {};
    XAD rxe43 = {};
    ID rxe44 = "";
    XTN[] rxe45 = [{}];
};

public const RXE_SEGMENT_NAME = "RXE";