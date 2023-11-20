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
# + gol1 - Action Code
# + gol2 - Action Date/Time
# + gol3 - Goal ID
# + gol4 - Goal Instance ID
# + gol5 - Episode of Care ID
# + gol6 - Goal List Priority
# + gol7 - Goal Established Date/Time
# + gol8 - Expected Goal Achieve Date/Time
# + gol9 - Goal Classification
# + gol10 - Goal Management Discipline
# + gol11 - Current Goal Review Status
# + gol12 - Current Goal Review Date/Time
# + gol13 - Next Goal Review Date/Time
# + gol14 - Previous Goal Review Date/Time
# + gol15 - Goal Review Interval
# + gol16 - Goal Evaluation
# + gol17 - Goal Evaluation Comment
# + gol18 - Goal Life Cycle Status
# + gol19 - Goal Life Cycle Status Date/Time
# + gol20 - Goal Target Type
# + gol21 - Goal Target Name
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
            dataType: TS
        },
        "gol3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: TS
        },
        "gol8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gol9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gol10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gol11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "gol12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gol13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gol14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gol15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "gol16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
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
            dataType: CE
        },
        "gol19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "gol20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "gol21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        }
    }
}
public type GOL record {
    *hl7v2:Segment;
    string name = GOL_SEGMENT_NAME;
    ID gol1 = "";
    TS gol2 = {};
    CE gol3 = {};
    EI gol4 = {};
    EI gol5 = {};
    NM gol6 = "";
    TS gol7 = {};
    TS gol8 = {};
    CE gol9 = {};
    CE gol10 = {};
    CE gol11 = {};
    TS gol12 = {};
    TS gol13 = {};
    TS gol14 = {};
    TQ gol15 = {};
    CE gol16 = {};
    ST[] gol17 = [""];
    CE gol18 = {};
    TS gol19 = {};
    CE[] gol20 = [{}];
    XPN[] gol21 = [{}];
};

public const GOL_SEGMENT_NAME = "GOL";