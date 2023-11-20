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
# + om31 - Laufende Nummer des OMx-Segment des gleichen Typs in einer Nachricht
# + om32 - Bevorzugtes Schlüsselsystem
# + om33 - Gültige Schlüsselwerte
# + om34 - Schlüsselwerte für normale Werte
# + om35 - Schlüsselwerte für pathologische Werte
# + om36 - Schlüsselwerte für kritisch-pathologische Werte
# + om37 - Ergebnisformat (Datentyp von Feld OBX-5)
@hl7v2:SegmentDefinition {
    name: "OM3",
    required: false,
    maxReps: 0,
    fields: {
        "om31": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om32": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "om33": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om34": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om35": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om36": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "om37": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type OM3 record {
    *hl7v2:Segment;
    string name = OM3_SEGMENT_NAME;
    NM om31 = "";
    CWE om32 = {};
    CWE[] om33 = [{}];
    CWE[] om34 = [{}];
    CWE[] om35 = [{}];
    CWE[] om36 = [{}];
    ID om37 = "";
};

public const OM3_SEGMENT_NAME = "OM3";