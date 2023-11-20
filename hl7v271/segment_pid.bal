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
# + pid1 - PID-Segmentnummer
# + pid3 - Patienten-ID-Liste
# + pid5 - Patientenname
# + pid6 - veraltet; korrespondierendes Namensfeld verwenden
# + pid7 - Geburtszeitpunkt
# + pid8 - Geschlecht
# + pid10 - Rasse
# + pid11 - Anschrift des Patienten
# + pid13 - Telefonnummer des Patienten (privat)
# + pid14 - Telefonnummer des Patienten (dienstlich)
# + pid15 - Muttersprache
# + pid16 - Familienstand
# + pid17 - Religion
# + pid18 - Abrechnungsnummer / Debitorenkontonummer
# + pid21 - Patientennummer der Mutter des Patienten
# + pid22 - Ethnische Zugehörigkeit
# + pid23 - Geburtsort des Patienten
# + pid24 - Merkmal Mehrlingsgeburt
# + pid25 - Reihenfolge bei Mehrlingsgeburt
# + pid26 - Länderkennzeichen / Staatsangehörigkeit
# + pid27 - Beruf / Tätigkeit des Patienten
# + pid29 - Zeitpunkt des Todes
# + pid30 - Merkmal Todesfall
# + pid31 - Kennzeichen Identität unbekannt
# + pid32 - Zuverlässigkeit der Identität
# + pid33 - Zeitpunkt der letzten Aktualisierung
# + pid34 - durchführende Einrichtung der letzten Aktualisierung
# + pid35 - Spezies
# + pid36 - Rasse/Zucht
# + pid37 - Züchtungsstamm
# + pid38 - Grund der Züchtung
# + pid39 - Stammeszugehörigkeit
# + pid40 - 2289XTNHL7Patient Telecommunication Information
@hl7v2:SegmentDefinition {
    name: "PID",
    required: false,
    maxReps: 0,
    fields: {
        "pid1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pid3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid5": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XPN
        },
        "pid7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pid8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid10": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "pid13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pid14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "pid15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "pid21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CX
        },
        "pid22": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid24": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pid26": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pid30": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pid32": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid33": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pid34": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        },
        "pid35": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid36": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pid37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "pid38": {
            required: false,
            length: 1,
            maxReps: 2,
            dataType: CWE
        },
        "pid39": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pid40": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        }
    }
}
public type PID record {
    *hl7v2:Segment;
    string name = PID_SEGMENT_NAME;
    SI pid1 = "";
    CX[] pid3 = [{}];
    XPN[] pid5 = [{}];
    XPN[] pid6 = [{}];
    DTM pid7 = "";
    CWE pid8 = {};
    CWE[] pid10 = [{}];
    XAD[] pid11 = [{}];
    XTN[] pid13 = [{}];
    XTN[] pid14 = [{}];
    CWE pid15 = {};
    CWE pid16 = {};
    CWE pid17 = {};
    CX pid18 = {};
    CX[] pid21 = [{}];
    CWE[] pid22 = [{}];
    ST pid23 = "";
    ID pid24 = "";
    NM pid25 = "";
    CWE[] pid26 = [{}];
    CWE pid27 = {};
    DTM pid29 = "";
    ID pid30 = "";
    ID pid31 = "";
    CWE[] pid32 = [{}];
    DTM pid33 = "";
    HD pid34 = {};
    CWE pid35 = {};
    CWE pid36 = {};
    ST pid37 = "";
    CWE pid38 = {};
    CWE[] pid39 = [{}];
    XTN[] pid40 = [{}];
};

public const PID_SEGMENT_NAME = "PID";