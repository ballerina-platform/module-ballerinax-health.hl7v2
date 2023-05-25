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

public const EHC_E12_MESSAGE_TYPE = "EHC_E12";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + rfi - Message Record Field
# + ctd - Message Record Field
# + ivc - Message Record Field
# + pss - Message Record Field
# + psg - Message Record Field
# + pid - Message Record Field
# + psl - Message Record Field
# + request - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: -1, required: false, segmentType: UAC},
        "RFI": {name: "RFI", maxReps: 1, required: false, segmentType: RFI},
        "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: CTD},
        "IVC": {name: "IVC", maxReps: 1, required: false, segmentType: IVC},
        "PSS": {name: "PSS", maxReps: 1, required: false, segmentType: PSS},
        "PSG": {name: "PSG", maxReps: 1, required: false, segmentType: PSG},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PSL": {name: "PSL", maxReps: -1, required: false, segmentType: PSL}
    }
    ,groups: {
        "REQUEST": {
            maxReps: -1,
            required: false,
            segments: {
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD},
                "OBR": {name: "OBR", maxReps: 1, required: false, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: typeof NTE},
                "OBX": {name: "OBX", maxReps: -1, required: false, segmentType: typeof OBX}
            }
        }
    }
}
public type EHC_E12 record {
    *hl7v2:Message;
    string name = EHC_E12_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC[] uac = [];
    RFI rfi?;
    CTD[] ctd = [];
    IVC ivc?;
    PSS pss?;
    PSG psg?;
    PID pid?;
    PSL[] psl = [];
    REQUEST[] request = [{}];
};