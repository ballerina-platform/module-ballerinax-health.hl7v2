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
# + cdm1 - Primärschlüssel
# + cdm2 - alternative Abrechnungsziffer
# + cdm3 - Kurzbezeichnung
# + cdm4 - Langbezeichnung
# + cdm5 - Bezeichnung überschreibbar
# + cdm6 - Leistungskette
# + cdm7 - Maßnahmen- / Operationsschlüssel
# + cdm8 - Aktiv / inaktiv
# + cdm9 - Artikel-/Lagernummer
# + cdm10 - Bewertungsfaktor
# + cdm11 - Vertragsnummer
# + cdm12 - Vertragspartner
# + cdm13 - Merkmal, ob im Zimmerpreis enthalten
@hl7v2:SegmentDefinition {
    name: "CDM",
    required: false,
    maxReps: 0,
    fields: {
        "cdm1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "cdm2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cdm3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cdm4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "cdm5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "cdm6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cdm7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CNE
        },
        "cdm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "cdm9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "cdm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "cdm11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "cdm12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "cdm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type CDM record {
    *hl7v2:Segment;
    string name = CDM_SEGMENT_NAME;
    CWE cdm1 = {};
    CWE[] cdm2 = [{}];
    ST cdm3 = "";
    ST cdm4 = "";
    IS cdm5 = "";
    CWE[] cdm6 = [{}];
    CNE[] cdm7 = [{}];
    ID cdm8 = "";
    CWE[] cdm9 = [{}];
    NM cdm10 = "";
    CX[] cdm11 = [{}];
    XON[] cdm12 = [{}];
    ID cdm13 = "";
};

public const CDM_SEGMENT_NAME = "CDM";