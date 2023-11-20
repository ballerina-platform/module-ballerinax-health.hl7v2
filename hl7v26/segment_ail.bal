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
# + ail1 - AIL-Segmentnummer
# + ail2 - Auszuführende Aktion
# + ail3 - Lokalisation der Ressource
# + ail4 - Lokalisationstype
# + ail5 - Lokalisationsgruppe
# + ail6 - Startzeitpunkt
# + ail7 - Startzeitverschiebung bezogen auf SCH-11
# + ail8 - Einheiten zu Datenelement 00891
# + ail9 - Dauer
# + ail10 - Einheiten zu Datenelement 00893
# + ail11 - Ersetzungserlaubnis
# + ail12 - Statuscode Leistungsstelle
@hl7v2:SegmentDefinition {
    name: "AIL",
    required: false,
    maxReps: 0,
    fields: {
        "ail1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "ail2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ail3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: PL
        },
        "ail4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ail5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ail6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "ail7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ail8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ail9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ail10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CNE
        },
        "ail11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: IS
        },
        "ail12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type AIL record {
    *hl7v2:Segment;
    string name = AIL_SEGMENT_NAME;
    SI ail1 = "";
    ID ail2 = "";
    PL[] ail3 = [{}];
    CWE ail4 = {};
    CWE ail5 = {};
    DTM ail6 = "";
    NM ail7 = "";
    CNE ail8 = {};
    NM ail9 = "";
    CNE ail10 = {};
    IS ail11 = "";
    CWE ail12 = {};
};

public const AIL_SEGMENT_NAME = "AIL";