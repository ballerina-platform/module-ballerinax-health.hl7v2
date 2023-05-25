
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
# + pv11 - Segment Record Field
# + pv12 - Segment Record Field
# + pv13 - Segment Record Field
# + pv14 - Segment Record Field
# + pv15 - Segment Record Field
# + pv16 - Segment Record Field
# + pv17 - Segment Record Field
# + pv18 - Segment Record Field
# + pv19 - Segment Record Field
# + pv110 - Segment Record Field
# + pv111 - Segment Record Field
# + pv112 - Segment Record Field
# + pv113 - Segment Record Field
# + pv114 - Segment Record Field
# + pv115 - Segment Record Field
# + pv116 - Segment Record Field
# + pv117 - Segment Record Field
# + pv118 - Segment Record Field
# + pv119 - Segment Record Field
# + pv120 - Segment Record Field
# + pv121 - Segment Record Field
# + pv122 - Segment Record Field
# + pv123 - Segment Record Field
# + pv124 - Segment Record Field
# + pv125 - Segment Record Field
# + pv126 - Segment Record Field
# + pv127 - Segment Record Field
# + pv128 - Segment Record Field
# + pv129 - Segment Record Field
# + pv130 - Segment Record Field
# + pv131 - Segment Record Field
# + pv132 - Segment Record Field
# + pv133 - Segment Record Field
# + pv134 - Segment Record Field
# + pv135 - Segment Record Field
# + pv136 - Segment Record Field
# + pv137 - Segment Record Field
# + pv138 - Segment Record Field
# + pv139 - Segment Record Field
# + pv141 - Segment Record Field
# + pv142 - Segment Record Field
# + pv143 - Segment Record Field
# + pv144 - Segment Record Field
# + pv145 - Segment Record Field
# + pv146 - Segment Record Field
# + pv147 - Segment Record Field
# + pv148 - Segment Record Field
# + pv149 - Segment Record Field
# + pv150 - Segment Record Field
# + pv151 - Segment Record Field
# + pv153 - Segment Record Field
# + pv154 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PV1",
    required: false,
    maxReps: 0,
    fields: {
        "pv11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pv12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pv16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv114": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv115": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pv120": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FC
        },
        "pv121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv124": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv125": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DT
        },
        "pv126": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "pv127": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "pv128": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv134": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DLD
        },
        "pv138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv144": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv145": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv146": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv148": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv149": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv150": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pv151": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv153": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pv154": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        }
    }
}
public type PV1 record {
    *hl7v2:Segment;
    string name = PV1_SEGMENT_NAME;
    SI pv11 = "";
    CWE pv12 = {};
    PL pv13 = {};
    CWE pv14 = {};
    CX pv15 = {};
    PL pv16 = {};
    XCN[] pv17 = [{}];
    XCN[] pv18 = [{}];
    XCN[] pv19 = [{}];
    CWE pv110 = {};
    PL pv111 = {};
    CWE pv112 = {};
    CWE pv113 = {};
    CWE pv114 = {};
    CWE[] pv115 = [{}];
    CWE pv116 = {};
    XCN[] pv117 = [{}];
    CWE pv118 = {};
    CX pv119 = {};
    FC[] pv120 = [{}];
    CWE pv121 = {};
    CWE pv122 = {};
    CWE pv123 = {};
    CWE[] pv124 = [{}];
    DT[] pv125 = [""];
    NM[] pv126 = [""];
    NM[] pv127 = [""];
    CWE pv128 = {};
    CWE pv129 = {};
    DT pv130 = "";
    CWE pv131 = {};
    NM pv132 = "";
    NM pv133 = "";
    CWE pv134 = {};
    DT pv135 = "";
    CWE pv136 = {};
    DLD pv137 = {};
    CWE pv138 = {};
    CWE pv139 = {};
    CWE pv141 = {};
    PL pv142 = {};
    PL pv143 = {};
    DTM pv144 = "";
    DTM pv145 = "";
    NM pv146 = "";
    NM pv147 = "";
    NM pv148 = "";
    NM pv149 = "";
    CX pv150 = {};
    CWE pv151 = {};
    ST pv153 = "";
    CX pv154 = {};
};

public const PV1_SEGMENT_NAME = "PV1";