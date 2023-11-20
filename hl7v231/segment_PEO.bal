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
# + peo1 - Event Identifiers Used
# + peo2 - Event Symptom/Diagnosis Code
# + peo3 - Event Onset Date/Time
# + peo4 - Event Exacerbation Date/Time
# + peo5 - Event Improved Date/Time
# + peo6 - Event Ended Data/Time
# + peo7 - Event Location Occurred Address
# + peo8 - Event Qualification
# + peo9 - Event Serious
# + peo10 - Event Expected
# + peo11 - Event Outcome
# + peo12 - Patient Outcome
# + peo13 - Event Description From Others
# + peo14 - Event From Original Reporter
# + peo15 - Event Description From Patient
# + peo16 - Event Description From Practitioner
# + peo17 - Event Description From Autopsy
# + peo18 - Cause Of Death
# + peo19 - Primary Observer Name
# + peo20 - Primary Observer Address
# + peo21 - Primary Observer Telephone
# + peo22 - Primary Observer’s Qualification
# + peo23 - Confirmation Provided By
# + peo24 - Primary Observer Aware Date/Time
# + peo25 - Primary Observer’s identity May Be Divulged
@hl7v2:SegmentDefinition {
    name: "PEO",
    required: false,
    maxReps: 0,
    fields: {
        "peo1": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "peo2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "peo3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "peo4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "peo5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "peo6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "peo7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "peo8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "peo9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "peo10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "peo11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "peo12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "peo13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "peo14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "peo15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "peo16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "peo17": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "peo18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "peo19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "peo20": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "peo21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "peo22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "peo23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "peo24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "peo25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type PEO record {
    *hl7v2:Segment;
    string name = PEO_SEGMENT_NAME;
    CE[] peo1 = [{}];
    CE[] peo2 = [{}];
    TS peo3 = {};
    TS peo4 = {};
    TS peo5 = {};
    TS peo6 = {};
    XAD[] peo7 = [{}];
    ID[] peo8 = [""];
    ID peo9 = "";
    ID peo10 = "";
    ID[] peo11 = [""];
    ID peo12 = "";
    FT[] peo13 = [""];
    FT[] peo14 = [""];
    FT[] peo15 = [""];
    FT[] peo16 = [""];
    FT[] peo17 = [""];
    CE[] peo18 = [{}];
    XPN[] peo19 = [{}];
    XAD[] peo20 = [{}];
    XTN[] peo21 = [{}];
    ID peo22 = "";
    ID peo23 = "";
    TS peo24 = {};
    ID peo25 = "";
};

public const PEO_SEGMENT_NAME = "PEO";