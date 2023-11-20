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
# + qrf1 - Where Subject Filter
# + qrf2 - When Data Start Date/Time
# + qrf3 - When Data End Date/Time
# + qrf4 - What User Qualifier
# + qrf5 - Other QRY Subject Filter
# + qrf6 - Which Date/Time Qualifier
# + qrf7 - Which Date/Time Status Qualifier
# + qrf8 - Date/Time Selection Qualifier
# + qrf9 - When Quantity/Timing Qualifier
@hl7v2:SegmentDefinition {
    name: "QRF",
    required: false,
    maxReps: 0,
    fields: {
        "qrf1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "qrf2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "qrf3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "qrf4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "qrf5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "qrf6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "qrf7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "qrf8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "qrf9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        }
    }
}
public type QRF record {
    *hl7v2:Segment;
    string name = QRF_SEGMENT_NAME;
    ST[] qrf1 = [""];
    TS qrf2 = {};
    TS qrf3 = {};
    ST[] qrf4 = [""];
    ST[] qrf5 = [""];
    ID[] qrf6 = [""];
    ID[] qrf7 = [""];
    ID[] qrf8 = [""];
    TQ qrf9 = {};
};

public const QRF_SEGMENT_NAME = "QRF";