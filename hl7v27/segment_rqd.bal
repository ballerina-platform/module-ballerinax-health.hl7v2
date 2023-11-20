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
# + rqd1 - Requisition Line Number
# + rqd2 - Item Code - Internal
# + rqd3 - Item Code - External
# + rqd4 - Hospital Item Code
# + rqd5 - Requisition Quantity
# + rqd6 - Requisition Unit of Measure
# + rqd7 - Cost Center Account Number
# + rqd8 - Item Natural Account Code
# + rqd9 - Deliver To ID
# + rqd10 - Date Needed
@hl7v2:SegmentDefinition {
    name: "RQD",
    required: false,
    maxReps: 0,
    fields: {
        "rqd1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "rqd2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rqd3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rqd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rqd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rqd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rqd7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "rqd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rqd9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rqd10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type RQD record {
    *hl7v2:Segment;
    string name = RQD_SEGMENT_NAME;
    SI rqd1 = "";
    CWE rqd2 = {};
    CWE rqd3 = {};
    CWE rqd4 = {};
    NM rqd5 = "";
    CWE rqd6 = {};
    CX rqd7 = {};
    CWE rqd8 = {};
    CWE rqd9 = {};
    DT rqd10 = "";
};

public const RQD_SEGMENT_NAME = "RQD";