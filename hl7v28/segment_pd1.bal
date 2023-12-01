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
# + pd11 - Besondere Lebensabhängigkeiten
# + pd12 - Besondere Lebensumstände
# + pd13 - nicht verwendet
# + pd14 - Withdrawn field
# + pd15 - Studentenstatus
# + pd16 - permanente Behinderung
# + pd17 - letzter Wille
# + pd18 - Einwilligung zur Organspende
# + pd19 - Einzelrechnung
# + pd110 - Hinweis auf doppelte Patientenstammdaten
# + pd111 - Auskunftsbeschränkung
# + pd112 - Merkmal Vertrauensschutz
# + pd113 - Vertrauensschutz ab
# + pd114 - Pfarrgemeinde
# + pd115 - Verfügung des Patienten
# + pd116 - Status im (Immunisierungs-)Register
# + pd117 - Status im Immunisierungsregister ab
# + pd118 - Auskunftsbeschränkung ab
# + pd119 - nicht verwendet
# + pd120 - nicht verwendet
# + pd121 - nicht verwendet
# + pd122 - Zeitpunkt der letzten Prüfung der Patientenverfügung
@hl7v2:SegmentDefinition {
    name: "PD1",
    required: false,
    maxReps: 0,
    fields: {
        "pd11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pd12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pd14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pd15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pd110": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pd111": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd112": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pd113": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pd114": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XON
        },
        "pd115": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pd116": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pd118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        },
        "pd119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pd122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type PD1 record {
    *hl7v2:Segment;
    string name = PD1_SEGMENT_NAME;
    CWE[] pd11 = [{}];
    CWE pd12 = {};
    XON[] pd13 = [{}];
    ST pd14 = "";
    CWE pd15 = {};
    CWE pd16 = {};
    CWE pd17 = {};
    CWE pd18 = {};
    ID pd19 = "";
    CX[] pd110 = [{}];
    CWE pd111 = {};
    ID pd112 = "";
    DT pd113 = "";
    XON[] pd114 = [{}];
    CWE[] pd115 = [{}];
    CWE pd116 = {};
    DT pd117 = "";
    DT pd118 = "";
    CWE pd119 = {};
    CWE pd120 = {};
    CWE pd121 = {};
    DT pd122 = "";
};

public const PD1_SEGMENT_NAME = "PD1";
