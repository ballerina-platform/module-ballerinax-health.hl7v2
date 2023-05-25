
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
# + aff1 - Segment Record Field
# + aff2 - Segment Record Field
# + aff3 - Segment Record Field
# + aff4 - Segment Record Field
# + aff5 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "AFF",
    required: false,
    maxReps: 0,
    fields: {
        "aff1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "aff2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: XON
        },
        "aff3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: XAD
        },
        "aff4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: DR
        },
        "aff5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        }
    }
}
public type AFF record {
    *hl7v2:Segment;
    string name = AFF_SEGMENT_NAME;
    SI aff1 = "";
    XON aff2 = {};
    XAD aff3 = {};
    DR[] aff4 = [{}];
    ST aff5 = "";
};

public const AFF_SEGMENT_NAME = "AFF";