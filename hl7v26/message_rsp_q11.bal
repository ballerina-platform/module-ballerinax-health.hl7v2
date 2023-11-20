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
public const RSP_Q11_MESSAGE_TYPE = "RSP_Q11";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + qpd - QPD Segment
# + dsc - DSC Segment
# + query_result_cluster - RSP_Q11_QUERY_RESULT_CLUSTER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: true, segmentType: QAK},
        "QPD": {name: "QPD", maxReps: 1, required: true, segmentType: QPD},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "RSP_Q11_QUERY_RESULT_CLUSTER": {
            maxReps: 1,
            required: false,
            segments: {
                "MFE": {name: "MFE", maxReps: 1, required: true, segmentType: typeof MFE},
                "LOC": {name: "LOC", maxReps: 1, required: true, segmentType: typeof LOC},
                "LCH": {name: "LCH", maxReps: -1, required: false, segmentType: typeof LCH},
                "LRL": {name: "LRL", maxReps: -1, required: false, segmentType: typeof LRL},
                "RSP_Q11_MF_LOC_DEPT": {name: "RSP_Q11_MF_LOC_DEPT", maxReps: -1, required: true, segmentType: typeof RSP_Q11_MF_LOC_DEPT}
            }
        }
    }
}
public type RSP_Q11 record {
    *hl7v2:Message;
    string name = RSP_Q11_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    MSA msa;
    ERR[] err = [];
    QAK qak;
    QPD qpd;
    DSC dsc?;
    RSP_Q11_QUERY_RESULT_CLUSTER[] query_result_cluster = [{mfe:{}, loc:{}}];
};