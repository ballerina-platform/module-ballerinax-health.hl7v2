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
# + org1 - ORG-Segmentnummer
# + org2 - Organisationseinheit
# + org3 - Typ der Organisationseinheit - ORG
# + org4 - Merkmal primäre Organisationseinheit
# + org5 - ID des Arztes in der Organisationseinheit
# + org6 - Typ des Gesundheitsdienstleisters
# + org7 - Klassifizierung des Gesundheitsdienstleisters
# + org8 - Spezialgebiet des Gesundheitsdienstleisters
# + org9 - Tätigkeitszeitraum
# + org10 - Art des Beschäftigungsverhältnisses
# + org11 - Merkmal offizielle Bestätigung notwendig
# + org12 - Merkmal Ermächtigung zu ambulanter Behandlung
# + org13 - Kostenstelle
@hl7v2:SegmentDefinition {
    name: "ORG",
    required: false,
    maxReps: 0,
    fields: {
        "org1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "org2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "org3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "org4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "org5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "org6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "org7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "org8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "org9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "org10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "org11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "org12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "org13": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type ORG record {
    *hl7v2:Segment;
    string name = ORG_SEGMENT_NAME;
    SI org1 = "";
    CWE org2 = {};
    CWE org3 = {};
    ID org4 = "";
    CX org5 = {};
    CWE org6 = {};
    CWE org7 = {};
    CWE org8 = {};
    DR org9 = {};
    CWE org10 = {};
    ID org11 = "";
    ID org12 = "";
    CWE[] org13 = [{}];
};

public const ORG_SEGMENT_NAME = "ORG";