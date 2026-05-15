// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# MSH segment. Message Header The MSH segment defines the intent, source, destination, and some specifics of the syntax of a message. Note: If MSH-15 and MSH-16 are omitted (or are both null), the original Acknowledgement Mode rules are used.
# + name - Segment Name
# + msh1 - Field Separator
# + msh2 - Encoding Characters
# + msh3 - Sending Application
# + msh4 - Sending Facility
# + msh5 - Receiving Application
# + msh6 - Receiving Facility
# + msh7 - Date / Time Of Message
# + msh8 - Security
# + msh9 - Message Type
# + msh10 - Message Control Id
# + msh11 - Processing Id
# + msh12 - Version Id
# + msh13 - Sequence Number
# + msh14 - Continuation Pointer
# + msh15 - Accept Acknowledgement Type
# + msh16 - Application Acknowledgement Type
# + msh17 - Country Code

@hl7v2:SegmentDefinition {
    name: "MSH",
    required: false,
    maxReps: 0,
    fields: {
        "msh1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh2": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: ST
        },
        "msh3": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: ST
        },
        "msh4": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "msh5": {
            required: false,
            length: 30,
            maxReps: 1,
            dataType: ST
        },
        "msh6": {
            required: false,
            length: 30,
            maxReps: 1,
            dataType: ST
        },
        "msh7": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "msh8": {
            required: false,
            length: 40,
            maxReps: 1,
            dataType: ST
        },
        "msh9": {
            required: true,
            length: 7,
            maxReps: 1,
            dataType: CM_MSG
        },
        "msh10": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "msh11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh12": {
            required: true,
            length: 8,
            maxReps: 1,
            dataType: ID
        },
        "msh13": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: NM
        },
        "msh14": {
            required: false,
            length: 180,
            maxReps: 1,
            dataType: ST
        },
        "msh15": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "msh16": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "msh17": {
            required: false,
            length: 2,
            maxReps: 1,
            dataType: ID
        }

    }
}
public type MSH record {
    *hl7v2:Segment;
    string name = MSH_SEGMENT_NAME;
    ST msh1 = "";
    ST msh2 = "";
    ST msh3 = "";
    ST msh4 = "";
    ST msh5 = "";
    ST msh6 = "";
    TS msh7 = {};
    ST msh8 = "";
    CM_MSG msh9 = {};
    ST msh10 = "";
    ID msh11 = "";
    ID msh12 = "";
    NM msh13 = "";
    ST msh14 = "";
    ID msh15 = "";
    ID msh16 = "";
    ID msh17 = "";
};

public const MSH_SEGMENT_NAME = "MSH";
