
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
# + rxd1 - Segment Record Field
# + rxd2 - Segment Record Field
# + rxd3 - Segment Record Field
# + rxd4 - Segment Record Field
# + rxd5 - Segment Record Field
# + rxd6 - Segment Record Field
# + rxd7 - Segment Record Field
# + rxd8 - Segment Record Field
# + rxd9 - Segment Record Field
# + rxd10 - Segment Record Field
# + rxd11 - Segment Record Field
# + rxd12 - Segment Record Field
# + rxd13 - Segment Record Field
# + rxd14 - Segment Record Field
# + rxd15 - Segment Record Field
# + rxd16 - Segment Record Field
# + rxd17 - Segment Record Field
# + rxd18 - Segment Record Field
# + rxd19 - Segment Record Field
# + rxd20 - Segment Record Field
# + rxd21 - Segment Record Field
# + rxd22 - Segment Record Field
# + rxd23 - Segment Record Field
# + rxd24 - Segment Record Field
# + rxd25 - Segment Record Field
# + rxd26 - Segment Record Field
# + rxd27 - Segment Record Field
# + rxd28 - Segment Record Field
# + rxd29 - Segment Record Field
# + rxd30 - Segment Record Field
# + rxd31 - Segment Record Field
# + rxd32 - Segment Record Field
# + rxd33 - Segment Record Field
# + rxd34 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "RXD",
    required: false,
    maxReps: 0,
    fields: {
        "rxd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rxd4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "rxd8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxd10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rxd11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "rxd13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: LA2
        },
        "rxd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "rxd19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DTM
        },
        "rxd20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxd26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxd29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "rxd32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxd33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxd34": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type RXD record {
    *hl7v2:Segment;
    string name = RXD_SEGMENT_NAME;
    NM rxd1 = "";
    CWE rxd2 = {};
    DTM rxd3 = "";
    NM rxd4 = "";
    CWE rxd5 = {};
    CWE rxd6 = {};
    ST rxd7 = "";
    NM rxd8 = "";
    ST[] rxd9 = [""];
    XCN[] rxd10 = [{}];
    ID rxd11 = "";
    CQ rxd12 = {};
    LA2 rxd13 = {};
    ID rxd14 = "";
    CWE[] rxd15 = [{}];
    NM rxd16 = "";
    CWE rxd17 = {};
    ST[] rxd18 = [""];
    DTM[] rxd19 = [""];
    CWE[] rxd20 = [{}];
    CWE[] rxd21 = [{}];
    NM rxd22 = "";
    CWE rxd23 = {};
    ID rxd24 = "";
    CWE[] rxd25 = [{}];
    CWE rxd26 = {};
    CWE rxd27 = {};
    NM rxd28 = "";
    CWE rxd29 = {};
    CWE rxd30 = {};
    XAD rxd31 = {};
    ID rxd32 = "";
    CWE rxd33 = {};
    XTN[] rxd34 = [{}];
};

public const RXD_SEGMENT_NAME = "RXD";
