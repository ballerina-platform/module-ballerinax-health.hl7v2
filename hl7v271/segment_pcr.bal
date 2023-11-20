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
# + pcr1 - Involviertes Produkt
# + pcr2 - Generisches Produkt
# + pcr3 - Produkttyp
# + pcr4 - Gesamtdauer der Therapie
# + pcr5 - Herstellungsdatum des Produkts
# + pcr6 - Verfallsdatum des Produkts
# + pcr7 - Datum der Implantation des Produktes
# + pcr8 - Datum der Explantation des Produktes
# + pcr9 - Einwegprodukt
# + pcr10 - Indikation für die Anwendung des Produkts
# + pcr11 - Produktproblem
# + pcr12 - Serien- oder Chargennummer des Produkts
# + pcr13 - Produkt verfügbar für Inspektionen
# + pcr14 - Produktprüfung durchgeführt
# + pcr15 - Status der Produktprüfung
# + pcr16 - Ergebnis der Produktprüfung
# + pcr17 - Quelle des geprüften Produkts
# + pcr18 - Zeitpunkt der Rückgabe an den Hersteller
# + pcr19 - Qualifikation des Bedieners
# + pcr20 - Einschätzung des Zusammenhangs
# + pcr21 - Ausgelöste Reaktion
# + pcr22 - Angaben zur Kausalität
# + pcr23 - Mechanismus einer indirekten Exposition
@hl7v2:SegmentDefinition {
    name: "PCR",
    required: false,
    maxReps: 0,
    fields: {
        "pcr1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "pcr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pcr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr12": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: ST
        },
        "pcr13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pcr17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pcr18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pcr19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pcr20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pcr21": {
            required: false,
            length: 1,
            maxReps: 6,
            dataType: ID
        },
        "pcr22": {
            required: false,
            length: 1,
            maxReps: 6,
            dataType: ID
        },
        "pcr23": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: ID
        }
    }
}
public type PCR record {
    *hl7v2:Segment;
    string name = PCR_SEGMENT_NAME;
    CWE pcr1 = {};
    IS pcr2 = "";
    CWE pcr3 = {};
    CQ pcr4 = {};
    DTM pcr5 = "";
    DTM pcr6 = "";
    DTM pcr7 = "";
    DTM pcr8 = "";
    CWE pcr9 = {};
    CWE pcr10 = {};
    CWE pcr11 = {};
    ST pcr12 = "";
    CWE pcr13 = {};
    CWE pcr14 = {};
    CWE pcr15 = {};
    CWE pcr16 = {};
    ID pcr17 = "";
    DTM pcr18 = "";
    ID pcr19 = "";
    ID pcr20 = "";
    ID pcr21 = "";
    ID pcr22 = "";
    ID pcr23 = "";
};

public const PCR_SEGMENT_NAME = "PCR";