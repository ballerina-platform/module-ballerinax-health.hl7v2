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
# + psl1 - Provider Product/Service Line Item Number
# + psl2 - Payer Product/Service Line Item Number
# + psl3 - Product/Service Line Item Sequence Number
# + psl4 - Provider Tracking ID
# + psl5 - Payer Tracking ID
# + psl6 - Product/Service Line Item Status
# + psl7 - Product/Service Code
# + psl8 - Product/Service Code Modifier
# + psl9 - Product/Service Code Description
# + psl10 - Product/Service Effective Date
# + psl11 - Product/Service Expiration Date
# + psl12 - Product/Service Quantity
# + psl13 - Product/Service Unit Cost
# + psl14 - Number of Items per Unit
# + psl15 - Product/Service Gross Amount
# + psl16 - Product/Service Billed Amount
# + psl17 - Product/Service Clarification Code Type
# + psl18 - Product/Service Clarification Code Value
# + psl19 - Health Document Reference Identifier
# + psl20 - Processing Consideration Code
# + psl21 - Restricted Disclosure Indicator
# + psl22 - Related Product/Service Code Indicator
# + psl23 - Product/Service Amount for Physician
# + psl24 - Product/Service Cost Factor
# + psl25 - Cost Center
# + psl26 - Billing Period
# + psl27 - Days without Billing
# + psl28 - Session-No
# + psl29 - Executing Physician ID
# + psl30 - Responsible Physician ID
# + psl31 - Role Executing Physician
# + psl32 - Medical Role Executing Physician
# + psl33 - Side of body
# + psl34 - Number of TP's PP
# + psl35 - TP-Value PP
# + psl36 - Internal Scaling Factor PP
# + psl37 - External Scaling Factor PP
# + psl38 - Amount PP
# + psl39 - Number of TP's Technical Part
# + psl40 - TP-Value Technical Part
# + psl41 - Internal Scaling Factor Technical Part
# + psl42 - External Scaling Factor Technical Part
# + psl43 - Amount Technical Part
# + psl44 - Total Amount Professional Part + Technical Part
# + psl45 - VAT-Rate
# + psl46 - Main-Service
# + psl47 - Validation
# + psl48 - Comment
@hl7v2:SegmentDefinition {
    name: "PSL",
    required: false,
    maxReps: 0,
    fields: {
        "psl1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "psl4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl8": {
            required: false,
            length: 1,
            maxReps: 5,
            dataType: CWE
        },
        "psl9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psl10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psl11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psl12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psl13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl17": {
            required: false,
            length: 1,
            maxReps: 20,
            dataType: CWE
        },
        "psl18": {
            required: false,
            length: 1,
            maxReps: 20,
            dataType: ST
        },
        "psl19": {
            required: false,
            length: 1,
            maxReps: 5,
            dataType: EI
        },
        "psl20": {
            required: false,
            length: 1,
            maxReps: 20,
            dataType: CWE
        },
        "psl21": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psl22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "psl26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "psl27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "psl30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "psl31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl39": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl43": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl45": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl46": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psl47": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psl48": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type PSL record {
    *hl7v2:Segment;
    string name = PSL_SEGMENT_NAME;
    EI psl1 = {};
    EI psl2 = {};
    SI psl3 = "";
    EI psl4 = {};
    EI psl5 = {};
    CWE psl6 = {};
    CWE psl7 = {};
    CWE psl8 = {};
    ST psl9 = "";
    DTM psl10 = "";
    DTM psl11 = "";
    CQ psl12 = {};
    CP psl13 = {};
    NM psl14 = "";
    CP psl15 = {};
    CP psl16 = {};
    CWE psl17 = {};
    ST psl18 = "";
    EI psl19 = {};
    CWE psl20 = {};
    ID psl21 = "";
    CWE psl22 = {};
    CP psl23 = {};
    NM psl24 = "";
    CX psl25 = {};
    DR psl26 = {};
    NM psl27 = "";
    NM psl28 = "";
    XCN psl29 = {};
    XCN psl30 = {};
    CWE psl31 = {};
    CWE psl32 = {};
    CWE psl33 = {};
    NM psl34 = "";
    CP psl35 = {};
    NM psl36 = "";
    NM psl37 = "";
    CP psl38 = {};
    NM psl39 = "";
    CP psl40 = {};
    NM psl41 = "";
    NM psl42 = "";
    CP psl43 = {};
    CP psl44 = {};
    NM psl45 = "";
    ID psl46 = "";
    ID psl47 = "";
    ST psl48 = "";
};

public const PSL_SEGMENT_NAME = "PSL";