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
# + prb1 - Aktionscode
# + prb2 - Aktionszeitpunkt
# + prb3 - Problem-ID
# + prb4 - ID des individuellen Problems
# + prb5 - ID der Behandlungsepisode
# + prb6 - Priorität innerhalb der Problemliste
# + prb7 - Zeitpunkt der Identifikation des Problems
# + prb8 - geschätzter Zeitpunkt der Problemlösung
# + prb9 - wirklicher Zeitpunkt der Problemlösung
# + prb10 - Problemklassifizierung
# + prb11 - verantwortliche Fachabteilung für das Problemmanagement
# + prb12 - Dauerhaftigkeit des Problems
# + prb13 - Status der Problembestätigung
# + prb14 - Problemstatus
# + prb15 - Zeitpunkt des Problemstatus
# + prb16 - Zeitpunkt des Auftretens des Problems
# + prb17 - Zeitpunkt des Auftretens des Problems (verbale Beschreibung)
# + prb18 - Rangfolge des Problems
# + prb19 - Problemgewißheit
# + prb20 - Wahrscheinlichkeit des Problems
# + prb21 - individuelles Problembewußtsein
# + prb22 - Problemprognose
# + prb23 - individuelle Einstellung zur Prognose
# + prb24 - Einstellung der Familie/wesentlicher Dritter zum Problem/Prognose
# + prb25 - Sensitivität des Problems
# + prb26 - 2234CWEHL70836HL7Problem Severity
# + prb27 - 2235CWEHL70838HL7Problem Perspective
# + prb28 - Mood-Code
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
            dataType: DTM
        },
        "prb3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: DTM
        },
        "prb8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "prb12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "prb16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
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
            dataType: CWE
        },
        "prb19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
        },
        "prb22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
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
            dataType: CWE
        },
        "prb26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "prb28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        }
    }
}
public type PRB record {
    *hl7v2:Segment;
    string name = PRB_SEGMENT_NAME;
    ID prb1 = "";
    DTM prb2 = "";
    CWE prb3 = {};
    EI prb4 = {};
    EI prb5 = {};
    NM prb6 = "";
    DTM prb7 = "";
    DTM prb8 = "";
    DTM prb9 = "";
    CWE prb10 = {};
    CWE[] prb11 = [{}];
    CWE prb12 = {};
    CWE prb13 = {};
    CWE prb14 = {};
    DTM prb15 = "";
    DTM prb16 = "";
    ST prb17 = "";
    CWE prb18 = {};
    CWE prb19 = {};
    NM prb20 = "";
    CWE prb21 = {};
    CWE prb22 = {};
    CWE prb23 = {};
    ST prb24 = "";
    CWE prb25 = {};
    CWE prb26 = {};
    CWE prb27 = {};
    CNE prb28 = {};
};

public const PRB_SEGMENT_NAME = "PRB";