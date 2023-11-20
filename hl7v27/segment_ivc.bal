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
# + ivc1 - Provider Invoice Number
# + ivc2 - Payer Invoice Number
# + ivc3 - Contract/Agreement Number
# + ivc4 - Invoice Control
# + ivc5 - Invoice Reason
# + ivc6 - Invoice Type
# + ivc7 - Invoice Date/Time
# + ivc8 - Invoice Amount
# + ivc9 - Payment Terms
# + ivc10 - Provider Organization
# + ivc11 - Payer Organization
# + ivc12 - Attention
# + ivc13 - Last Invoice Indicator
# + ivc14 - Invoice Booking Period
# + ivc15 - Origin
# + ivc16 - Invoice Fixed Amount
# + ivc17 - Special Costs
# + ivc18 - Amount for Doctors Treatment
# + ivc19 - Responsible Physician
# + ivc20 - Cost Center
# + ivc21 - Invoice Prepaid Amount
# + ivc22 - Total Invoice Amount without Prepaid Amount
# + ivc23 - Total-Amount of VAT
# + ivc24 - VAT-Rates applied
# + ivc25 - Benefit Group
# + ivc26 - Provider Tax ID
# + ivc27 - Payer Tax ID
# + ivc28 - Provider Tax Status
# + ivc29 - Payer Tax Status
# + ivc30 - Sales Tax ID
@hl7v2:SegmentDefinition {
    name: "IVC",
    required: false,
    maxReps: 0,
    fields: {
        "ivc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivc4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivc5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivc6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivc7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ivc8": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivc10": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "ivc11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "ivc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "ivc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ivc14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ivc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivc16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "ivc20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "ivc21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivc24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "ivc25": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivc26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivc27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivc28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivc29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivc30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type IVC record {
    *hl7v2:Segment;
    string name = IVC_SEGMENT_NAME;
    EI ivc1 = {};
    EI ivc2 = {};
    EI ivc3 = {};
    CWE ivc4 = {};
    CWE ivc5 = {};
    CWE ivc6 = {};
    DTM ivc7 = "";
    CP ivc8 = {};
    ST ivc9 = "";
    XON ivc10 = {};
    XON ivc11 = {};
    XCN ivc12 = {};
    ID ivc13 = "";
    DTM ivc14 = "";
    ST ivc15 = "";
    CP ivc16 = {};
    CP ivc17 = {};
    CP ivc18 = {};
    XCN ivc19 = {};
    CX ivc20 = {};
    CP ivc21 = {};
    CP ivc22 = {};
    CP ivc23 = {};
    NM[] ivc24 = [""];
    CWE ivc25 = {};
    ST ivc26 = "";
    ST ivc27 = "";
    CWE ivc28 = {};
    CWE ivc29 = {};
    ST ivc30 = "";
};

public const IVC_SEGMENT_NAME = "IVC";