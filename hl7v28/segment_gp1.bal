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
# + gp11 - nicht verwendet
# + gp12 - nicht verwendet
# + gp13 - nicht verwendet
# + gp14 - nicht verwendet
# + gp15 - Anerkannte zusätzliche Kosten (nur DRG)
@hl7v2:SegmentDefinition {
    name: "GP1",
    required: false,
    maxReps: 0,
    fields: {
        "gp11": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp12": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gp13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "gp14": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CWE
        },
        "gp15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CP
        }
    }
}
public type GP1 record {
    *hl7v2:Segment;
    string name = GP1_SEGMENT_NAME;
    CWE gp11 = {};
    CWE[] gp12 = [{}];
    CWE gp13 = {};
    CWE[] gp14 = [{}];
    CP gp15 = {};
};

public const GP1_SEGMENT_NAME = "GP1";