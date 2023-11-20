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
# + psh1 - Bereichtstyp
# + psh2 - Berichtsform
# + psh3 - Berichtszeitpunkt
# + psh4 - Beginn des Berichtzeitraums
# + psh5 - Ende des Berichtszeitraums
# + psh6 - Hergestellte Menge
# + psh7 - Ausgelieferte Menge
# + psh8 - Methode zur Bestimmung der ausgelieferten Menge
# + psh9 - Kommentar zur ausgelieferten Menge
# + psh10 - In Gebrauch befindliche Menge
# + psh11 - Methode zur Bestimmung der in Gebrauch befindlichen Menge
# + psh12 - Kommentar zur in Gebrauch befindlichen Menge
# + psh13 - Anzahl der bisherigen Berichte durch die Abteilung
# + psh14 - Anzahl der bisherigen Berichte durch den Lieferanten
@hl7v2:SegmentDefinition {
    name: "PSH",
    required: false,
    maxReps: 0,
    fields: {
        "psh1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psh2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "psh3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psh4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psh5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "psh6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psh9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "psh10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "psh11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "psh12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: FT
        },
        "psh13": {
            required: false,
            length: 1,
            maxReps: 8,
            dataType: NM
        },
        "psh14": {
            required: false,
            length: 1,
            maxReps: 8,
            dataType: NM
        }
    }
}
public type PSH record {
    *hl7v2:Segment;
    string name = PSH_SEGMENT_NAME;
    ST psh1 = "";
    ST psh2 = "";
    DTM psh3 = "";
    DTM psh4 = "";
    DTM psh5 = "";
    CQ psh6 = {};
    CQ psh7 = {};
    ID psh8 = "";
    FT psh9 = "";
    CQ psh10 = {};
    ID psh11 = "";
    FT psh12 = "";
    NM psh13 = "";
    NM psh14 = "";
};

public const PSH_SEGMENT_NAME = "PSH";