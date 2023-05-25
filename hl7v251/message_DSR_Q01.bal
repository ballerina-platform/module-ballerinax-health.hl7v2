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

public const DSR_Q01_MESSAGE_TYPE = "DSR_Q01";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + msa - Message Record Field
# + err - Message Record Field
# + qak - Message Record Field
# + qrd - Message Record Field
# + qrf - Message Record Field
# + dsp - Message Record Field
# + dsc - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: false, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: false, segmentType: QAK},
        "QRD": {name: "QRD", maxReps: 1, required: false, segmentType: QRD},
        "QRF": {name: "QRF", maxReps: 1, required: false, segmentType: QRF},
        "DSP": {name: "DSP", maxReps: -1, required: false, segmentType: DSP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type DSR_Q01 record {
    *hl7v2:Message;
    string name = DSR_Q01_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    MSA msa?;
    ERR err?;
    QAK qak?;
    QRD qrd?;
    QRF qrf?;
    DSP[] dsp = [];
    DSC dsc?;
};