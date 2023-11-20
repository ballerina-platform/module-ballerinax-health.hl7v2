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
# + pss1 - Provider Product/Service Section Number
# + pss2 - Payer Product/Service Section Number
# + pss3 - Product/Service Section Sequence Number
# + pss4 - Billed Amount
# + pss5 - Section Description or Heading
@hl7v2:SegmentDefinition {
    name: "PSS",
    required: false,
    maxReps: 0,
    fields: {
        "pss1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pss2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pss3": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pss4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CP
        },
        "pss5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type PSS record {
    *hl7v2:Segment;
    string name = PSS_SEGMENT_NAME;
    EI pss1 = {};
    EI pss2 = {};
    SI pss3 = "";
    CP pss4 = {};
    ST pss5 = "";
};

public const PSS_SEGMENT_NAME = "PSS";