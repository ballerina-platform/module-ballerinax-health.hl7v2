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
# + itm1 - Item Identifier
# + itm2 - Item Description
# + itm3 - Item Status
# + itm4 - Item Type
# + itm5 - Item Category
# + itm6 - Subject to Expiration Indicator
# + itm7 - Manufacturer Identifier
# + itm8 - Manufacturer Name
# + itm9 - Manufacturer Catalog Number
# + itm10 - Manufacturer Labeler Identification Code
# + itm11 - Patient Chargeable Indicator
# + itm12 - Transaction Code
# + itm13 - Transaction amount - unit
# + itm14 - Stocked Item Indicator
# + itm15 - Supply Risk Codes
# + itm16 - Approving Regulatory Agency
# + itm17 - Latex Indicator
# + itm18 - Ruling Act
# + itm19 - Item Natural Account Code
# + itm20 - Approved To Buy Quantity
# + itm21 - Approved To Buy Price
# + itm22 - Taxable Item Indicator
# + itm23 - Freight Charge Indicator
# + itm24 - Item Set Indicator
# + itm25 - Item Set Identifier
# + itm26 - Track Department Usage Indicator
# + itm27 - Procedure Code
# + itm28 - Procedure Code Modifier
# + itm29 - Special Handling Code
@hl7v2:SegmentDefinition {
    name: "ITM",
    required: false,
    maxReps: 0,
    fields: {
        "itm1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "itm14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "itm17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "itm19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "itm21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "itm22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "itm29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type ITM record {
    *hl7v2:Segment;
    string name = ITM_SEGMENT_NAME;
    EI itm1 = {};
    ST itm2 = "";
    CWE itm3 = {};
    CWE itm4 = {};
    CWE itm5 = {};
    CNE itm6 = {};
    EI itm7 = {};
    ST itm8 = "";
    ST itm9 = "";
    CWE itm10 = {};
    CNE itm11 = {};
    CWE itm12 = {};
    CP itm13 = {};
    CNE itm14 = {};
    CWE itm15 = {};
    XON[] itm16 = [{}];
    CNE itm17 = {};
    CWE[] itm18 = [{}];
    CWE itm19 = {};
    NM itm20 = "";
    MO itm21 = {};
    CNE itm22 = {};
    CNE itm23 = {};
    CNE itm24 = {};
    EI itm25 = {};
    CNE itm26 = {};
    CNE itm27 = {};
    CNE[] itm28 = [{}];
    CWE itm29 = {};
};

public const ITM_SEGMENT_NAME = "ITM";