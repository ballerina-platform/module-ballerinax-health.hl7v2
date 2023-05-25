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
public const ESU_U01_MESSAGE_TYPE = "ESU_U01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + equ - Message Record Field
# + isd - Message Record Field
# + rol - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "EQU": {name: "EQU", maxReps: 1, required: false, segmentType: EQU},
        "ISD": {name: "ISD", maxReps: -1, required: false, segmentType: ISD},
        "ROL": {name: "ROL", maxReps: 1, required: false, segmentType: ROL}
    }
}
public type ESU_U01 record {
    *hl7v2:Message;
    string name = ESU_U01_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    EQU equ?;
    ISD[] isd = [];
    ROL rol?;
};