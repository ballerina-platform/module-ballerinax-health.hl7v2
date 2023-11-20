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
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + evn - EVN Segment
# + pid - PID Segment
# + arv - ARV Segment
# + visit - ADT_A60_VISIT Segment Group
# + adverse_reaction_group - ADT_A60_ADVERSE_REACTION_GROUP Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "PID": {name: "PID", maxReps: 1, required: true, segmentType: PID},
        "ARV": {name: "ARV", maxReps: -1, required: false, segmentType: ARV}
    }
    ,groups: {
        "ADT_A60_VISIT": {
            maxReps: 1,
            required: false,
            segments: {
                "PV1": {name: "PV1", maxReps: 1, required: true, segmentType: typeof PV1},
                "PV2": {name: "PV2", maxReps: 1, required: false, segmentType: typeof PV2},
                "ARV": {name: "ARV", maxReps: -1, required: false, segmentType: typeof ARV}
            }
        },
        "ADT_A60_ADVERSE_REACTION_GROUP": {
            maxReps: -1,
            required: false,
            segments: {
                "IAM": {name: "IAM", maxReps: 1, required: true, segmentType: typeof IAM},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "IAR": {name: "IAR", maxReps: -1, required: false, segmentType: typeof IAR}
            }
        }
    }
}
public type ADT_A60 record {
    *hl7v2:Message;
    string name = ADT_A60_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    PID pid;
    ARV[] arv = [];
    ADT_A60_VISIT[] visit = [{pv1:{}}];
    ADT_A60_ADVERSE_REACTION_GROUP[] adverse_reaction_group = [{iam:{}}];
};