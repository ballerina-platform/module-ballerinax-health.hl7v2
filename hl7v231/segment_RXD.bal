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
# + rxd1 - Dispense Sub-ID Counter
# + rxd2 - Dispense/Give Code
# + rxd3 - Date/Time Dispensed
# + rxd4 - Actual Dispense Amount
# + rxd5 - Actual Dispense Units
# + rxd6 - Actual Dosage Form
# + rxd7 - Prescription Number
# + rxd8 - Number of Refills Remaining
# + rxd9 - Dispense Notes
# + rxd10 - Dispensing Provider
# + rxd11 - Substitution Status
# + rxd12 - Total Daily Dose
# + rxd13 - Dispense-To Location
# + rxd14 - Needs Human Review
# + rxd15 - Pharmacy/Treatment Supplier’s Special Dispensing Instructions
# + rxd16 - Actual Strength
# + rxd17 - Actual Strength Unit
# + rxd18 - Substance Lot Number
# + rxd19 - Substance Expiration Date
# + rxd20 - Substance Manufacturer Name
# + rxd21 - Indication
# + rxd22 - Dispense Package Size
# + rxd23 - Dispense Package Size Unit
# + rxd24 - Dispense Package Method
@hl7v2:SegmentDefinition {
    name: "RXD",
    required: false,
    maxReps: 0,
    fields: {
        "rxd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxd3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "rxd4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxd7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxd10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxd11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxd13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxd16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxd18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxd19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TS
        },
        "rxd20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxd21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxd22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxd24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
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
    ST rxd7 = "";
    NM rxd8 = "";
    ST[] rxd9 = [""];
    XCN[] rxd10 = [{}];
    ID rxd11 = "";
    CQ rxd12 = {};
    LA2 rxd13 = {};
    ID rxd14 = "";
    CE[] rxd15 = [{}];
    NM rxd16 = "";
    CE rxd17 = {};
    ST[] rxd18 = [""];
    TS[] rxd19 = [{}];
    CE[] rxd20 = [{}];
    CE[] rxd21 = [{}];
    NM rxd22 = "";
    CE rxd23 = {};
    ID rxd24 = "";
};

public const RXD_SEGMENT_NAME = "RXD";