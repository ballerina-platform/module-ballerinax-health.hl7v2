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
# + acc1 - Accident Date/Time
# + acc2 - Accident Code
# + acc3 - Accident Location
# + acc4 - Auto Accident State
# + acc5 - Accident Job Related Indicator
# + acc6 - Accident Death Indicator
@hl7v2:SegmentDefinition {
    name: "ACC",
    required: false,
    maxReps: 0,
    fields: {
        "acc1": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "acc2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "acc3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "acc4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "acc5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "acc6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ID
        }
    }
}
public type ACC record {
    *hl7v2:Segment;
    string name = ACC_SEGMENT_NAME;
    TS acc1 = {};
    CE acc2 = {};
    ST acc3 = "";
    CE acc4 = {};
    ID acc5 = "";
    ID acc6 = "";
};

public const ACC_SEGMENT_NAME = "ACC";