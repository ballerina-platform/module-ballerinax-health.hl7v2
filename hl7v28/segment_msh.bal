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
# + msh1 - Feldtrennzeichen
# + msh2 - Weitere Trennzeichen
# + msh3 - Sendende Anwendung / Sendender Bereich
# + msh4 - Sendender Prozeß / Sendende Einrichtung innerhalb Bereich
# + msh5 - Empfangende Anwendung / Empfangender Bereich
# + msh6 - Empfangender Prozeß / Empfangende Einrichtung innerhalb Bereich
# + msh7 - Zeitpunkt Nachrichtenerstellung
# + msh8 - Sicherheitsspezifikation
# + msh9 - Nachrichtentyp und Ereigniscode
# + msh10 - Nachrichtenkontrollnummer
# + msh11 - Verarbeitungsmodus
# + msh12 - HL7-Versionsnummer
# + msh13 - Laufende Nummer der Nachricht
# + msh14 - Fortsetzungszeiger
# + msh15 - Bedingung für Empfangsbestätigung
# + msh16 - Bedingung für Verarbeitungsbestätigung
# + msh17 - Ursprungsland der Nachricht
# + msh18 - Zeichensatz
# + msh19 - Sprache der Nachricht
# + msh20 - Verfahren zum Zeichensatzwechsel innerhalb der Nachricht
# + msh21 - ID des Nachrichtenprofils
# + msh22 - sendende verantwortliche Organisation
# + msh23 - empfangende verantwortliche Organisation
# + msh24 - Netzwerkadresse des Senders
# + msh25 - Netzwerkadresse des Empfängers
@hl7v2:SegmentDefinition {
    name: "MSH",
    required: false,
    maxReps: 0,
    fields: {
        "msh1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh7": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "msh8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh9": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: MSG
        },
        "msh10": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: PT
        },
        "msh12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: VID
        },
        "msh13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "msh14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msh15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ID
        },
        "msh19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "msh20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msh21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "msh22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "msh23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "msh24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "msh25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        }
    }
}
public type MSH record {
    *hl7v2:Segment;
    string name = MSH_SEGMENT_NAME;
    ST msh1 = "";
    ST msh2 = "";
    HD msh3 = {};
    HD msh4 = {};
    HD msh5 = {};
    HD msh6 = {};
    DTM msh7 = "";
    ST msh8 = "";
    MSG msh9 = {};
    ST msh10 = "";
    PT msh11 = {};
    VID msh12 = {};
    NM msh13 = "";
    ST msh14 = "";
    ID msh15 = "";
    ID msh16 = "";
    ID msh17 = "";
    ID[] msh18 = [""];
    CWE msh19 = {};
    ID msh20 = "";
    EI[] msh21 = [{}];
    XON msh22 = {};
    XON msh23 = {};
    HD msh24 = {};
    HD msh25 = {};
};

public const MSH_SEGMENT_NAME = "MSH";