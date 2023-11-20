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
# + ft11 - Set ID - FT1
# + ft12 - Transaction ID
# + ft13 - Transaction Batch ID
# + ft14 - Transaction Date
# + ft15 - Transaction Posting Date
# + ft16 - Transaction Type
# + ft17 - Transaction Code
# + ft110 - Transaction Quantity
# + ft111 - Transaction Amount - Extended
# + ft112 - Transaction amount - unit
# + ft113 - Department Code
# + ft114 - Health Plan ID
# + ft115 - Insurance Amount
# + ft116 - Assigned Patient Location
# + ft117 - Fee Schedule
# + ft118 - Patient Type
# + ft119 - Diagnosis Code - FT1
# + ft120 - Performed By Code
# + ft121 - Ordered By Code
# + ft122 - Unit Cost
# + ft123 - Filler Order Number
# + ft124 - Entered By Code
# + ft125 - Procedure Code
# + ft126 - Procedure Code Modifier
# + ft127 - Advanced Beneficiary Notice Code
# + ft128 - Medically Necessary Duplicate Procedure Reason
# + ft129 - NDC Code
# + ft130 - Payment Reference ID
# + ft131 - Transaction Reference Key
# + ft132 - Performing Facility
# + ft133 - Ordering Facility
# + ft134 - Item Number
# + ft135 - Model Number
# + ft136 - Special Processing Code
# + ft137 - Clinic Code
# + ft138 - Referral Number
# + ft139 - Authorization Number
# + ft140 - Service Provider Taxonomy Code
# + ft141 - Revenue Code
# + ft142 - Prescription Number
# + ft143 - NDC Qty and UOM
@hl7v2:SegmentDefinition {
    name: "FT1",
    required: false,
    maxReps: 0,
    fields: {
        "ft11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ft12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "ft15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ft16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft17": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ft111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "ft117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "ft120": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "ft121": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "ft122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ft123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ft124": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "ft125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ft126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "ft127": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "ft131": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: SI
        },
        "ft132": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "ft133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "ft134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft136": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "ft137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "ft139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "ft140": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ft142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        }
    }
}
public type FT1 record {
    *hl7v2:Segment;
    string name = FT1_SEGMENT_NAME;
    SI ft11 = "";
    ST ft12 = "";
    ST ft13 = "";
    DR ft14 = {};
    DTM ft15 = "";
    CWE ft16 = {};
    CWE ft17 = {};
    NM ft110 = "";
    CP ft111 = {};
    CP ft112 = {};
    CWE ft113 = {};
    CWE ft114 = {};
    CP ft115 = {};
    PL ft116 = {};
    CWE ft117 = {};
    CWE ft118 = {};
    CWE[] ft119 = [{}];
    XCN[] ft120 = [{}];
    XCN[] ft121 = [{}];
    CP ft122 = {};
    EI ft123 = {};
    XCN[] ft124 = [{}];
    CNE ft125 = {};
    CNE[] ft126 = [{}];
    CWE ft127 = {};
    CWE ft128 = {};
    CWE ft129 = {};
    CX ft130 = {};
    SI[] ft131 = [""];
    XON[] ft132 = [{}];
    XON ft133 = {};
    CWE ft134 = {};
    ST ft135 = "";
    CWE[] ft136 = [{}];
    CWE ft137 = {};
    CX ft138 = {};
    CX ft139 = {};
    CWE ft140 = {};
    CWE ft141 = {};
    ST ft142 = "";
    CQ ft143 = {};
};

public const FT1_SEGMENT_NAME = "FT1";