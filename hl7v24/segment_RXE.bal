
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
# + rxe1 - Segment Record Field
# + rxe2 - Segment Record Field
# + rxe3 - Segment Record Field
# + rxe4 - Segment Record Field
# + rxe5 - Segment Record Field
# + rxe6 - Segment Record Field
# + rxe7 - Segment Record Field
# + rxe8 - Segment Record Field
# + rxe9 - Segment Record Field
# + rxe10 - Segment Record Field
# + rxe11 - Segment Record Field
# + rxe12 - Segment Record Field
# + rxe13 - Segment Record Field
# + rxe14 - Segment Record Field
# + rxe15 - Segment Record Field
# + rxe16 - Segment Record Field
# + rxe17 - Segment Record Field
# + rxe18 - Segment Record Field
# + rxe19 - Segment Record Field
# + rxe20 - Segment Record Field
# + rxe21 - Segment Record Field
# + rxe22 - Segment Record Field
# + rxe23 - Segment Record Field
# + rxe24 - Segment Record Field
# + rxe25 - Segment Record Field
# + rxe26 - Segment Record Field
# + rxe27 - Segment Record Field
# + rxe28 - Segment Record Field
# + rxe29 - Segment Record Field
# + rxe30 - Segment Record Field
# + rxe31 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RXE",
    required: false,
    maxReps: 0,
    fields: {
        "rxe1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "rxe2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxe8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA1
        },
        "rxe9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxe14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxe15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "rxe19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxe20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxe22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxe24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "rxe28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxe29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "rxe30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxe31": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        }
    }
}
public type RXE record {
    *hl7v2:Segment;
    string name = RXE_SEGMENT_NAME;
    TQ rxe1 = {};
    CE rxe2 = {};
    NM rxe3 = "";
    NM rxe4 = "";
    CE rxe5 = {};
    CE rxe6 = {};
    CE[] rxe7 = [{}];
    LA1 rxe8 = {};
    ID rxe9 = "";
    NM rxe10 = "";
    CE rxe11 = {};
    NM rxe12 = "";
    XCN[] rxe13 = [{}];
    XCN[] rxe14 = [{}];
    ST rxe15 = "";
    NM rxe16 = "";
    NM rxe17 = "";
    TS rxe18 = {};
    CQ rxe19 = {};
    ID rxe20 = "";
    CE[] rxe21 = [{}];
    ST rxe22 = "";
    ST rxe23 = "";
    CE rxe24 = {};
    NM rxe25 = "";
    CE rxe26 = {};
    CE[] rxe27 = [{}];
    NM rxe28 = "";
    CE rxe29 = {};
    ID rxe30 = "";
    CE[] rxe31 = [{}];
};

public const RXE_SEGMENT_NAME = "RXE";