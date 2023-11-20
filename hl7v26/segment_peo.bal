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
# + peo1 - Verwendete Ereignis-ID
# + peo2 - Symptom/Diagnose-Code
# + peo3 - Zeitpunkt des Beginns
# + peo4 - Zeitpunkt der Verstärkung
# + peo5 - Zeitpunkt der Besserung
# + peo6 - Zeitpunkt des Endes
# + peo7 - Adresse des Ereignisortes
# + peo8 - Ereignistyp/Ursache
# + peo9 - Ereignis schwerwiegend
# + peo10 - Ereignis erwartet
# + peo11 - Folge des Ereignisses
# + peo12 - Folge für den Patienten
# + peo13 - Beschreibung durch Andere
# + peo14 - Beschreibung durch den Erstberichtenden
# + peo15 - Beschreibung durch Patienten
# + peo16 - Beschreibung durch den Arzt
# + peo17 - Autopsieergebnis
# + peo18 - Todesursache
# + peo19 - Name des Erstberichtenden
# + peo20 - Adresse des Erstberichtenden
# + peo21 - Telefonnummer des Erstberichtenden
# + peo22 - Qualifikation des Erstberichtenden
# + peo23 - Qualifikation des Bestätigenden
# + peo24 - Zeitpunkt der Wahrnehmung durch den Erstberichtenden
# + peo25 - Identität des Erstberichtenden kann weitergegeben werden
@hl7v2:SegmentDefinition {
    name: "PEO",
    required: false,
    maxReps: 0,
    fields: {
        "peo1": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "peo2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "peo3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "peo4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "peo5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "peo6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
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
            dataType: CWE
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
            dataType: DTM
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
    CWE[] peo1 = [{}];
    CWE[] peo2 = [{}];
    DTM peo3 = "";
    DTM peo4 = "";
    DTM peo5 = "";
    DTM peo6 = "";
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
    CWE[] peo18 = [{}];
    XPN[] peo19 = [{}];
    XAD[] peo20 = [{}];
    XTN[] peo21 = [{}];
    ID peo22 = "";
    ID peo23 = "";
    DTM peo24 = "";
    ID peo25 = "";
};

public const PEO_SEGMENT_NAME = "PEO";