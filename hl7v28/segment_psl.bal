
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
# + psl1 - Segment Record Field
# + psl2 - Segment Record Field
# + psl3 - Segment Record Field
# + psl4 - Segment Record Field
# + psl5 - Segment Record Field
# + psl6 - Segment Record Field
# + psl7 - Segment Record Field
# + psl8 - Segment Record Field
# + psl9 - Segment Record Field
# + psl10 - Segment Record Field
# + psl11 - Segment Record Field
# + psl12 - Segment Record Field
# + psl13 - Segment Record Field
# + psl14 - Segment Record Field
# + psl15 - Segment Record Field
# + psl16 - Segment Record Field
# + psl17 - Segment Record Field
# + psl18 - Segment Record Field
# + psl19 - Segment Record Field
# + psl20 - Segment Record Field
# + psl21 - Segment Record Field
# + psl22 - Segment Record Field
# + psl23 - Segment Record Field
# + psl24 - Segment Record Field
# + psl25 - Segment Record Field
# + psl26 - Segment Record Field
# + psl27 - Segment Record Field
# + psl28 - Segment Record Field
# + psl29 - Segment Record Field
# + psl30 - Segment Record Field
# + psl31 - Segment Record Field
# + psl32 - Segment Record Field
# + psl33 - Segment Record Field
# + psl34 - Segment Record Field
# + psl35 - Segment Record Field
# + psl36 - Segment Record Field
# + psl37 - Segment Record Field
# + psl38 - Segment Record Field
# + psl39 - Segment Record Field
# + psl40 - Segment Record Field
# + psl41 - Segment Record Field
# + psl42 - Segment Record Field
# + psl43 - Segment Record Field
# + psl44 - Segment Record Field
# + psl45 - Segment Record Field
# + psl46 - Segment Record Field
# + psl47 - Segment Record Field
# + psl48 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PSL",
    required: false,
    maxReps: 0,
    fields: {
        "psl1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "psl4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "psl6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl8": {
            required: false,
            length: 1,
            maxReps: 5,
            dataType: CWE
        },
        "psl9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psl10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psl11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psl12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psl13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl17": {
            required: false,
            length: 1,
            maxReps: 20,
            dataType: CWE
        },
        "psl18": {
            required: false,
            length: 1,
            maxReps: 20,
            dataType: ST
        },
        "psl19": {
            required: false,
            length: 1,
            maxReps: 5,
            dataType: EI
        },
        "psl20": {
            required: false,
            length: 1,
            maxReps: 20,
            dataType: CWE
        },
        "psl21": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psl22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "psl26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "psl27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "psl30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "psl31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "psl34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl38": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl39": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl40": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl41": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl42": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl43": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl44": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "psl45": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "psl46": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psl47": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psl48": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type PSL record {
    *hl7v2:Segment;
    string name = PSL_SEGMENT_NAME;
    EI psl1 = {};
    EI psl2 = {};
    SI psl3 = "";
    EI psl4 = {};
    EI psl5 = {};
    CWE psl6 = {};
    CWE psl7 = {};
    CWE psl8 = {};
    ST psl9 = "";
    DTM psl10 = "";
    DTM psl11 = "";
    CQ psl12 = {};
    CP psl13 = {};
    NM psl14 = "";
    CP psl15 = {};
    CP psl16 = {};
    CWE psl17 = {};
    ST psl18 = "";
    EI psl19 = {};
    CWE psl20 = {};
    ID psl21 = "";
    CWE psl22 = {};
    CP psl23 = {};
    NM psl24 = "";
    CX psl25 = {};
    DR psl26 = {};
    NM psl27 = "";
    NM psl28 = "";
    XCN psl29 = {};
    XCN psl30 = {};
    CWE psl31 = {};
    CWE psl32 = {};
    CWE psl33 = {};
    NM psl34 = "";
    CP psl35 = {};
    NM psl36 = "";
    NM psl37 = "";
    CP psl38 = {};
    NM psl39 = "";
    CP psl40 = {};
    NM psl41 = "";
    NM psl42 = "";
    CP psl43 = {};
    CP psl44 = {};
    NM psl45 = "";
    ID psl46 = "";
    ID psl47 = "";
    ST psl48 = "";
};

public const PSL_SEGMENT_NAME = "PSL";