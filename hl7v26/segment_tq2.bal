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
# + tq21 - TQ2-Segmentnummer
# + tq22 - zeitliche Abhängigkeit
# + tq23 - zugeordnete Auftragsnummer des Auftraggebers
# + tq24 - zugeordnete Auftragsnummer des Auftragnehmers
# + tq25 - zugeordnete Auftragsgruppennummer
# + tq26 - Festlegung zeitlicher Abhängigkeit
# + tq27 - Merkmal Erster/Letzter einer zyklischen Gruppe
# + tq28 - Festlegung des zeitlichen Abstandes
# + tq29 - maximale Wiederholungszahl einer zyklischen Gruppe
# + tq210 - Beziehung zu anderen Aufträgen
@hl7v2:SegmentDefinition {
    name: "TQ2",
    required: false,
    maxReps: 0,
    fields: {
        "tq21": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "tq22": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tq23": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "tq24": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "tq25": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: EI
        },
        "tq26": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tq27": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "tq28": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "tq29": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "tq210": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type TQ2 record {
    *hl7v2:Segment;
    string name = TQ2_SEGMENT_NAME;
    SI tq21 = "";
    ID tq22 = "";
    EI[] tq23 = [{}];
    EI[] tq24 = [{}];
    EI[] tq25 = [{}];
    ID tq26 = "";
    ID tq27 = "";
    CQ tq28 = {};
    NM tq29 = "";
    ID tq210 = "";
};

public const TQ2_SEGMENT_NAME = "TQ2";