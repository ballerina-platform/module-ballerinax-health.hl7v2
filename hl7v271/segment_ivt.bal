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
# + ivt1 - IVT-Segmentnummer
# + ivt2 - ID des Materiallagers
# + ivt3 - Name des Materiallagers
# + ivt4 - ID Hauptlager / Wareneinkauf
# + ivt5 - Name Hauptlager / Wareneinkauf
# + ivt6 - Verfügbarkeit des Artikels
# + ivt7 - ID Lagerplatz (in Lager)
# + ivt8 - Verpackungseinheit Nachbestellung/Nachfüllung
# + ivt9 - Verpackungseinheit Ausgabe
# + ivt10 - 2069EIHL7Default Inventory Asset Account
# + ivt11 - Kennzeichen Artikel darf Patient berechnet werden
# + ivt12 - Leistungsziffer / Buchungstext / Entgeltart EBM (GSG)
# + ivt13 - Einzelpreis / Punktwert
# + ivt14 - Wichtigkeit des Artikels für dieses Lager
# + ivt15 - Kennzeichen Standard-Lagerartikel
# + ivt16 - Kennzeichen Kommissionsartikel
# + ivt17 - Kennzeichen wiederverwendbarer Artikel
# + ivt18 - Kosten, die für wiederverwendbare Artikel in Rechnung gestellt werden
# + ivt19 - ID für Alternativartikel
# + ivt20 - ID latexfreier Alternativartikel
# + ivt21 - Empfohlene Strategie für Nachbestellung
# + ivt22 - Empfohlener Sicherheitsbestand in Tagen
# + ivt23 - Empfohlener Maximalbestand in Tagen
# + ivt24 - Empfohlener Mindestvorrat
# + ivt25 - Empfohlene Bestellmenge
# + ivt26 - Kennzeichen für nicht-bestandsgeführtes OP-Lager
@hl7v2:SegmentDefinition {
    name: "IVT",
    required: false,
    maxReps: 0,
    fields: {
        "ivt1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ivt2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivt4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ivt6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "ivt8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivt14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ivt18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "ivt19": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "ivt20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "ivt21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ivt22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ivt26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        }
    }
}
public type IVT record {
    *hl7v2:Segment;
    string name = IVT_SEGMENT_NAME;
    SI ivt1 = "";
    EI ivt2 = {};
    ST ivt3 = "";
    EI ivt4 = {};
    ST ivt5 = "";
    CWE ivt6 = {};
    EI[] ivt7 = [{}];
    CWE ivt8 = {};
    CWE ivt9 = {};
    EI ivt10 = {};
    CNE ivt11 = {};
    CWE ivt12 = {};
    CP ivt13 = {};
    CWE ivt14 = {};
    CNE ivt15 = {};
    CNE ivt16 = {};
    CNE ivt17 = {};
    CP ivt18 = {};
    EI[] ivt19 = [{}];
    EI ivt20 = {};
    CWE ivt21 = {};
    NM ivt22 = "";
    NM ivt23 = "";
    NM ivt24 = "";
    NM ivt25 = "";
    CNE ivt26 = {};
};

public const IVT_SEGMENT_NAME = "IVT";