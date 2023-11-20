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
# + pac1 - Set Id - PAC
# + pac2 - Package ID
# + pac3 - Parent Package ID
# + pac4 - Position in Parent Package
# + pac5 - Package Type
# + pac6 - Package Condition
# + pac7 - Package Handling Code
# + pac8 - Package Risk Code
@hl7v2:SegmentDefinition {
    name: "PAC",
    required: false,
    maxReps: 0,
    fields: {
        "pac1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: SI
        },
        "pac2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pac3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "pac4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NA
        },
        "pac5": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "pac6": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pac7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "pac8": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        }
    }
}
public type PAC record {
    *hl7v2:Segment;
    string name = PAC_SEGMENT_NAME;
    SI pac1 = "";
    EI pac2 = {};
    EI pac3 = {};
    NA pac4 = {};
    CWE pac5 = {};
    CWE[] pac6 = [{}];
    CWE[] pac7 = [{}];
    CWE[] pac8 = [{}];
};

public const PAC_SEGMENT_NAME = "PAC";