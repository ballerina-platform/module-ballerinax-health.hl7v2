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
# + aig1 - AIG-Segmentnummer
# + aig2 - Auszuführende Aktion
# + aig3 - Ressource ID
# + aig4 - Ressource Type
# + aig5 - Ressourcengruppe
# + aig6 - Ressourcenmenge
# + aig7 - Ressourceneinheit zu Datenelement 0900
# + aig8 - Startzeitpunkt
# + aig9 - Startzeitverschiebung bezogen auf SCH-11
# + aig10 - Einheiten zu Datenelement 00891
# + aig11 - Dauer
# + aig12 - Einheiten zu Datenelement 00893
# + aig13 - Ersetzungserlaubnis
# + aig14 - Statuscode Leistungsstelle
@hl7v2:SegmentDefinition {
    name: "AIG",
    required: false,
    maxReps: 0,
    fields: {
        "aig1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "aig2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "aig3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aig4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aig5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "aig6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aig7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "aig8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aig9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aig10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "aig11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aig12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "aig13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "aig14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type AIG record {
    *hl7v2:Segment;
    string name = AIG_SEGMENT_NAME;
    SI aig1 = "";
    ID aig2 = "";
    CWE aig3 = {};
    CWE aig4 = {};
    CWE[] aig5 = [{}];
    NM aig6 = "";
    CNE aig7 = {};
    DTM aig8 = "";
    NM aig9 = "";
    CNE aig10 = {};
    NM aig11 = "";
    CNE aig12 = {};
    IS aig13 = "";
    CWE aig14 = {};
};

public const AIG_SEGMENT_NAME = "AIG";