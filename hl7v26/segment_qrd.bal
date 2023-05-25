
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
# + qrd1 - Segment Record Field
# + qrd2 - Segment Record Field
# + qrd3 - Segment Record Field
# + qrd4 - Segment Record Field
# + qrd5 - Segment Record Field
# + qrd6 - Segment Record Field
# + qrd7 - Segment Record Field
# + qrd8 - Segment Record Field
# + qrd9 - Segment Record Field
# + qrd10 - Segment Record Field
# + qrd11 - Segment Record Field
# + qrd12 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "QRD",
    required: false,
    maxReps: 0,
    fields: {
        "qrd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "qrd2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "qrd3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "qrd4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "qrd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "qrd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "qrd7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "qrd8": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "qrd9": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "qrd10": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "qrd11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: VR
        },
        "qrd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type QRD record {
    *hl7v2:Segment;
    string name = QRD_SEGMENT_NAME;
    DTM qrd1 = "";
    ID qrd2 = "";
    ID qrd3 = "";
    ST qrd4 = "";
    ID qrd5 = "";
    DTM qrd6 = "";
    CQ qrd7 = {};
    XCN[] qrd8 = [{}];
    CWE[] qrd9 = [{}];
    CWE[] qrd10 = [{}];
    VR[] qrd11 = [{}];
    ID qrd12 = "";
};

public const QRD_SEGMENT_NAME = "QRD";