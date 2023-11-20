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
# + rfi1 - Request Date
# + rfi2 - Response Due Date
# + rfi3 - Patient Consent
# + rfi4 - Date Additional Information Was Submitted
@hl7v2:SegmentDefinition {
    name: "RFI",
    required: false,
    maxReps: 0,
    fields: {
        "rfi1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rfi2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "rfi3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "rfi4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        }
    }
}
public type RFI record {
    *hl7v2:Segment;
    string name = RFI_SEGMENT_NAME;
    DTM rfi1 = "";
    DTM rfi2 = "";
    ID rfi3 = "";
    DTM rfi4 = "";
};

public const RFI_SEGMENT_NAME = "RFI";