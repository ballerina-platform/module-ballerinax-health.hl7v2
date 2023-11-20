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
public const ORF_R04_MESSAGE_TYPE = "ORF_R04";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + qrd - QRD Segment
# + qrf - QRF Segment
# + err - ERR Segment
# + qak - QAK Segment
# + dsc - DSC Segment
# + pidnteorcobrntetq1tq2ctdobxntecti_suppgrp - ORF_R04_PIDNTEORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: false, segmentType: QAK},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
    ,groups: {
        "ORF_R04_PIDNTEORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP": {
            maxReps: -1,
            required: true,
            segments: {
                "ORF_R04_PIDNTE_SUPPGRP": {name: "ORF_R04_PIDNTE_SUPPGRP", maxReps: 1, required: false, segmentType: typeof ORF_R04_PIDNTE_SUPPGRP},
                "ORF_R04_ORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP": {name: "ORF_R04_ORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP", maxReps: -1, required: true, segmentType: typeof ORF_R04_ORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP}
            }
        }
    }
}
public type ORF_R04 record {
    *hl7v2:Message;
    string name = ORF_R04_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    QRD qrd;
    QRF qrf?;
    ERR[] err = [];
    QAK qak?;
    DSC dsc?;
    ORF_R04_PIDNTEORCOBRNTETQ1TQ2CTDOBXNTECTI_SUPPGRP[] pidnteorcobrntetq1tq2ctdobxntecti_suppgrp = [{}];
};