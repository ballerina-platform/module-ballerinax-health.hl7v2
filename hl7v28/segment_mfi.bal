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
# + mfi1 - ID des Stammdatenverzeichnisses (SDV)
# + mfi2 - Verantwortliche Institution (für SDV)
# + mfi3 - Umfang der Änderung (Datei bzw. Datensätze)
# + mfi4 - Zeitpunkt der Änderung
# + mfi5 - Zeitpunkt der Wirksamkeit der Änderung
# + mfi6 - Rückmeldungsumfang
@hl7v2:SegmentDefinition {
    name: "MFI",
    required: false,
    maxReps: 0,
    fields: {
        "mfi1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "mfi2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: HD
        },
        "mfi3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "mfi4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "mfi5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "mfi6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type MFI record {
    *hl7v2:Segment;
    string name = MFI_SEGMENT_NAME;
    CWE mfi1 = {};
    HD[] mfi2 = [{}];
    ID mfi3 = "";
    DTM mfi4 = "";
    DTM mfi5 = "";
    ID mfi6 = "";
};

public const MFI_SEGMENT_NAME = "MFI";