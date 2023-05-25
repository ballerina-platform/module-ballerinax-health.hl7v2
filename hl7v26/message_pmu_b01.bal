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

public const PMU_B01_MESSAGE_TYPE = "PMU_B01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + evn - Message Record Field
# + stf - Message Record Field
# + pra - Message Record Field
# + org - Message Record Field
# + aff - Message Record Field
# + lan - Message Record Field
# + edu - Message Record Field
# + cer - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: false, segmentType: EVN},
        "STF": {name: "STF", maxReps: 1, required: false, segmentType: STF},
        "PRA": {name: "PRA", maxReps: -1, required: false, segmentType: PRA},
        "ORG": {name: "ORG", maxReps: -1, required: false, segmentType: ORG},
        "AFF": {name: "AFF", maxReps: -1, required: false, segmentType: AFF},
        "LAN": {name: "LAN", maxReps: -1, required: false, segmentType: LAN},
        "EDU": {name: "EDU", maxReps: -1, required: false, segmentType: EDU},
        "CER": {name: "CER", maxReps: -1, required: false, segmentType: CER}
    }
}
public type PMU_B01 record {
    *hl7v2:Message;
    string name = PMU_B01_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    EVN evn?;
    STF stf?;
    PRA[] pra = [];
    ORG[] org = [];
    AFF[] aff = [];
    LAN[] lan = [];
    EDU[] edu = [];
    CER[] cer = [];
};