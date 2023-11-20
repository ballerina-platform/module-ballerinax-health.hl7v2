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
# + om21 - Laufende Nummer des OMx-Segment des gleichen Typs in einer Nachricht
# + om22 - Maßeinheiten
# + om23 - Format (Länge und Dezimalstellen)
# + om24 - Entsprechende SI-Maßeinheiten
# + om25 - Umrechnungsfaktor nach SI-Einheiten
# + om26 - Referenzbereiche für numerische Ergebnisse
# + om27 - Kritischer Bereich bei numerischen Ergebnissen
# + om28 - Meßbereich
# + om29 - Kriterien für Delta Check
# + om210 - Kleinster bedeutsamer Unterschied
@hl7v2:SegmentDefinition {
    name: "OM2",
    required: false,
    maxReps: 0,
    fields: {
        "om21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        },
        "om24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: RFR
        },
        "om27": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: RFR
        },
        "om28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: RFR
        },
        "om29": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DLT
        },
        "om210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type OM2 record {
    *hl7v2:Segment;
    string name = OM2_SEGMENT_NAME;
    NM om21 = "";
    CWE om22 = {};
    NM[] om23 = [""];
    CWE om24 = {};
    TX om25 = "";
    RFR[] om26 = [{}];
    RFR[] om27 = [{}];
    RFR om28 = {};
    DLT[] om29 = [{}];
    NM om210 = "";
};

public const OM2_SEGMENT_NAME = "OM2";