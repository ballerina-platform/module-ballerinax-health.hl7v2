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

#  Holds error comments to acknowledgment messages.
#
# + name - Segment name 
# + err1 - Error Code and Location
@hl7v2:SegmentDefinition {
    name: "ERR",
    required: false,
    maxReps: 1,
    fields: {
        "err1": {
            required: true,
            length: 80,
            maxReps: -1,
            dataType: CM_ELD
        }
    }
}
public type ERR record {
    *hl7v2:Segment;
    string name = ERR_SEGMENT_NAME;
    CM_ELD[] err1 = [{}];
};

public const ERR_SEGMENT_NAME = "ERR";
