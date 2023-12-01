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
# + ecd1 - Referenznummer des Befehls
# + ecd2 - Fernsteuerbefehl
# + ecd3 - Merkmal Antwort erforderlich
# + ecd4 - Withdrawn field
# + ecd5 - Parameter
@hl7v2:SegmentDefinition {
    name: "ECD",
    required: false,
    maxReps: 0,
    fields: {
        "ecd1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "ecd2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "ecd3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ecd4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "ecd5": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: TX
        }
    }
}
public type ECD record {
    *hl7v2:Segment;
    string name = ECD_SEGMENT_NAME;
    NM ecd1 = "";
    CWE ecd2 = {};
    ID ecd3 = "";
    ST ecd4 = "";
    TX[] ecd5 = [""];
};

public const ECD_SEGMENT_NAME = "ECD";
