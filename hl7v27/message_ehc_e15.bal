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
public const EHC_E15_MESSAGE_TYPE = "EHC_E15";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + payment_remittance_header_info - EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO Segment Group
# + payment_remittance_detail_info - EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO Segment Group
# + adjustment_payee - EHC_E15_ADJUSTMENT_PAYEE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: -1, required: false, segmentType: UAC}
    }
    ,groups: {
        "EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO": {
            maxReps: 1,
            required: true,
            segments: {
            }
        },
        "EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO": {
            maxReps: -1,
            required: false,
            segments: {
                "IPR": {name: "IPR", maxReps: 1, required: true, segmentType: typeof IPR},
                "IVC": {name: "IVC", maxReps: 1, required: true, segmentType: typeof IVC},
                "EHC_E15_PRODUCT_SERVICE_SECTION": {name: "EHC_E15_PRODUCT_SERVICE_SECTION", maxReps: -1, required: true, segmentType: typeof EHC_E15_PRODUCT_SERVICE_SECTION}
            }
        },
        "EHC_E15_ADJUSTMENT_PAYEE": {
            maxReps: -1,
            required: false,
            segments: {
                "ADJ": {name: "ADJ", maxReps: 1, required: true, segmentType: typeof ADJ},
                "ROL": {name: "ROL", maxReps: 1, required: false, segmentType: typeof ROL}
            }
        }
    }
}
public type EHC_E15 record {
    *hl7v2:Message;
    string name = EHC_E15_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC[] uac = [];
    EHC_E15_PAYMENT_REMITTANCE_HEADER_INFO[] payment_remittance_header_info = [{}];
    EHC_E15_PAYMENT_REMITTANCE_DETAIL_INFO[] payment_remittance_detail_info = [{ipr:{}, ivc:{}}];
    EHC_E15_ADJUSTMENT_PAYEE[] adjustment_payee = [{adj:{}}];
};