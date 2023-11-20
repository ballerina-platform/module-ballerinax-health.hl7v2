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
# + in32 - nicht verwendet
# + in33 - nicht verwendet
# + in34 - nicht verwendet
# + in35 - nicht verwendet
# + in36 - nicht verwendet
# + in37 - nicht verwendet
# + in38 - nicht verwendet
# + in39 - nicht verwendet
# + in310 - nicht verwendet
# + in311 - nicht verwendet
# + in312 - nicht verwendet
# + in313 - nicht verwendet
# + in314 - nicht verwendet
# + in315 - nicht verwendet
# + in316 - nicht verwendet
# + in317 - nicht verwendet
# + in318 - nicht verwendet
# + in319 - nicht verwendet
# + in320 - nicht verwendet
# + in321 - nicht verwendet
# + in322 - nicht verwendet
# + in323 - nicht verwendet
# + in324 - nicht verwendet
# + in325 - nicht verwendet
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