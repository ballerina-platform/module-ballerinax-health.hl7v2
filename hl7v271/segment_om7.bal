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
# + om71 - Laufende Nummer des OMx-Segment des gleichen Typs in einer Nachricht
# + om72 - Leistungsidentifikation
# + om73 - ID der Kategorie
# + om74 - Beschreibung der Kategorie
# + om75 - Synonym für die Kategorie
# + om76 - Startzeitpunkt der Verfügbarkeit
# + om77 - Endzeitpunkt der Verfügbarkeit
# + om78 - normale Dauer
# + om79 - Einheiten für Dauer
# + om710 - normale Wiederholungsfrequenz
# + om711 - Merkmal Einwilligung erforderlich
# + om712 - ID der Einwilligung
# + om713 - Einwilligung gültig ab
# + om714 - Einwilligung gültig bis
# + om715 - Einwilligungszeitraum
# + om716 - Einheit des Einwilligungszeitraums
# + om717 - Wartezeit nach Einwilligung
# + om718 - Einheit der Wartezeit nach Einwilligung
# + om719 - Zeitpunkt der letzten, die Vergleichbarkeit von Erg. beeinflussenden Änderung
# + om720 - Eingegeben durch
# + om721 - Ort der Auftragsannahme
# + om722 - Status im Hauskatalog
# + om723 - Merkmal spezielle Anforderung
# + om724 - Primärschlüssel
@hl7v2:SegmentDefinition {
    name: "OM7",
    required: false,
    maxReps: 0,
    fields: {
        "om71": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om72": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om73": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om74": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        },
        "om75": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "om76": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om77": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om78": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om79": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om710": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om711": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om712": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om713": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om714": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om715": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om716": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om717": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om718": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om719": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "om720": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "om721": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PL
        },
        "om722": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om723": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "om724": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type OM7 record {
    *hl7v2:Segment;
    string name = OM7_SEGMENT_NAME;
    NM om71 = "";
    CWE om72 = {};
    CWE[] om73 = [{}];
    TX om74 = "";
    ST[] om75 = [""];
    DTM om76 = "";
    DTM om77 = "";
    NM om78 = "";
    CWE om79 = {};
    CWE om710 = {};
    ID om711 = "";
    CWE om712 = {};
    DTM om713 = "";
    DTM om714 = "";
    NM om715 = "";
    CWE om716 = {};
    NM om717 = "";
    CWE om718 = {};
    DTM om719 = "";
    XCN om720 = {};
    PL[] om721 = [{}];
    CWE om722 = {};
    ID om723 = "";
    CWE[] om724 = [{}];
};

public const OM7_SEGMENT_NAME = "OM7";