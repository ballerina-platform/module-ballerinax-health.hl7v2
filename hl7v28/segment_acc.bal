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
# + acc1 - Unfallzeitpunkt
# + acc2 - Art des Unfalls
# + acc3 - Unfallort
# + acc4 - Bundesland
# + acc5 - Merkmal Berufsunfall
# + acc6 - Merkmal Unfalltod
# + acc7 - Eingegeben durch
# + acc8 - Beschreibung des Unfalls
# + acc9 - eingeliefert durch
# + acc10 - Merkmal Polizei benachrichtigt
# + acc11 - Adresse des Unfallorts
# + acc12 - 2374NMHL7Degree of patient liability
@hl7v2:SegmentDefinition {
    name: "ACC",
    required: false,
    maxReps: 0,
    fields: {
        "acc1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "acc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "acc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "acc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "acc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "acc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "acc7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "acc8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "acc9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "acc10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "acc11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "acc12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type ACC record {
    *hl7v2:Segment;
    string name = ACC_SEGMENT_NAME;
    DTM acc1 = "";
    CWE acc2 = {};
    ST acc3 = "";
    CWE acc4 = {};
    ID acc5 = "";
    ID acc6 = "";
    XCN acc7 = {};
    ST acc8 = "";
    ST acc9 = "";
    ID acc10 = "";
    XAD acc11 = {};
    NM acc12 = "";
};

public const ACC_SEGMENT_NAME = "ACC";