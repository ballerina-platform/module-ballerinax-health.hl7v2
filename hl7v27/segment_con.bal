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
# + con1 - Set ID - CON
# + con2 - Consent Type
# + con3 - Consent Form ID and Version
# + con4 - Consent Form Number
# + con5 - Consent Text
# + con6 - Subject-specific Consent Text
# + con7 - Consent Background Information
# + con8 - Subject-specific Consent Background Text
# + con9 - Consenter-imposed limitations
# + con10 - Consent Mode
# + con11 - Consent Status
# + con12 - Consent Discussion Date/Time
# + con13 - Consent Decision Date/Time
# + con14 - Consent Effective Date/Time
# + con15 - Consent End Date/Time
# + con16 - Subject Competence Indicator
# + con17 - Translator Assistance Indicator
# + con18 - Language Translated To
# + con19 - Informational Material Supplied Indicator
# + con20 - Consent Bypass Reason
# + con21 - Consent Disclosure Level
# + con22 - Consent Non-disclosure Reason
# + con23 - Non-subject Consenter Reason
# + con24 - Consenter ID
# + con25 - Relationship to Subject
@hl7v2:SegmentDefinition {
    name: "CON",
    required: false,
    maxReps: 0,
    fields: {
        "con1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "con2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "con3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "con4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "con5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "con6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "con7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "con8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "con9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "con10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "con11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "con12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "con13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "con14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "con15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "con16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "con17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "con18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "con19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "con20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "con21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "con22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "con23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "con24": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "con25": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type CON record {
    *hl7v2:Segment;
    string name = CON_SEGMENT_NAME;
    SI con1 = "";
    CWE con2 = {};
    ST con3 = "";
    EI con4 = {};
    FT[] con5 = [""];
    FT[] con6 = [""];
    FT[] con7 = [""];
    FT[] con8 = [""];
    FT[] con9 = [""];
    CNE con10 = {};
    CNE con11 = {};
    DTM con12 = "";
    DTM con13 = "";
    DTM con14 = "";
    DTM con15 = "";
    ID con16 = "";
    ID con17 = "";
    CWE con18 = {};
    ID con19 = "";
    CWE con20 = {};
    ID con21 = "";
    CWE con22 = {};
    CWE con23 = {};
    XPN[] con24 = [{}];
    CWE[] con25 = [{}];
};

public const CON_SEGMENT_NAME = "CON";