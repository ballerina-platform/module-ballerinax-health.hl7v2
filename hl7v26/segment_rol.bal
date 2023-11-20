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
# + rol1 - ID der individuellen Funktion
# + rol2 - Aktionscode
# + rol3 - Funktion
# + rol4 - ausübende Person zu ROL-3
# + rol5 - Zeitpunkt des Beginns zu ROL-3
# + rol6 - Zeitpunkt des Endes zu ROL-3
# + rol7 - Dauer der Funktion
# + rol8 - Begründung der Funktion
# + rol9 - Typ des Dienstleisters
# + rol10 - Art der Organisationseinheit
# + rol11 - Dienst- / Privatadresse/Geburtsadresse
# + rol12 - Telefonnummer
# + rol13 - Aufenthaltsort
@hl7v2:SegmentDefinition {
    name: "ROL",
    required: false,
    maxReps: 0,
    fields: {
        "rol1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "rol2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rol3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rol4": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "rol5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rol6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rol7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rol8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rol9": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rol10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rol11": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XAD
        },
        "rol12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XTN
        },
        "rol13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        }
    }
}
public type ROL record {
    *hl7v2:Segment;
    string name = ROL_SEGMENT_NAME;
    EI rol1 = {};
    ID rol2 = "";
    CWE rol3 = {};
    XCN[] rol4 = [{}];
    DTM rol5 = "";
    DTM rol6 = "";
    CWE rol7 = {};
    CWE rol8 = {};
    CWE[] rol9 = [{}];
    CWE rol10 = {};
    XAD[] rol11 = [{}];
    XTN[] rol12 = [{}];
    PL rol13 = {};
};

public const ROL_SEGMENT_NAME = "ROL";