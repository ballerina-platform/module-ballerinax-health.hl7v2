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
# + aut1 - Tarifbezeichnung Kostenträger
# + aut2 - Institutskennzeichen Kostenträger
# + aut3 - Institutsbezeichnung Kostenträger
# + aut4 - Gültigkeitsbeginn der Kostenübernahme
# + aut5 - Gültigkeitsende der Kostenübernahme
# + aut6 - Aktenzeichen
# + aut7 - Erstattungsgrenze
# + aut8 - angeforderte Anzahl an Behandlungen
# + aut9 - genehmigte Anzahl an Behandlungen
# + aut10 - Ausstellungsdatum
@hl7v2:SegmentDefinition {
    name: "AUT",
    required: false,
    maxReps: 0,
    fields: {
        "aut1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aut2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "aut3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "aut4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aut5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "aut6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "aut7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "aut8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aut9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "aut10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        }
    }
}
public type AUT record {
    *hl7v2:Segment;
    string name = AUT_SEGMENT_NAME;
    CWE aut1 = {};
    CWE aut2 = {};
    ST aut3 = "";
    DTM aut4 = "";
    DTM aut5 = "";
    EI aut6 = {};
    CP aut7 = {};
    NM aut8 = "";
    NM aut9 = "";
    DTM aut10 = "";
};

public const AUT_SEGMENT_NAME = "AUT";