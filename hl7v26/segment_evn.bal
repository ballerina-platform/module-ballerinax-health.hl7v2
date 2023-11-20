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
# + evn1 - Ereigniscode (veraltet; zweite Komponente von MSH-9 benutzen)
# + evn2 - Zeitpunkt der Erfassung (im System) des Ereignisses ins System
# + evn3 - Geplanter Zeitpunkt des Ereignisses
# + evn4 - Grund für das Auslösen des Ereignisses
# + evn5 - Sachbearbeiterkennzeichen
# + evn6 - Zeitpunkt des tatsächlichen Auftretens des Ereignisses
# + evn7 - Einrichtung, in der das Ereignis aufgetreten ist
@hl7v2:SegmentDefinition {
    name: "EVN",
    required: false,
    maxReps: 0,
    fields: {
        "evn1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "evn2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "evn3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "evn4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "evn5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "evn6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "evn7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: HD
        }
    }
}
public type EVN record {
    *hl7v2:Segment;
    string name = EVN_SEGMENT_NAME;
    ID evn1 = "";
    DTM evn2 = "";
    DTM evn3 = "";
    IS evn4 = "";
    XCN[] evn5 = [{}];
    DTM evn6 = "";
    HD evn7 = {};
};

public const EVN_SEGMENT_NAME = "EVN";