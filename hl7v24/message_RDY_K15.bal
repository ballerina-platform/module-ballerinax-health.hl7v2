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
public const RDY_K15_MESSAGE_TYPE = "RDY_K15";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + qpd - QPD Segment
# + dsp - DSP Segment
# + dsc - DSC Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: true, segmentType: QAK},
        "QPD": {name: "QPD", maxReps: 1, required: true, segmentType: QPD},
        "DSP": {name: "DSP", maxReps: -1, required: false, segmentType: DSP},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type RDY_K15 record {
    *hl7v2:Message;
    string name = RDY_K15_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR err?;
    QAK qak;
    QPD qpd;
    DSP[] dsp = [];
    DSC dsc?;
};