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
# + al11 - AL1-Segmentnummer
# + al12 - Art der Allergie
# + al13 - Allergiecode / -beschreibung
# + al14 - Schweregrad der Allergie
# + al15 - Allergiesymptome
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
            dataType: CWE
        },
        "al13": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "al14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "al15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        }
    }
}
public type AL1 record {
    *hl7v2:Segment;
    string name = AL1_SEGMENT_NAME;
    SI al11 = "";
    CWE al12 = {};
    CWE al13 = {};
    CWE al14 = {};
    ST[] al15 = [""];
};

public const AL1_SEGMENT_NAME = "AL1";