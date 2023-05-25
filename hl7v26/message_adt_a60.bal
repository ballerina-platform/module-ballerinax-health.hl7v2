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

public const ADT_A60_MESSAGE_TYPE = "ADT_A60";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + evn - Message Record Field
# + pid - Message Record Field
# + arv - Message Record Field
# + iam - Message Record Field
# + visit - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "ARV": {name: "ARV", maxReps: -1, required: false, segmentType: ARV},
        "IAM": {name: "IAM", maxReps: -1, required: false, segmentType: IAM}
    }
    ,groups: {
        "VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: false, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "ARV": {name: "ARV", maxReps: -1, required: false, segmentType: typeof ARV}
            }
        }
    }
}
public type ADT_A60 record {
    *hl7v2:Message;
    string name = ADT_A60_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    EVN evn?;
    PID pid?;
    ARV[] arv = [];
    IAM[] iam = [];
    VISIT[] visit = [{}];
};