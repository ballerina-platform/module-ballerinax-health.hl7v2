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
# + pkg1 - PKG-Segmentnummer
# + pkg2 - Packungseinheiten
# + pkg3 - Standard-Packungseinheite für Auftrag verwenden
# + pkg4 - Packungsgröße
# + pkg5 - Preis
# + pkg6 - zukünftiger Preis
# + pkg7 - Gültigkeitsbeginn für zukünftigen Preis
@hl7v2:SegmentDefinition {
    name: "PKG",
    required: false,
    maxReps: 0,
    fields: {
        "pkg1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pkg2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pkg3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "pkg4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "pkg5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "pkg6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "pkg7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        }
    }
}
public type PKG record {
    *hl7v2:Segment;
    string name = PKG_SEGMENT_NAME;
    SI pkg1 = "";
    CWE pkg2 = {};
    CNE pkg3 = {};
    NM pkg4 = "";
    CP pkg5 = {};
    CP pkg6 = {};
    DTM pkg7 = "";
};

public const PKG_SEGMENT_NAME = "PKG";