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
# + pda1 - Todesursache
# + pda2 - Sterbeort
# + pda3 - Merkmal Totenschein
# + pda4 - Zeitpunkt der Ausstellung des Totenscheins
# + pda5 - Totenschein ausgestellt durch
# + pda6 - Merkmal Autopsie
# + pda7 - Zeitraum des Autopsie
# + pda8 - Autopsie durchgeführt durch
# + pda9 - Merkmal Gerichtsmediziner
@hl7v2:SegmentDefinition {
    name: "PDA",
    required: false,
    maxReps: 0,
    fields: {
        "pda1": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pda2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: PL
        },
        "pda3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pda4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "pda5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "pda6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "pda7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DR
        },
        "pda8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "pda9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type PDA record {
    *hl7v2:Segment;
    string name = PDA_SEGMENT_NAME;
    CWE[] pda1 = [{}];
    PL pda2 = {};
    ID pda3 = "";
    DTM pda4 = "";
    XCN pda5 = {};
    ID pda6 = "";
    DR pda7 = {};
    XCN pda8 = {};
    ID pda9 = "";
};

public const PDA_SEGMENT_NAME = "PDA";