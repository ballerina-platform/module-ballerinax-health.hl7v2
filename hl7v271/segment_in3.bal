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
# + in31 - IN3-Segmentnummer
# + in32 - 503CXHL7Certification Number
# + in33 - 504XCNHL7Certified By
# + in34 - 505IDHL70136HL7Certification Required
# + in35 - 506MOPHL7Penalty
# + in36 - 507DTMHL7Certification Date/Time
# + in37 - 508DTMHL7Certification Modify Date/Time
# + in38 - 509XCNHL7Operator
# + in39 - 510DTHL7Certification Begin Date
# + in310 - 511DTHL7Certification End Date
# + in311 - 512DTNHL7Days
# + in312 - 513CWEHL70233HL7Non-Concur Code/Description
# + in313 - 514DTMHL7Non-Concur Effective Date/Time
# + in314 - 515XCNHL70010HL7Physician Reviewer
# + in315 - 516STHL7Certification Contact
# + in316 - 517XTNHL7Certification Contact Phone Number
# + in317 - 518CWEHL70345HL7Appeal Reason
# + in318 - 519CWEHL70346HL7Certification Agency
# + in319 - 520XTNHL7Certification Agency Phone Number
# + in320 - 521ICDHL7Pre-Certification Requirement
# + in321 - 522STHL7Case Manager
# + in322 - 523DTHL7Second Opinion Date
# + in323 - 524CWEHL70151HL7Second Opinion Status
# + in324 - 525CWEHL70152HL7Second Opinion Documentation Received
# + in325 - 526XCNHL70010HL7Second Opinion Physician
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
            dataType: DTM
        },
        "in37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
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
            dataType: CWE
        },
        "in313": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
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
            dataType: CWE
        },
        "in318": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
        },
        "in324": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
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
    DTM in36 = "";
    DTM in37 = "";
    XCN[] in38 = [{}];
    DT in39 = "";
    DT in310 = "";
    DTN in311 = {};
    CWE in312 = {};
    DTM in313 = "";
    XCN[] in314 = [{}];
    ST in315 = "";
    XTN[] in316 = [{}];
    CWE in317 = {};
    CWE in318 = {};
    XTN[] in319 = [{}];
    ICD[] in320 = [{}];
    ST in321 = "";
    DT in322 = "";
    CWE in323 = {};
    CWE[] in324 = [{}];
    XCN[] in325 = [{}];
};

public const IN3_SEGMENT_NAME = "IN3";