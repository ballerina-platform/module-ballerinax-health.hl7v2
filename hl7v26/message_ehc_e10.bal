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
public const EHC_E10_MESSAGE_TYPE = "EHC_E10";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + msa - MSA Segment
# + err - ERR Segment
# + invoice_processing_results_info - EHC_E10_INVOICE_PROCESSING_RESULTS_INFO Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: -1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR}
    }
    ,groups: {
        "EHC_E10_INVOICE_PROCESSING_RESULTS_INFO": {
            maxReps: -1,
            required: true,
            segments: {
                "IPR": {name: "IPR", maxReps: 1, required: true, segmentType: typeof IPR},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "PYE": {name: "PYE", maxReps: 1, required: true, segmentType: typeof PYE},
                "IN1": {name: "IN1", maxReps: 1, required: true, segmentType: typeof IN1},
                "IN2": {name: "IN2", maxReps: 1, required: false, segmentType: typeof IN2},
                "IVC": {name: "IVC", maxReps: 1, required: true, segmentType: typeof IVC},
                "EHC_E10_PRODUCT_SERVICE_SECTION": {name: "EHC_E10_PRODUCT_SERVICE_SECTION", maxReps: -1, required: true, segmentType: typeof EHC_E10_PRODUCT_SERVICE_SECTION}
            }
        }
    }
}
public type EHC_E10 record {
    *hl7v2:Message;
    string name = EHC_E10_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    MSA msa;
    ERR[] err = [];
    EHC_E10_INVOICE_PROCESSING_RESULTS_INFO[] invoice_processing_results_info = [{ipr:{}, pye:{}, in1:{}, ivc:{}}];
};