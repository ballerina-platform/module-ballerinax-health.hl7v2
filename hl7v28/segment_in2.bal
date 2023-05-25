
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
# + in21 - Segment Record Field
# + in22 - Segment Record Field
# + in23 - Segment Record Field
# + in24 - Segment Record Field
# + in25 - Segment Record Field
# + in26 - Segment Record Field
# + in27 - Segment Record Field
# + in28 - Segment Record Field
# + in29 - Segment Record Field
# + in210 - Segment Record Field
# + in211 - Segment Record Field
# + in212 - Segment Record Field
# + in213 - Segment Record Field
# + in214 - Segment Record Field
# + in215 - Segment Record Field
# + in216 - Segment Record Field
# + in217 - Segment Record Field
# + in218 - Segment Record Field
# + in219 - Segment Record Field
# + in220 - Segment Record Field
# + in221 - Segment Record Field
# + in222 - Segment Record Field
# + in223 - Segment Record Field
# + in224 - Segment Record Field
# + in225 - Segment Record Field
# + in226 - Segment Record Field
# + in227 - Segment Record Field
# + in228 - Segment Record Field
# + in229 - Segment Record Field
# + in230 - Segment Record Field
# + in231 - Segment Record Field
# + in232 - Segment Record Field
# + in233 - Segment Record Field
# + in234 - Segment Record Field
# + in235 - Segment Record Field
# + in236 - Segment Record Field
# + in237 - Segment Record Field
# + in238 - Segment Record Field
# + in239 - Segment Record Field
# + in240 - Segment Record Field
# + in241 - Segment Record Field
# + in242 - Segment Record Field
# + in243 - Segment Record Field
# + in244 - Segment Record Field
# + in245 - Segment Record Field
# + in246 - Segment Record Field
# + in247 - Segment Record Field
# + in248 - Segment Record Field
# + in249 - Segment Record Field
# + in250 - Segment Record Field
# + in251 - Segment Record Field
# + in252 - Segment Record Field
# + in253 - Segment Record Field
# + in254 - Segment Record Field
# + in255 - Segment Record Field
# + in256 - Segment Record Field
# + in257 - Segment Record Field
# + in258 - Segment Record Field
# + in259 - Segment Record Field
# + in260 - Segment Record Field
# + in261 - Segment Record Field
# + in262 - Segment Record Field
# + in263 - Segment Record Field
# + in264 - Segment Record Field
# + in265 - Segment Record Field
# + in266 - Segment Record Field
# + in267 - Segment Record Field
# + in268 - Segment Record Field
# + in269 - Segment Record Field
# + in270 - Segment Record Field
# + in271 - Segment Record Field
# + in272 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "IN2",
    required: false,
    maxReps: 0,
    fields: {
        "in21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "in24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in29": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in211": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in212": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in213": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in214": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in215": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in216": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in217": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in218": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in219": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in220": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in221": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in222": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in223": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in224": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in225": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in226": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "in227": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in228": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: RMC
        },
        "in229": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PTA
        },
        "in230": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DDI
        },
        "in231": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in232": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in233": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in234": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in235": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in236": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in237": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in238": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in239": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in240": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in241": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in242": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in243": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in244": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in245": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in246": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "in247": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: JCC
        },
        "in248": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in249": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in250": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in251": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in252": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "in253": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in254": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in255": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "in256": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DT
        },
        "in257": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in258": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in259": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in260": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in261": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "in262": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in263": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in264": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "in265": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "in266": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in267": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in268": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "in269": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in270": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "in271": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "in272": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type IN2 record {
    *hl7v2:Segment;
    string name = IN2_SEGMENT_NAME;
    CX[] in21 = [{}];
    ST in22 = "";
    XCN[] in23 = [{}];
    CWE in24 = {};
    CWE[] in25 = [{}];
    ST in26 = "";
    XPN[] in27 = [{}];
    ST in28 = "";
    XPN[] in29 = [{}];
    ST in210 = "";
    CWE in211 = {};
    ST in212 = "";
    ST in213 = "";
    CWE in214 = {};
    CWE in215 = {};
    CWE in216 = {};
    DT in217 = "";
    ID in218 = "";
    ID in219 = "";
    ID in220 = "";
    ST in221 = "";
    XPN[] in222 = [{}];
    ST in223 = "";
    CWE[] in224 = [{}];
    CX[] in225 = [{}];
    CX[] in226 = [{}];
    CWE in227 = {};
    RMC[] in228 = [{}];
    PTA[] in229 = [{}];
    DDI in230 = {};
    CWE in231 = {};
    CWE[] in232 = [{}];
    CWE[] in233 = [{}];
    CWE in234 = {};
    CWE in235 = {};
    CWE in236 = {};
    ID in237 = "";
    CWE in238 = {};
    CWE in239 = {};
    XPN[] in240 = [{}];
    CWE in241 = {};
    CWE[] in242 = [{}];
    CWE[] in243 = [{}];
    DT in244 = "";
    DT in245 = "";
    ST in246 = "";
    JCC in247 = {};
    CWE in248 = {};
    XPN[] in249 = [{}];
    XTN[] in250 = [{}];
    CWE in251 = {};
    XPN[] in252 = [{}];
    XTN[] in253 = [{}];
    CWE[] in254 = [{}];
    DT in255 = "";
    DT[] in256 = [""];
    CWE in257 = {};
    XTN[] in258 = [{}];
    CWE in259 = {};
    CWE in260 = {};
    CX in261 = {};
    CWE in262 = {};
    XTN[] in263 = [{}];
    XTN[] in264 = [{}];
    CWE in265 = {};
    ID in266 = "";
    ID in267 = "";
    ID in268 = "";
    XON[] in269 = [{}];
    XON[] in270 = [{}];
    CWE[] in271 = [{}];
    CWE in272 = {};
};

public const IN2_SEGMENT_NAME = "IN2";