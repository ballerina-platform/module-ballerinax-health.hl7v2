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
# + aip1 - AIP-Segmentnummer
# + aip2 - Auszuführende Aktion
# + aip3 - Personal-ID
# + aip4 - Ressource Type
# + aip5 - Ressourcengruppe
# + aip6 - Startzeitpunkt
# + aip7 - Startzeitverschiebung bezogen auf SCH-11
# + aip8 - Einheiten zu Datenelement 00891
# + aip9 - Dauer
# + aip10 - Einheiten zu Datenelement 00893
# + aip11 - Ersetzungserlaubnis
# + aip12 - Statuscode Leistungsstelle
@hl7v2:SegmentDefinition {
    name: "AIP",
    required: false,
    maxReps: 0,
    fields: {
        "aip1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "aip2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "aip3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "aip4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aip5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aip6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aip7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aip8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "aip9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aip10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "aip11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "aip12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type AIP record {
    *hl7v2:Segment;
    string name = AIP_SEGMENT_NAME;
    SI aip1 = "";
    ID aip2 = "";
    XCN[] aip3 = [{}];
    CWE aip4 = {};
    CWE aip5 = {};
    DTM aip6 = "";
    NM aip7 = "";
    CNE aip8 = {};
    NM aip9 = "";
    CNE aip10 = {};
    IS aip11 = "";
    CWE aip12 = {};
};

public const AIP_SEGMENT_NAME = "AIP";