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
# + drg1 - Diagnostic Related Group
# + drg2 - DRG Assigned Date/Time
# + drg3 - DRG Approval Indicator
# + drg4 - DRG Grouper Review Code
# + drg5 - Outlier Type
# + drg6 - Outlier Days
# + drg7 - Outlier Cost
# + drg8 - DRG Payor
# + drg9 - Outlier Reimbursement
# + drg10 - Confidential Indicator
# + drg11 - DRG Transfer Type
# + drg12 - Name of Coder
# + drg13 - Grouper Status
# + drg14 - PCCL Value Code
# + drg15 - Effective Weight
# + drg16 - Monetary Amount
# + drg17 - Status Patient
# + drg18 - Grouper Software Name
# + drg19 - Grouper Software Version
# + drg20 - Status Financial Calculation
# + drg21 - Relative Discount/Surcharge
# + drg22 - Basic Charge
# + drg23 - Total Charge
# + drg24 - Discount/Surcharge
# + drg25 - Calculated Days
# + drg26 - Status Gender
# + drg27 - Status Age
# + drg28 - Status Length of Stay
# + drg29 - Status Same Day Flag
# + drg30 - Status Separation Mode
# + drg31 - Status Weight at Birth
# + drg32 - Status Respiration Minutes
# + drg33 - Status Admission
@hl7v2:SegmentDefinition {
    name: "DRG",
    required: false,
    maxReps: 0,
    fields: {
        "drg1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "drg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "drg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "drg4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "drg8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "drg10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "drg11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XPN
        },
        "drg13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "drg19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "drg20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "drg25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "drg26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "drg33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type DRG record {
    *hl7v2:Segment;
    string name = DRG_SEGMENT_NAME;
    CNE drg1 = {};
    DTM drg2 = "";
    ID drg3 = "";
    CWE drg4 = {};
    CWE drg5 = {};
    NM drg6 = "";
    CP drg7 = {};
    CWE drg8 = {};
    CP drg9 = {};
    ID drg10 = "";
    CWE drg11 = {};
    XPN drg12 = {};
    CWE drg13 = {};
    CWE drg14 = {};
    NM drg15 = "";
    MO drg16 = {};
    CWE drg17 = {};
    ST drg18 = "";
    ST drg19 = "";
    CWE drg20 = {};
    MO drg21 = {};
    MO drg22 = {};
    MO drg23 = {};
    MO drg24 = {};
    NM drg25 = "";
    CWE drg26 = {};
    CWE drg27 = {};
    CWE drg28 = {};
    CWE drg29 = {};
    CWE drg30 = {};
    CWE drg31 = {};
    CWE drg32 = {};
    CWE drg33 = {};
};

public const DRG_SEGMENT_NAME = "DRG";