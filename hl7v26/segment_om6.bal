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
# + om61 - Laufende Nummer des OMx-Segment des gleichen Typs in einer Nachricht
# + om62 - Berechnungsregel
@hl7v2:SegmentDefinition {
    name: "OM6",
    required: false,
    maxReps: 0,
    fields: {
        "om61": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "om62": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TX
        }
    }
}
public type OM6 record {
    *hl7v2:Segment;
    string name = OM6_SEGMENT_NAME;
    NM om61 = "";
    TX om62 = "";
};

public const OM6_SEGMENT_NAME = "OM6";