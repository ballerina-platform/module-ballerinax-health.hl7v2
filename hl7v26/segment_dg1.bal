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
# + dg11 - DG1-Segmentnummer
# + dg13 - Diagnoseschlüssel
# + dg15 - Zeitpunkt der Diagnosestellung
# + dg16 - Diagnosetyp
# + dg115 - Diagnosepriorität (1 = Hauptdiagnose, 2..n = weitere Diagnosen)
# + dg116 - Verantwortlicher Arzt
# + dg117 - Art der Diagnose
# + dg118 - Merkmal der Vertraulichkeit der Diagnose
# + dg119 - Zeitpunkt des Attestes
# + dg120 - ID der Diagnose
# + dg121 - Diagnose Aktionscode
# + dg122 - Verweis auf ätiologische (Kreuz) Diagnose
# + dg123 - DRG - Code des CCL Wertes
# + dg124 - Indikator Verwendung in DRG Grouping
# + dg125 - DRG Gültigkeit der Diagnose
# + dg126 - Indikator Diagnose bereits bei Aufnahme bekannt
@hl7v2:SegmentDefinition {
    name: "DG1",
    required: false,
    maxReps: 0,
    fields: {
        "dg11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "dg13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "dg15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "dg16": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "dg115": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg116": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "dg117": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "dg118": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg119": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "dg120": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "dg121": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg122": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "dg123": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "dg124": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "dg125": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "dg126": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        }
    }
}
public type DG1 record {
    *hl7v2:Segment;
    string name = DG1_SEGMENT_NAME;
    SI dg11 = "";
    CWE dg13 = {};
    DTM dg15 = "";
    IS dg16 = "";
    ID dg115 = "";
    XCN[] dg116 = [{}];
    IS dg117 = "";
    ID dg118 = "";
    DTM dg119 = "";
    EI dg120 = {};
    ID dg121 = "";
    EI dg122 = {};
    CWE dg123 = {};
    ID dg124 = "";
    IS dg125 = "";
    IS dg126 = "";
};

public const DG1_SEGMENT_NAME = "DG1";