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
# + msh1 - Field Separator
# + msh2 - Encoding Characters
# + msh3 - Sending Application
# + msh4 - Sending Facility
# + msh5 - Receiving Application
# + msh6 - Receiving Facility
# + msh7 - Date / Time of Message
# + msh8 - Security
# + msh9 - Message Type
# + msh10 - Message Control ID
# + msh11 - Processing ID
# + msh12 - Version ID
# + msh13 - Sequence Number
# + msh14 - Continuation Pointer
# + msh15 - Accept Acknowledgement Type
# + msh16 - Application Acknowledgement Type
# + msh17 - Country Code
# + msh18 - Character Set
# + msh19 - Principal Language of Message
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
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "msh8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh9": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CM_MSG
        },
        "msh10": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PT
        },
        "msh12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "msh14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "msh19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type MSH record {
    *hl7v2:Segment;
    string name = MSH_SEGMENT_NAME;
    ST msh1 = "";
    ST msh2 = "";
    HD msh3 = {};
    HD msh4 = {};
    HD msh5 = {};
    HD msh6 = {};
    TS msh7 = {};
    ST msh8 = "";
    CM_MSG msh9 = {};
    ST msh10 = "";
    PT msh11 = {};
    ID msh12 = "";
    NM msh13 = "";
    ST msh14 = "";
    ID msh15 = "";
    ID msh16 = "";
    ID msh17 = "";
    ID[] msh18 = [""];
    CE msh19 = {};
};

public const MSH_SEGMENT_NAME = "MSH";
