// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).

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

# OM1 segment. General - Fields That Apply To Most Observations The OM1 segment contains attributes that apply to the definition of most observations. This segment also contains the field attributes that specify what additional segments might also be defined for this observation
# + name - Segment Name
# + om11 - Segment Type Id
# + om12 - Sequence Number - Test/ Observation Master File
# + om13 - Producer s Test / Observation Id
# + om14 - Permitted Data Types
# + om15 - Specimen Required
# + om16 - Producer Id
# + om17 - Observation Description
# + om18 - Other Test / Observation Ids For The Observation
# + om19 - Other Names
# + om110 - Preferred Report Name For The Observation
# + om111 - Preferred Short Name Or Mnemonic For Observation
# + om112 - Preferred Long Name For The Observation
# + om113 - Orderability
# + om114 - Identity Of Instrument Used To Perform This Study
# + om115 - Coded Representation Of Method
# + om116 - Portable
# + om117 - Observation Producing Department / Section
# + om118 - Telephone Number Of Section
# + om119 - Nature Of Test / Observation
# + om120 - Report Subheader
# + om121 - Report Display Order
# + om122 - Date / Time Stamp For Any Change In Definition For Obs
# + om123 - Effective Date / Time Of Change
# + om124 - Typical Turn-around Time
# + om125 - Processing Time
# + om126 - Processing Priority
# + om127 - Reporting Priority
# + om128 - Outside Site(s) Where Observation May Be Performed
# + om129 - Address Of Outside Site(s)
# + om130 - Phone Number Of Outside Site
# + om131 - Confidentiality Code
# + om132 - Observations Required To Interpret The Observation
# + om133 - Interpretation Of Observations
# + om134 - Contraindications To Observations
# + om135 - Reflex Tests / Observations
# + om136 - Rules That Trigger Reflex Testing
# + om137 - Fixed Canned Message
# + om138 - Patient Preparation
# + om139 - Procedure Medication
# + om140 - Factors That May Affect The Observation
# + om141 - Test / Observation Performance Schedule
# + om142 - Description Of Test Methods

@hl7v2:SegmentDefinition {
    name: "OM1",
    required: false,
    maxReps: 0,
    fields: {
        "om11": {
            required: true,
            length: 3,
            maxReps: 1,
            dataType: ST
        },
        "om12": {
            required: true,
            length: 4,
            maxReps: 1,
            dataType: NM
        },
        "om13": {
            required: true,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om14": {
            required: false,
            length: 12,
            maxReps: -1,
            dataType: ID
        },
        "om15": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om16": {
            required: true,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om17": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: TX
        },
        "om18": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om19": {
            required: true,
            length: 200,
            maxReps: -1,
            dataType: ST
        },
        "om110": {
            required: false,
            length: 30,
            maxReps: 1,
            dataType: ST
        },
        "om111": {
            required: false,
            length: 8,
            maxReps: 1,
            dataType: ST
        },
        "om112": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: ST
        },
        "om113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om114": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: CE
        },
        "om115": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "om116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om117": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "om118": {
            required: false,
            length: 40,
            maxReps: 1,
            dataType: TN
        },
        "om119": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om120": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om121": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "om122": {
            required: true,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "om123": {
            required: false,
            length: 26,
            maxReps: 1,
            dataType: TS
        },
        "om124": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "om125": {
            required: false,
            length: 20,
            maxReps: 1,
            dataType: NM
        },
        "om126": {
            required: false,
            length: 40,
            maxReps: -1,
            dataType: ID
        },
        "om127": {
            required: false,
            length: 5,
            maxReps: 1,
            dataType: ID
        },
        "om128": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "om129": {
            required: false,
            length: 1000,
            maxReps: 1,
            dataType: AD
        },
        "om130": {
            required: false,
            length: 400,
            maxReps: 1,
            dataType: TN
        },
        "om131": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om132": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om133": {
            required: false,
            length: 65536,
            maxReps: 1,
            dataType: TX
        },
        "om134": {
            required: false,
            length: 65536,
            maxReps: 1,
            dataType: CE
        },
        "om135": {
            required: false,
            length: 200,
            maxReps: -1,
            dataType: CE
        },
        "om136": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: ST
        },
        "om137": {
            required: false,
            length: 65536,
            maxReps: 1,
            dataType: CE
        },
        "om138": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: TX
        },
        "om139": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: CE
        },
        "om140": {
            required: false,
            length: 200,
            maxReps: 1,
            dataType: TX
        },
        "om141": {
            required: false,
            length: 60,
            maxReps: -1,
            dataType: ST
        },
        "om142": {
            required: false,
            length: 65536,
            maxReps: 1,
            dataType: TX
        }

    }
}
public type OM1 record {
    *hl7v2:Segment;
    string name = OM1_SEGMENT_NAME;
    ST om11 = "";
    NM om12 = "";
    CE om13 = {};
    ID[] om14 = [""];
    ID om15 = "";
    CE om16 = {};
    TX om17 = "";
    CE om18 = {};
    ST[] om19 = [""];
    ST om110 = "";
    ST om111 = "";
    ST om112 = "";
    ID om113 = "";
    CE[] om114 = [{}];
    CE[] om115 = [{}];
    ID om116 = "";
    ID[] om117 = [""];
    TN om118 = "";
    ID om119 = "";
    CE om120 = {};
    ST om121 = "";
    TS om122 = {};
    TS om123 = {};
    NM om124 = "";
    NM om125 = "";
    ID[] om126 = [""];
    ID om127 = "";
    CE[] om128 = [{}];
    AD om129 = {};
    TN om130 = "";
    ID om131 = "";
    CE om132 = {};
    TX om133 = "";
    CE om134 = {};
    CE[] om135 = [{}];
    ST om136 = "";
    CE om137 = {};
    TX om138 = "";
    CE om139 = {};
    TX om140 = "";
    ST[] om141 = [""];
    TX om142 = "";
};

public const OM1_SEGMENT_NAME = "OM1";
