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
# + ft18 - Transaction Description
# + ft19 - Transaction Description - Alt
# + ft110 - Transaction Quantity
# + ft111 - Transaction Amount - Extended
# + ft112 - Transaction Amount - Unit
# + ft113 - Department Code
# + ft114 - Insurance Plan ID
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
            dataType: TS
        },
        "ft15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "ft16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ft17": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "ft18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ft19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
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
            dataType: CE
        },
        "ft114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: IS
        },
        "ft118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ft119": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
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
            dataType: CE
        },
        "ft126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type FT1 record {
    *hl7v2:Segment;
    string name = FT1_SEGMENT_NAME;
    SI ft11 = "";
    ST ft12 = "";
    ST ft13 = "";
    TS ft14 = {};
    TS ft15 = {};
    IS ft16 = "";
    CE ft17 = {};
    ST ft18 = "";
    ST ft19 = "";
    NM ft110 = "";
    CP ft111 = {};
    CP ft112 = {};
    CE ft113 = {};
    CE ft114 = {};
    CP ft115 = {};
    PL ft116 = {};
    IS ft117 = "";
    IS ft118 = "";
    CE[] ft119 = [{}];
    XCN[] ft120 = [{}];
    XCN[] ft121 = [{}];
    CP ft122 = {};
    EI ft123 = {};
    XCN[] ft124 = [{}];
    CE ft125 = {};
    CE[] ft126 = [{}];
};

public const FT1_SEGMENT_NAME = "FT1";