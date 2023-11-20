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
# + rxo1 - Requested Give Code
# + rxo2 - Requested Give Amount - Minimum
# + rxo3 - Requested Give Amount - Maximum
# + rxo4 - Requested Give Units
# + rxo5 - Requested Dosage Form
# + rxo6 - Provider's Pharmacy/Treatment Instructions
# + rxo7 - Provider's Administration Instructions
# + rxo8 - Deliver-to Location
# + rxo9 - Allow Substitutions
# + rxo10 - Requested Dispense Code
# + rxo11 - Requested Dispense Amount
# + rxo12 - Requested Dispense Units
# + rxo13 - Number Of Refills
# + rxo14 - Ordering Provider's DEA Number
# + rxo15 - Pharmacist/Treatment Supplier's Verifier ID
# + rxo16 - Needs Human Review
# + rxo17 - Requested Give Per (Time Unit)
# + rxo18 - Requested Give Strength
# + rxo19 - Requested Give Strength Units
# + rxo20 - Indication
# + rxo21 - Requested Give Rate Amount
# + rxo22 - Requested Give Rate Units
# + rxo23 - Total Daily Dose
# + rxo24 - Supplementary Code
# + rxo25 - Requested Drug Strength Volume
# + rxo26 - Requested Drug Strength Volume Units
# + rxo27 - Pharmacy Order Type
# + rxo28 - Dispensing Interval
# + rxo29 - Medication Instance Identifier
# + rxo30 - Segment Instance Identifier
# + rxo31 - Mood Code
# + rxo32 - Dispensing Pharmacy
# + rxo33 - Dispensing Pharmacy Address
# + rxo34 - Deliver-to Patient Location
# + rxo35 - Deliver-to Address
# + rxo36 - Pharmacy Phone Number
@hl7v2:SegmentDefinition {
    name: "RXO",
    required: false,
    maxReps: 0,
    fields: {
        "rxo1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA1
        },
        "rxo9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxo15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxo16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxo18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxo22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxo24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxo25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxo28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxo29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rxo30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rxo31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "rxo32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxo33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxo34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "rxo35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxo36": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type RXO record {
    *hl7v2:Segment;
    string name = RXO_SEGMENT_NAME;
    CWE rxo1 = {};
    NM rxo2 = "";
    NM rxo3 = "";
    CWE rxo4 = {};
    CWE rxo5 = {};
    CWE[] rxo6 = [{}];
    CWE[] rxo7 = [{}];
    LA1 rxo8 = {};
    ID rxo9 = "";
    CWE rxo10 = {};
    NM rxo11 = "";
    CWE rxo12 = {};
    NM rxo13 = "";
    XCN[] rxo14 = [{}];
    XCN[] rxo15 = [{}];
    ID rxo16 = "";
    ST rxo17 = "";
    NM rxo18 = "";
    CWE rxo19 = {};
    CWE[] rxo20 = [{}];
    ST rxo21 = "";
    CWE rxo22 = {};
    CQ rxo23 = {};
    CWE[] rxo24 = [{}];
    NM rxo25 = "";
    CWE rxo26 = {};
    ID rxo27 = "";
    NM rxo28 = "";
    EI rxo29 = {};
    EI rxo30 = {};
    CNE rxo31 = {};
    CWE rxo32 = {};
    XAD rxo33 = {};
    PL rxo34 = {};
    XAD rxo35 = {};
    XTN[] rxo36 = [{}];
};

public const RXO_SEGMENT_NAME = "RXO";