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
# + bts1 - Batch Message Count
# + bts2 - Batch Comment
# + bts3 - Batch Totals
@hl7v2:SegmentDefinition {
    name: "BTS",
    required: false,
    maxReps: 0,
    fields: {
        "bts1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bts2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "bts3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: NM
        }
    }
}
public type BTS record {
    *hl7v2:Segment;
    string name = BTS_SEGMENT_NAME;
    ST bts1 = "";
    ST bts2 = "";
    NM[] bts3 = [""];
};

public const BTS_SEGMENT_NAME = "BTS";