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
public const TBR_R08_MESSAGE_TYPE = "TBR_R08";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + err - ERR Segment
# + qak - QAK Segment
# + rdf - RDF Segment
# + rdt - RDT Segment
# + dsc - DSC Segment
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: 1, required: false, segmentType: ERR},
        "QAK": {name: "QAK", maxReps: 1, required: true, segmentType: QAK},
        "RDF": {name: "RDF", maxReps: 1, required: true, segmentType: RDF},
        "RDT": {name: "RDT", maxReps: -1, required: true, segmentType: RDT},
        "DSC": {name: "DSC", maxReps: 1, required: false, segmentType: DSC}
    }
}
public type TBR_R08 record {
    *hl7v2:Message;
    string name = TBR_R08_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    ERR err?;
    QAK qak;
    RDF rdf;
    RDT[] rdt = [];
    DSC dsc?;
};