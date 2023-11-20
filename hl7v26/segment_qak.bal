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
# + qak1 - Abfragekennung/-kontrollnummer
# + qak2 - Antwortstatus
# + qak3 - Abfragename
# + qak4 - Gesamtzahl der Treffer
# + qak5 - Anzahl der Treffer in dieser Nachricht
# + qak6 - verbleibende Anzahl der Treffer
@hl7v2:SegmentDefinition {
    name: "QAK",
    required: false,
    maxReps: 0,
    fields: {
        "qak1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "qak2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "qak3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "qak4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "qak5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "qak6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        }
    }
}
public type QAK record {
    *hl7v2:Segment;
    string name = QAK_SEGMENT_NAME;
    ST qak1 = "";
    ID qak2 = "";
    CWE qak3 = {};
    NM qak4 = "";
    NM qak5 = "";
    NM qak6 = "";
};

public const QAK_SEGMENT_NAME = "QAK";