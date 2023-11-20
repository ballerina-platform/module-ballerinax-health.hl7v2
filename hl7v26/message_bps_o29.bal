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
public const BPS_O29_MESSAGE_TYPE = "BPS_O29";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + patient - BPS_O29_PATIENT Segment Group
# + order - BPS_O29_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "BPS_O29_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "BPS_O29_PATIENT_VISIT": {name: "BPS_O29_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof BPS_O29_PATIENT_VISIT}
            }
        },
        "BPS_O29_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "BPS_O29_TIMING": {name: "BPS_O29_TIMING", maxReps: -1, required: false, segmentType: typeof BPS_O29_TIMING},
                "BPO": {name: "BPO", maxReps: 1, required: true, segmentType: typeof BPO},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "BPS_O29_PRODUCT": {name: "BPS_O29_PRODUCT", maxReps: -1, required: false, segmentType: typeof BPS_O29_PRODUCT}
            }
        }
    }
}
public type BPS_O29 record {
    *hl7v2:Message;
    string name = BPS_O29_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    BPS_O29_PATIENT[] patient = [{pid:{}}];
    BPS_O29_ORDER[] 'order = [{orc:{}, bpo:{}}];
};