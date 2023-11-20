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
# + spm1 - SPM-Segmentnummer
# + spm2 - ID der Probe
# + spm3 - ID der Primärprobe
# + spm4 - Probenmaterial
# + spm5 - zusätzliche Kategorisierung des Probenmaterials
# + spm6 - Probenzusätze
# + spm7 - Art der Probennahme
# + spm8 - Ort der Probennahme (Körperteil)
# + spm9 - zusätzliche Kategorisierung zum Ort d. Probennahme
# + spm10 - Zugangsweg bei Probennahme
# + spm11 - Probenkategorie
# + spm12 - Probenvolumen/-menge
# + spm13 - Anzahl Proben in dieser Gruppe
# + spm14 - Probenbeschreibung
# + spm15 - Hinweise zum Umgang mit der Probe
# + spm16 - Art der Gefährdung durch die Probe
# + spm17 - Zeitpunkt der Probennahme
# + spm18 - Zeitpunkt des Eingangs im Labor
# + spm19 - Verfallszeitpunkt der Probe
# + spm20 - Merkmal Probe verfügbar
# + spm21 - Grund für Zurückweisung der Probe
# + spm22 - Probenqualität
# + spm23 - Eignung der Probe
# + spm24 - Probenzustand
# + spm25 - aktuelle Probenmenge
# + spm26 - Anzahl Probengefäße
# + spm27 - Typ des Probengefäßes
# + spm28 - Zustand des Probengefäßes
# + spm29 - Beziehung zur Primärprobe
@hl7v2:SegmentDefinition {
    name: "SPM",
    required: false,
    maxReps: 0,
    fields: {
        "spm1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "spm2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EIP
        },
        "spm3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EIP
        },
        "spm4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "spm13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "spm14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        },
        "spm15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm16": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "spm18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "spm19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "spm20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "spm21": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm23": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "spm25": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "spm26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "spm27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "spm29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type SPM record {
    *hl7v2:Segment;
    string name = SPM_SEGMENT_NAME;
    SI spm1 = "";
    EIP spm2 = {};
    EIP[] spm3 = [{}];
    CWE spm4 = {};
    CWE[] spm5 = [{}];
    CWE[] spm6 = [{}];
    CWE spm7 = {};
    CWE spm8 = {};
    CWE[] spm9 = [{}];
    CWE spm10 = {};
    CWE[] spm11 = [{}];
    CQ spm12 = {};
    NM spm13 = "";
    ST[] spm14 = [""];
    CWE[] spm15 = [{}];
    CWE[] spm16 = [{}];
    DR spm17 = {};
    DTM spm18 = "";
    DTM spm19 = "";
    ID spm20 = "";
    CWE[] spm21 = [{}];
    CWE spm22 = {};
    CWE spm23 = {};
    CWE[] spm24 = [{}];
    CQ spm25 = {};
    NM spm26 = "";
    CWE spm27 = {};
    CWE spm28 = {};
    CWE spm29 = {};
};

public const SPM_SEGMENT_NAME = "SPM";