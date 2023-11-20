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
# + btx1 - BTX-Segmentnummer
# + btx2 - ID der Blutspende (für Blutkomponenten)
# + btx3 - Art der Blutkomponente
# + btx4 - Blutgruppe der Blutkomponente
# + btx5 - Art des kommerziellen Blutprodukts
# + btx6 - Hersteller des kommerziellen Blutprodukts
# + btx7 - Chargennummer des kommerziellen Blutprodukts
# + btx8 - Anzahl der Blutprodukte
# + btx9 - Verpackungseinheit des Blutprodukts
# + btx10 - Maßeinheit der Verpackungseinheit des Blutprodukts
# + btx11 - Transfusions-/Auslieferungsstatus des Blutprodukts
# + btx12 - Status von BTX-11
# + btx13 - Zeitpunkt der Statusbestimmung
# + btx14 - Verantwortlicher für die Transfusion
# + btx15 - Kontrollperson für die Transfusion
# + btx16 - Startzeitpunkt der Transfusion
# + btx17 - Endzeitpunkt der Transfusion
# + btx18 - Art der Komplikation (adverse Reaktion)
# + btx19 - Grund für Transfusionsunterbrechung
@hl7v2:SegmentDefinition {
    name: "BTX",
    required: false,
    maxReps: 0,
    fields: {
        "btx1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "btx2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "btx3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "btx4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "btx5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "btx6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "btx7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "btx8": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "btx9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "btx10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "btx11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "btx12": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "btx13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "btx14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "btx15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "btx16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "btx17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "btx18": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "btx19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type BTX record {
    *hl7v2:Segment;
    string name = BTX_SEGMENT_NAME;
    SI btx1 = "";
    EI btx2 = {};
    CNE btx3 = {};
    CNE btx4 = {};
    CWE btx5 = {};
    XON btx6 = {};
    EI btx7 = {};
    NM btx8 = "";
    NM btx9 = "";
    CWE btx10 = {};
    CWE btx11 = {};
    ID btx12 = "";
    DTM btx13 = "";
    XCN btx14 = {};
    XCN btx15 = {};
    DTM btx16 = "";
    DTM btx17 = "";
    CWE[] btx18 = [{}];
    CWE btx19 = {};
};

public const BTX_SEGMENT_NAME = "BTX";