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
# + msa1 - Bestätigungscode
# + msa2 - Nachrichtenkontrollnummer
# + msa3 - Klartexterläuterung
# + msa4 - Erwartete laufende Nummer der Nachricht
# + msa6 - Fehlerbeschreibung
# + msa7 - Anzahl anstehender Nachrichten
# + msa8 - Höchste Priorität in den anstehenden Nachrichten
@hl7v2:SegmentDefinition {
    name: "MSA",
    required: false,
    maxReps: 0,
    fields: {
        "msa1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msa2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msa3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "msa4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "msa6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "msa7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "msa8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type MSA record {
    *hl7v2:Segment;
    string name = MSA_SEGMENT_NAME;
    ID msa1 = "";
    ST msa2 = "";
    ST msa3 = "";
    NM msa4 = "";
    CNE msa6 = {};
    NM msa7 = "";
    ID msa8 = "";
};

public const MSA_SEGMENT_NAME = "MSA";