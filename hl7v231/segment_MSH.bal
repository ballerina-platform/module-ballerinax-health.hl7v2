
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
# + msh1 - Segment Record Field
# + msh2 - Segment Record Field
# + msh3 - Segment Record Field
# + msh4 - Segment Record Field
# + msh5 - Segment Record Field
# + msh6 - Segment Record Field
# + msh7 - Segment Record Field
# + msh8 - Segment Record Field
# + msh9 - Segment Record Field
# + msh10 - Segment Record Field
# + msh11 - Segment Record Field
# + msh12 - Segment Record Field
# + msh13 - Segment Record Field
# + msh14 - Segment Record Field
# + msh15 - Segment Record Field
# + msh16 - Segment Record Field
# + msh17 - Segment Record Field
# + msh18 - Segment Record Field
# + msh19 - Segment Record Field
# + msh20 - Segment Record Field
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
            dataType: MSG
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
            dataType: VID
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
        },
        "msh20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type MSH record {
    *hl7v2:Segment;
    string name = MSH_SEGMENT_NAME;
    ST msh1 = "|";
    ST msh2 = "^~\\&";
    HD msh3 = {};
    HD msh4 = {};
    HD msh5 = {};
    HD msh6 = {};
    TS msh7 = {};
    ST msh8 = "";
    MSG msh9 = {};
    ST msh10 = "";
    PT msh11 = {};
    VID msh12 = {};
    NM msh13 = "";
    ST msh14 = "";
    ID msh15 = "";
    ID msh16 = "";
    ID msh17 = "";
    ID[] msh18 = [""];
    CE msh19 = {};
    ID msh20 = "";
};

public const MSH_SEGMENT_NAME = "MSH";