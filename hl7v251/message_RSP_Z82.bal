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
public const RSP_Z82_MESSAGE_TYPE = "RSP_Z82";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + qpd - QPD Segment
# + rcp - RCP Segment
# + dsc - DSC Segment
# + query_response - RSP_Z82_QUERY_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: true, segmentType: QAK},
        "QPD": {name: "QPD", maxReps: 1, required: true, segmentType: QPD},
        "RCP": {name: "RCP", maxReps: 1, required: true, segmentType: RCP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "RSP_Z82_QUERY_RESPONSE": {
            maxReps: -1,
            required: true,
            segments: {
                "RSP_Z82_PATIENT": {name: "RSP_Z82_PATIENT", maxReps: 1, required: false, segmentType: typeof RSP_Z82_PATIENT},
                "RSP_Z82_COMMON_ORDER": {name: "RSP_Z82_COMMON_ORDER", maxReps: -1, required: true, segmentType: typeof RSP_Z82_COMMON_ORDER}
            }
        }
    }
}
public type RSP_Z82 record {
    *hl7v2:Message;
    string name = RSP_Z82_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    ERR err?;
    QAK qak;
    QPD qpd;
    RCP rcp;
    DSC dsc?;
    RSP_Z82_QUERY_RESPONSE[] query_response = [{}];
};