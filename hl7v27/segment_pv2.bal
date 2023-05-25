
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
# + pv21 - Segment Record Field
# + pv22 - Segment Record Field
# + pv23 - Segment Record Field
# + pv24 - Segment Record Field
# + pv25 - Segment Record Field
# + pv26 - Segment Record Field
# + pv27 - Segment Record Field
# + pv28 - Segment Record Field
# + pv29 - Segment Record Field
# + pv210 - Segment Record Field
# + pv211 - Segment Record Field
# + pv212 - Segment Record Field
# + pv213 - Segment Record Field
# + pv214 - Segment Record Field
# + pv215 - Segment Record Field
# + pv216 - Segment Record Field
# + pv217 - Segment Record Field
# + pv218 - Segment Record Field
# + pv219 - Segment Record Field
# + pv220 - Segment Record Field
# + pv221 - Segment Record Field
# + pv222 - Segment Record Field
# + pv223 - Segment Record Field
# + pv224 - Segment Record Field
# + pv225 - Segment Record Field
# + pv226 - Segment Record Field
# + pv227 - Segment Record Field
# + pv228 - Segment Record Field
# + pv229 - Segment Record Field
# + pv230 - Segment Record Field
# + pv231 - Segment Record Field
# + pv232 - Segment Record Field
# + pv233 - Segment Record Field
# + pv234 - Segment Record Field
# + pv235 - Segment Record Field
# + pv236 - Segment Record Field
# + pv237 - Segment Record Field
# + pv238 - Segment Record Field
# + pv239 - Segment Record Field
# + pv240 - Segment Record Field
# + pv241 - Segment Record Field
# + pv242 - Segment Record Field
# + pv243 - Segment Record Field
# + pv244 - Segment Record Field
# + pv245 - Segment Record Field
# + pv246 - Segment Record Field
# + pv247 - Segment Record Field
# + pv248 - Segment Record Field
# + pv249 - Segment Record Field
# + pv250 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "PV2",
    required: false,
    maxReps: 0,
    fields: {
        "pv21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pv22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pv26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pv27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pv213": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "pv214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv215": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv216": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv217": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv218": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv219": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv220": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pv221": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv222": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv223": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pv224": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv225": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv226": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv227": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv228": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv229": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv230": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv231": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv232": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv233": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv234": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv235": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv236": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv237": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pv238": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv239": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv240": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv241": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv242": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv243": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv244": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pv245": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv246": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pv247": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv248": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pv249": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pv250": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type PV2 record {
    *hl7v2:Segment;
    string name = PV2_SEGMENT_NAME;
    PL pv21 = {};
    CWE pv22 = {};
    CWE pv23 = {};
    CWE pv24 = {};
    ST[] pv25 = [""];
    ST pv26 = "";
    CWE[] pv27 = [{}];
    DTM pv28 = "";
    DTM pv29 = "";
    NM pv210 = "";
    NM pv211 = "";
    ST pv212 = "";
    XCN[] pv213 = [{}];
    DT pv214 = "";
    ID pv215 = "";
    CWE pv216 = {};
    DT pv217 = "";
    CWE pv218 = {};
    ID pv219 = "";
    NM pv220 = "";
    CWE pv221 = {};
    ID pv222 = "";
    XON[] pv223 = [{}];
    CWE pv224 = {};
    CWE pv225 = {};
    DT pv226 = "";
    CWE pv227 = {};
    DT pv228 = "";
    DT pv229 = "";
    CWE pv230 = {};
    CWE pv231 = {};
    ID pv232 = "";
    DTM pv233 = "";
    ID pv234 = "";
    ID pv235 = "";
    ID pv236 = "";
    ID pv237 = "";
    CWE pv238 = {};
    CWE[] pv239 = [{}];
    CWE pv240 = {};
    CWE[] pv241 = [{}];
    CWE pv242 = {};
    CWE pv243 = {};
    CWE pv244 = {};
    CWE[] pv245 = [{}];
    DT pv246 = "";
    DTM pv247 = "";
    DTM pv248 = "";
    CWE[] pv249 = [{}];
    DT pv250 = "";
};

public const PV2_SEGMENT_NAME = "PV2";