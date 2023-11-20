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
# + itm1 - ID des Artikels
# + itm2 - Artikelbeschreibung
# + itm3 - Verfügbarkeit des Artikels
# + itm4 - Typ des Artikels
# + itm5 - Kategorie des Artikels
# + itm6 - Kennzeichen Verfallsdatum vorhanden
# + itm7 - ID des Herstellers
# + itm8 - Herstellername
# + itm9 - Katalogbezeichnung des Herstellers
# + itm10 - Hersteller-ID auf dem Label
# + itm11 - Kennzeichen Artikel darf Patient berechnet werden
# + itm12 - Leistungsziffer / Buchungstext / Entgeltart EBM (GSG)
# + itm13 - Einzelpreis / Punktwert
# + itm14 - Kennzeichen Artikel im Lagerbestand
# + itm15 - Gefahrenhinweise für Material
# + itm16 - Zulassungsbehörde
# + itm17 - Kennzeichen Artikel enthält Latex
# + itm18 - Vorschrift die die Dokumentationpflicht begründet 
# + itm19 - Verrechnungsnummer des Artikels
# + itm20 - Mengenbudget Artikel
# + itm21 - Preisbudget Artikel
# + itm22 - Kennzeichen steuerpflichtiger Artikel 
# + itm23 - Frachtkosten berechenbar
# + itm24 - Kennzeichen Artikel ist ein Set
# + itm25 - ID des Artikelsets
# + itm26 - Kennzeichen abteilungsspezifische Verwendungsstatistik
# + itm27 - Maßnahmen- / Operationsschlüssel
# + itm28 - Modifikator zum Prozedurcode
# + itm29 - Hinweise zur Vorbehandlung der Probe
@hl7v2:SegmentDefinition {
    name: "ITM",
    required: false,
    maxReps: 0,
    fields: {
        "itm1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "itm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "itm14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "itm16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "itm17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "itm19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "itm20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "itm21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: MO
        },
        "itm22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "itm26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "itm28": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "itm29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type ITM record {
    *hl7v2:Segment;
    string name = ITM_SEGMENT_NAME;
    EI itm1 = {};
    ST itm2 = "";
    CWE itm3 = {};
    CWE itm4 = {};
    CWE itm5 = {};
    CNE itm6 = {};
    EI itm7 = {};
    ST itm8 = "";
    ST itm9 = "";
    CWE itm10 = {};
    CNE itm11 = {};
    CWE itm12 = {};
    CP itm13 = {};
    CNE itm14 = {};
    CWE itm15 = {};
    XON[] itm16 = [{}];
    CNE itm17 = {};
    CWE[] itm18 = [{}];
    IS itm19 = "";
    NM itm20 = "";
    MO itm21 = {};
    CNE itm22 = {};
    CNE itm23 = {};
    CNE itm24 = {};
    EI itm25 = {};
    CNE itm26 = {};
    CNE itm27 = {};
    CNE[] itm28 = [{}];
    CWE itm29 = {};
};

public const ITM_SEGMENT_NAME = "ITM";