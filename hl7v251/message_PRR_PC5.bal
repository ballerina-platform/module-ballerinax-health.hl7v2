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
public const PRR_PC5_MESSAGE_TYPE = "PRR_PC5";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + qrd - QRD Segment
# + patient - PRR_PC5_PATIENT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: false, segmentType: QAK},
        "QRD": {name: "QRD", maxReps: 1, required: true, segmentType: QRD}
    }
    ,groups: {
        "PRR_PC5_PATIENT": {
            maxReps: -1,
            required: true,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PRR_PC5_PATIENT_VISIT": {name: "PRR_PC5_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof PRR_PC5_PATIENT_VISIT},
                "PRR_PC5_PROBLEM": {name: "PRR_PC5_PROBLEM", maxReps: -1, required: true, segmentType: typeof PRR_PC5_PROBLEM}
            }
        }
    }
}
public type PRR_PC5 record {
    *hl7v2:Message;
    string name = PRR_PC5_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    ERR[] err = [];
    QAK qak?;
    QRD qrd;
    PRR_PC5_PATIENT[] patient = [{pid:{}}];
};