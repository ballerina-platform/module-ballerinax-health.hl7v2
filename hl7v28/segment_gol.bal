
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
# + gol1 - Segment Record Field
# + gol2 - Segment Record Field
# + gol3 - Segment Record Field
# + gol4 - Segment Record Field
# + gol5 - Segment Record Field
# + gol6 - Segment Record Field
# + gol7 - Segment Record Field
# + gol8 - Segment Record Field
# + gol9 - Segment Record Field
# + gol10 - Segment Record Field
# + gol11 - Segment Record Field
# + gol12 - Segment Record Field
# + gol13 - Segment Record Field
# + gol14 - Segment Record Field
# + gol16 - Segment Record Field
# + gol17 - Segment Record Field
# + gol18 - Segment Record Field
# + gol19 - Segment Record Field
# + gol20 - Segment Record Field
# + gol21 - Segment Record Field
# + gol22 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "GOL",
    required: false,
    maxReps: 0,
    fields: {
        "gol1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "gol2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gol4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "gol5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "gol6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "gol7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gol10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gol11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gol12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gol17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "gol18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gol19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "gol20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gol21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "gol22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        }
    }
}
public type GOL record {
    *hl7v2:Segment;
    string name = GOL_SEGMENT_NAME;
    ID gol1 = "";
    DTM gol2 = "";
    CWE gol3 = {};
    EI gol4 = {};
    EI gol5 = {};
    NM gol6 = "";
    DTM gol7 = "";
    DTM gol8 = "";
    CWE gol9 = {};
    CWE gol10 = {};
    CWE gol11 = {};
    DTM gol12 = "";
    DTM gol13 = "";
    DTM gol14 = "";
    CWE gol16 = {};
    ST[] gol17 = [""];
    CWE gol18 = {};
    DTM gol19 = "";
    CWE[] gol20 = [{}];
    XPN[] gol21 = [{}];
    CNE gol22 = {};
};

public const GOL_SEGMENT_NAME = "GOL";