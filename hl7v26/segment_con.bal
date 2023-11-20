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
# + con1 - CON-Segmentnummer
# + con2 - Art der Einverständniserklärung
# + con3 - verwendetes Formular der Einverständniserklärung
# + con4 - eindeutige Identifikation der Einverständniserklärung
# + con5 - Einverständnis - Text
# + con6 - Spezifische Einverständnisse
# + con7 - zusätzliche Informationen
# + con8 - spezifische Zusatzinformationen
# + con9 - Einschränkungen durch den Einwilligenden
# + con10 - Form der Einverständniserklärung
# + con11 - Status der Einverständniserklärung
# + con12 - Zeitpunkt des Patientengesprächs
# + con13 - Zeitpunkt der Patientenentscheidung
# + con14 - Beginn des Einverständniszeitraums
# + con15 - Ende des Einverständniszeitraums
# + con16 - Merkmal Patientenverständnis vorhanden
# + con17 - Merkmal Dolmetscher benötigt
# + con18 - übersetzt nach
# + con19 - Merkmal zusätzliches Informationsmaterial ausgehändigt
# + con20 - Grund für Nichteinholung eines Einverständnisses
# + con21 - Umfang der Patientenaufklärung
# + con22 - Grund für eingeschränkte Patientenaufklärung
# + con23 - Grund für die Einwilligung durch Dritte
# + con24 - Einwilligende Person
# + con25 - Beziehung des Einwilligenden zum Patienten
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
            dataType: IS
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
    IS[] con25 = [""];
};

public const CON_SEGMENT_NAME = "CON";