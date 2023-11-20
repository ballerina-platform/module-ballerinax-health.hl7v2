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
# + nte1 - Set ID - NTE
# + nte2 - Source of Comment
# + nte3 - Comment
# + nte4 - Comment Type
# + nte5 - Entered By
# + nte6 - Entered Date/Time
# + nte7 - Effective Start Date
# + nte8 - Expiration Date
@hl7v2:SegmentDefinition {
    name: "NTE",
    required: false,
    maxReps: 0,
    fields: {
        "nte1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "nte2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "nte3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: FT
        },
        "nte4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "nte5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XCN
        },
        "nte6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "nte7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "nte8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        }
    }
}
public type NTE record {
    *hl7v2:Segment;
    string name = NTE_SEGMENT_NAME;
    SI nte1 = "";
    ID nte2 = "";
    FT[] nte3 = [""];
    CWE nte4 = {};
    XCN nte5 = {};
    DTM nte6 = "";
    DTM nte7 = "";
    DTM nte8 = "";
};

public const NTE_SEGMENT_NAME = "NTE";