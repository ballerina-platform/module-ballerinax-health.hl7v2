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
# + ods1 - Type
# + ods2 - Service Period
# + ods3 - Diet, Supplement, or Preference Code
# + ods4 - Text Instruction
@hl7v2:SegmentDefinition {
    name: "ODS",
    required: false,
    maxReps: 0,
    fields: {
        "ods1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: ID
        },
        "ods2": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "ods3": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "ods4": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: ST
        }
    }
}
public type ODS record {
    *hl7v2:Segment;
    string name = ODS_SEGMENT_NAME;
    ID ods1 = "";
    CE[] ods2 = [{}];
    CE[] ods3 = [{}];
    ST[] ods4 = [""];
};

public const ODS_SEGMENT_NAME = "ODS";
