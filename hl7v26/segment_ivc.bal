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
# + ivc1 - 1914EIHL7Provider Invoice Number
# + ivc2 - 1915EIHL7Payer Invoice Number
# + ivc3 - 1916EIHL7Contract/Agreement Number
# + ivc4 - 1917ISHL70553HL7Invoice Control
# + ivc5 - 1918ISHL70554HL7Invoice Reason
# + ivc6 - 1919ISHL70555HL7Invoice Type
# + ivc7 - 1920DTMHL7Invoice Date/Time
# + ivc8 - 1921CPHL7Invoice Amount
# + ivc9 - 1922STHL7Payment Terms
# + ivc10 - 1923XONHL7Provider Organization
# + ivc11 - 1924XONHL7Payer Organization
# + ivc12 - 1925XCNHL7Attention
# + ivc13 - 1926IDHL70136HL7Last Invoice Indicator
# + ivc14 - 1927DTMHL7Invoice Booking Period
# + ivc15 - 1928STHL7Origin
# + ivc16 - 1929CPHL7Invoice Fixed Amount
# + ivc17 - 1930CPHL7Special Costs
# + ivc18 - 1931CPHL7Amount for Doctors Treatment
# + ivc19 - 1932XCNHL7Responsible Physician
# + ivc20 - Kostenstelle
# + ivc21 - 1934CPHL7Invoice Prepaid Amount
# + ivc22 - 1935CPHL7Total Invoice Amount without Prepaid Amount
# + ivc23 - 1936CPHL7Total-Amount of VAT
# + ivc24 - 1937NMHL7VAT-Rates applied
# + ivc25 - 1938ISHL70556HL7Benefit Group
# + ivc26 - 2038STHL7Provider Tax ID
# + ivc27 - 2039STHL7Payer Tax ID
# + ivc28 - 2040ISHL70572HL7Provider Tax status
# + ivc29 - 2041ISHL70572HL7Payer Tax status
# + ivc30 - 2042STHL7Sales Tax ID
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
            dataType: IS
        },
        "ivc5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ivc6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
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
            dataType: IS
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
            dataType: IS
        },
        "ivc29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
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
    IS ivc4 = "";
    IS ivc5 = "";
    IS ivc6 = "";
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
    IS ivc25 = "";
    ST ivc26 = "";
    ST ivc27 = "";
    IS ivc28 = "";
    IS ivc29 = "";
    ST ivc30 = "";
};

public const IVC_SEGMENT_NAME = "IVC";