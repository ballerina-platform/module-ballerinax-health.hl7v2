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
# + pdc1 - Hersteller/Lieferant
# + pdc2 - Land
# + pdc3 - Handelsname
# + pdc4 - Produktlinie/Gerätefamilie
# + pdc5 - Generischer Name
# + pdc6 - Modellbezeichnung
# + pdc7 - Produktbezeichnung lt. Katalog
# + pdc8 - Andere Bezeichnung
# + pdc9 - Offizieller Produkt-Code
# + pdc10 - 1256IDHL70330HL7Marketing Basis
# + pdc11 - 1257STHL7Marketing Approval ID
# + pdc12 - Ausgewiesene Liefergarantie
# + pdc13 - Voraussichtliche Liefergarantie
# + pdc14 - Zeitpunkt Erstverkauf
# + pdc15 - Zeitpunkt Letztverkauf
@hl7v2:SegmentDefinition {
    name: "PDC",
    required: false,
    maxReps: 0,
    fields: {
        "pdc1": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pdc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pdc3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pdc6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pdc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "pdc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pdc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pdc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pdc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pdc13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "pdc14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pdc15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        }
    }
}
public type PDC record {
    *hl7v2:Segment;
    string name = PDC_SEGMENT_NAME;
    XON[] pdc1 = [{}];
    CWE pdc2 = {};
    ST pdc3 = "";
    ST pdc4 = "";
    CWE pdc5 = {};
    ST[] pdc6 = [""];
    ST pdc7 = "";
    ST[] pdc8 = [""];
    CWE pdc9 = {};
    ID pdc10 = "";
    ST pdc11 = "";
    CQ pdc12 = {};
    CQ pdc13 = {};
    DTM pdc14 = "";
    DTM pdc15 = "";
};

public const PDC_SEGMENT_NAME = "PDC";