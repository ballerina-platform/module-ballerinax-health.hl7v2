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
# + in31 - Set ID - IN3
# + in32 - Certification Number
# + in33 - Certified By
# + in34 - Certification Required
# + in35 - Penalty
# + in36 - Certification Date/Time
# + in37 - Certification Modify Date/Time
# + in38 - Operator
# + in39 - Certification Begin Date
# + in310 - Certification End Date
# + in311 - Days
# + in312 - Non-Concur Code/Description
# + in313 - Non-Concur Effective Date/Time
# + in314 - Physician Reviewer
# + in315 - Certification Contact
# + in316 - Certification Contact Phone Number
# + in317 - Appeal Reason
# + in318 - Certification Agency
# + in319 - Certification Agency Phone Number
# + in320 - Pre-Certification Requirement
# + in321 - Case Manager
# + in322 - Second Opinion Date
# + in323 - Second Opinion Status
# + in324 - Second Opinion Documentation Received
# + in325 - Second Opinion Physician
@hl7v2:SegmentDefinition {
    name: "IN3",
    required: false,
    maxReps: 0,
    fields: {
        "in31": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "in32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "in33": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MOP
        },
        "in36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "in37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "in38": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in39": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in310": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in311": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTN
        },
        "in312": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in313": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "in314": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in315": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in316": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in317": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in318": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "in319": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in320": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ICD
        },
        "in321": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in322": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in323": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "in324": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: IS
        },
        "in325": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        }
    }
}
public type IN3 record {
    *hl7v2:Segment;
    string name = IN3_SEGMENT_NAME;
    SI in31 = "";
    CX in32 = {};
    XCN[] in33 = [{}];
    ID in34 = "";
    MOP in35 = {};
    TS in36 = {};
    TS in37 = {};
    XCN[] in38 = [{}];
    DT in39 = "";
    DT in310 = "";
    DTN in311 = {};
    CE in312 = {};
    TS in313 = {};
    XCN[] in314 = [{}];
    ST in315 = "";
    XTN[] in316 = [{}];
    CE in317 = {};
    CE in318 = {};
    XTN[] in319 = [{}];
    ICD[] in320 = [{}];
    ST in321 = "";
    DT in322 = "";
    IS in323 = "";
    IS[] in324 = [""];
    XCN[] in325 = [{}];
};

public const IN3_SEGMENT_NAME = "IN3";