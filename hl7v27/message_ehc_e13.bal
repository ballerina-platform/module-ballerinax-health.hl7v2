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
public const EHC_E13_MESSAGE_TYPE = "EHC_E13";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + msa - MSA Segment
# + err - ERR Segment
# + rfi - RFI Segment
# + ctd - CTD Segment
# + ivc - IVC Segment
# + pss - PSS Segment
# + psg - PSG Segment
# + pid - PID Segment
# + psl - PSL Segment
# + request - EHC_E13_REQUEST Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: -1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "RFI": {name: "RFI", maxReps: 1, required: true, segmentType: RFI},
        "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: CTD},
        "IVC": {name: "IVC", maxReps: 1, required: true, segmentType: IVC},
        "PSS": {name: "PSS", maxReps: 1, required: true, segmentType: PSS},
        "PSG": {name: "PSG", maxReps: 1, required: true, segmentType: PSG},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "PSL": {name: "PSL", maxReps: 1, required: false, segmentType: PSL}
    }
    ,groups: {
        "EHC_E13_REQUEST": {
            maxReps: -1,
            required: true,
            segments: {
                "CTD": {name: "CTD", maxReps: 1, required: false, segmentType: typeof CTD},
                "OBR": {name: "OBR", maxReps: 1, required: true, segmentType: typeof OBR},
                "NTE": {name: "NTE", maxReps: 1, required: false, segmentType: typeof NTE},
                "EHC_E13_RESPONSE": {name: "EHC_E13_RESPONSE", maxReps: -1, required: true, segmentType: typeof EHC_E13_RESPONSE}
            }
        }
    }
}
public type EHC_E13 record {
    *hl7v2:Message;
    string name = EHC_E13_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    MSA msa;
    ERR[] err = [];
    RFI rfi;
    CTD[] ctd = [];
    IVC ivc;
    PSS pss;
    PSG psg;
    PID pid?;
    PSL psl?;
    EHC_E13_REQUEST[] request = [{obr:{}}];
};