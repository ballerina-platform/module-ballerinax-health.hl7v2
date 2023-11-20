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
# + al11 - Set ID - AL1
# + al12 - Allergy Type
# + al13 - Allergy Code/Mnemonic/ Description
# + al14 - Allergy Severity
# + al15 - Allergy Reaction
# + al16 - Identification Date
@hl7v2:SegmentDefinition {
    name: "AL1",
    required: false,
    maxReps: 0,
    fields: {
        "al11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "al12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "al13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "al14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "al15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "al16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DT
        }
    }
}
public type AL1 record {
    *hl7v2:Segment;
    string name = AL1_SEGMENT_NAME;
    SI al11 = "";
    ID al12 = "";
    CE al13 = {};
    ID al14 = "";
    ST al15 = "";
    DT al16 = "";
};

public const AL1_SEGMENT_NAME = "AL1";