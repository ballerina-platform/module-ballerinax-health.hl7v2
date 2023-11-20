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
# + erq1 - Query tag
# + erq2 - Event identifier
# + erq3 - Input parameter list
@hl7v2:SegmentDefinition {
    name: "ERQ",
    required: false,
    maxReps: 0,
    fields: {
        "erq1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "erq2": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "erq3": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: QIP
        }
    }
}
public type ERQ record {
    *hl7v2:Segment;
    string name = ERQ_SEGMENT_NAME;
    ST erq1 = "";
    CE erq2 = {};
    QIP[] erq3 = [{}];
};

public const ERQ_SEGMENT_NAME = "ERQ";