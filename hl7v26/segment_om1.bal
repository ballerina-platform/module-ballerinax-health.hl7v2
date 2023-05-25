
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
# + om11 - Segment Record Field
# + om12 - Segment Record Field
# + om13 - Segment Record Field
# + om14 - Segment Record Field
# + om15 - Segment Record Field
# + om16 - Segment Record Field
# + om17 - Segment Record Field
# + om18 - Segment Record Field
# + om19 - Segment Record Field
# + om110 - Segment Record Field
# + om111 - Segment Record Field
# + om112 - Segment Record Field
# + om113 - Segment Record Field
# + om114 - Segment Record Field
# + om115 - Segment Record Field
# + om116 - Segment Record Field
# + om117 - Segment Record Field
# + om118 - Segment Record Field
# + om119 - Segment Record Field
# + om120 - Segment Record Field
# + om121 - Segment Record Field
# + om122 - Segment Record Field
# + om123 - Segment Record Field
# + om124 - Segment Record Field
# + om125 - Segment Record Field
# + om126 - Segment Record Field
# + om127 - Segment Record Field
# + om128 - Segment Record Field
# + om129 - Segment Record Field
# + om130 - Segment Record Field
# + om131 - Segment Record Field
# + om132 - Segment Record Field
# + om133 - Segment Record Field
# + om134 - Segment Record Field
# + om135 - Segment Record Field
# + om136 - Segment Record Field
# + om137 - Segment Record Field
# + om138 - Segment Record Field
# + om139 - Segment Record Field
# + om140 - Segment Record Field
# + om141 - Segment Record Field
# + om142 - Segment Record Field
# + om143 - Segment Record Field
# + om144 - Segment Record Field
# + om145 - Segment Record Field
# + om146 - Segment Record Field
# + om147 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "OM1",
    required: false,
    maxReps: 0,
    fields: {
        "om11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "om14": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om15": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om18": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "om19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "om110": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "om111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "om112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om113": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om114": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "om118": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "om119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "om121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om125": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "om126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om127": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om128": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "om129": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XTN
        },
        "om130": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om132": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om133": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om134": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om135": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om136": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om137": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om138": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om139": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om140": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "om141": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om142": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om143": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om144": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om145": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om146": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om147": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type OM1 record {
    *hl7v2:Segment;
    string name = OM1_SEGMENT_NAME;
    NM om11 = "";
    CWE om12 = {};
    ID[] om13 = [""];
    ID om14 = "";
    CWE om15 = {};
    TX om16 = "";
    CWE om17 = {};
    ST[] om18 = [""];
    ST om19 = "";
    ST om110 = "";
    ST om111 = "";
    ID om112 = "";
    CWE[] om113 = [{}];
    CWE[] om114 = [{}];
    ID om115 = "";
    CWE[] om116 = [{}];
    XTN om117 = {};
    IS om118 = "";
    CWE om119 = {};
    ST om120 = "";
    DTM om121 = "";
    DTM om122 = "";
    NM om123 = "";
    NM om124 = "";
    ID[] om125 = [""];
    ID om126 = "";
    CWE[] om127 = [{}];
    XAD[] om128 = [{}];
    XTN om129 = {};
    CWE om130 = {};
    CWE om131 = {};
    TX om132 = "";
    CWE om133 = {};
    CWE[] om134 = [{}];
    TX om135 = "";
    CWE om136 = {};
    TX om137 = "";
    CWE om138 = {};
    TX om139 = "";
    ST[] om140 = [""];
    TX om141 = "";
    CWE om142 = {};
    CWE om143 = {};
    TX om144 = "";
    CWE om145 = {};
    CWE om146 = {};
    CWE om147 = {};
};

public const OM1_SEGMENT_NAME = "OM1";