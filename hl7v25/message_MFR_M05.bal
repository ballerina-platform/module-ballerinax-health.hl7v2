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
public const MFR_M05_MESSAGE_TYPE = "MFR_M05";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + mfi - MFI Segment
# + dsc - DSC Segment
# + mf_query - MFR_M05_MF_QUERY Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: false, segmentType: QAK},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "MFI": {name: "MFI", maxReps: 1, required: true, segmentType: MFI},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "MFR_M05_MF_QUERY": {
            maxReps: -1,
            required: true,
            segments: {
                "MFE": {name: "MFE", maxReps: 1, required: true, segmentType: typeof MFE},
                "LOC": {name: "LOC", maxReps: 1, required: true, segmentType: typeof LOC},
                "LCH": {name: "LCH", maxReps: -1, required: false, segmentType: typeof LCH},
                "LRL": {name: "LRL", maxReps: -1, required: false, segmentType: typeof LRL},
                "LDP": {name: "LDP", maxReps: -1, required: true, segmentType: typeof LDP},
                "LCC": {name: "LCC", maxReps: -1, required: false, segmentType: typeof LCC}
            }
        }
    }
}
public type MFR_M05 record {
    *hl7v2:Message;
    string name = MFR_M05_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    ERR[] err = [];
    QAK qak?;
    QRD qrd;
    QRF qrf?;
    MFI mfi;
    DSC dsc?;
    MFR_M05_MF_QUERY[] mf_query = [{mfe:{}, loc:{}}];
};