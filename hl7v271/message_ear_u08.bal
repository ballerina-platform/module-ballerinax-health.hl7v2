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

public const EAR_U08_MESSAGE_TYPE = "EAR_U08";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + equ - Message Record Field
# + rol - Message Record Field
# + command_response - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EQU": {name: "EQU", maxReps: 1, required: false, segmentType: EQU},
        "ROL": {name: "ROL", maxReps: 1, required: false, segmentType: ROL}
    }
    ,groups: {
        "COMMAND_RESPONSE": {
            maxReps: -1,
            required: false,
            segments: {
                "ECD": {name: "ECD", maxReps: 1, required: false, segmentType: typeof ECD},
                "SPECIMEN_CONTAINER": {name: "SPECIMEN_CONTAINER", maxReps: 1, required: false, segmentType: typeof SPECIMEN_CONTAINER},
                "ECR": {name: "ECR", maxReps: 1, required: false, segmentType: typeof ECR}
            }
        }
    }
}
public type EAR_U08 record {
    *hl7v2:Message;
    string name = EAR_U08_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    EQU equ?;
    ROL rol?;
    COMMAND_RESPONSE[] command_response = [{}];
};