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
# + rxc1 - Komponententyp (Grundsubstanz / Additiv)
# + rxc2 - Komponente
# + rxc3 - Menge
# + rxc4 - Maßeinheit
# + rxc5 - Wirkstoffmenge der Komponente
# + rxc6 - Einheit zu Feld 5
# + rxc7 - zusätzlicher Code
# + rxc8 - Lösungsvolumen für Komponente
# + rxc9 - Maßeinheit des Lösungsvolumens für Komponente
@hl7v2:SegmentDefinition {
    name: "RXC",
    required: false,
    maxReps: 0,
    fields: {
        "rxc1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rxc2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxc3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxc4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "rxc7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "rxc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "rxc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type RXC record {
    *hl7v2:Segment;
    string name = RXC_SEGMENT_NAME;
    ID rxc1 = "";
    CWE rxc2 = {};
    NM rxc3 = "";
    CWE rxc4 = {};
    NM rxc5 = "";
    CWE rxc6 = {};
    CWE[] rxc7 = [{}];
    NM rxc8 = "";
    CWE rxc9 = {};
};

public const RXC_SEGMENT_NAME = "RXC";