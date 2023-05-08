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

# Message acknowledgement segment.
#
# + name - Segment name  
# + msa1 - Acknowledgement code  
# + msa2 - Message Control ID  
# + msa3 - Text Message  
# + msa4 - Expected Sequence Number  
# + msa5 - Delayed Acknowledgement Type  
# + msa6 - Error Condition
@hl7v2:SegmentDefinition {
    name: "MSA",
    required: false,
    maxReps: 1,
    fields: {
        "msa1": {
            required: true,
            length: 2,
            maxReps: 1,
            dataType: ID
        },
        "msa2": {
            required: true,
            length: 20,
            maxReps: 1,
            dataType: ST
        },
        "msa3": {
            required: false,
            length: 80,
            maxReps: 1,
            dataType: ST
        },
        "msa4": {
            required: false,
            length: 15,
            maxReps: 1,
            dataType: NM
        },
        "msa5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "msa6": {
            required: false,
            length: 100,
            maxReps: 1,
            dataType: CE
        }
    }
}
public type MSA record {
    *hl7v2:Segment;
    string name = MSA_SEGMENT_NAME;
    ID msa1 = "";
    ST msa2 = "";
    ST msa3 = "";
    NM msa4 = -1;
    ID msa5 = "";
    CE msa6 = {};
};

public const MSA_SEGMENT_NAME = "MSA";
