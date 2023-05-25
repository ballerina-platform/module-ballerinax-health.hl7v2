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
public const VXU_V04_MESSAGE_TYPE = "VXU_V04";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + pid - Message Record Field
# + pd1 - Message Record Field
# + nk1 - Message Record Field
# + gt1 - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: PD1},
        "NK1": {name: "NK1", maxReps: -1, required: false, segmentType: NK1},
        "GT1": {name: "GT1", maxReps: -1, required: false, segmentType: GT1}
    }
}
public type VXU_V04 record {
    *hl7v2:Message;
    string name = VXU_V04_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    PID pid?;
    PD1 pd1?;
    NK1[] nk1 = [];
    GT1[] gt1 = [];
};