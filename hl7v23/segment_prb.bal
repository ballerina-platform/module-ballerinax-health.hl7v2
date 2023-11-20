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
# + prb1 - Action Code
# + prb2 - Action Date/Time
# + prb3 - Problem ID
# + prb4 - Problem Instance ID
# + prb5 - Episode of Care ID
# + prb6 - Problem List Priority
# + prb7 - Problem Established Date/Time
# + prb8 - Anticipated Problem Resolution Date/Time
# + prb9 - Actual Problem Resolution Date/Time
# + prb10 - Problem Classification
# + prb11 - Problem Management Discipline
# + prb12 - Problem Persistence
# + prb13 - Problem Confirmation Status
# + prb14 - Problem Life Cycle Status
# + prb15 - Problem Life Cycle Status Date/Time
# + prb16 - Problem Date of Onset
# + prb17 - Problem Onset Text
# + prb18 - Problem Ranking
# + prb19 - Certainty of Problem
# + prb20 - Probability of Problem (0-1)
# + prb21 - Individual Awareness of Problem
# + prb22 - Problem Prognosis
# + prb23 - Individual Awareness of Prognosis
# + prb24 - Family/Significant Other Awareness of Problem/Prognosis
# + prb25 - Security/Sensitivity
@hl7v2:SegmentDefinition {
    name: "PRB",
    required: false,
    maxReps: 0,
    fields: {
        "prb1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "prb2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prb3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "prb5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "prb6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prb7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prb8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prb9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prb10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "prb12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prb16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "prb17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "prb18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "prb21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "prb24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "prb25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type PRB record {
    *hl7v2:Segment;
    string name = PRB_SEGMENT_NAME;
    ID prb1 = "";
    TS prb2 = {};
    CE prb3 = {};
    EI prb4 = {};
    EI prb5 = {};
    NM prb6 = "";
    TS prb7 = {};
    TS prb8 = {};
    TS prb9 = {};
    CE prb10 = {};
    CE[] prb11 = [{}];
    CE prb12 = {};
    CE prb13 = {};
    CE prb14 = {};
    TS prb15 = {};
    TS prb16 = {};
    ST prb17 = "";
    CE prb18 = {};
    CE prb19 = {};
    NM prb20 = "";
    CE prb21 = {};
    CE prb22 = {};
    CE prb23 = {};
    ST prb24 = "";
    CE prb25 = {};
};

public const PRB_SEGMENT_NAME = "PRB";