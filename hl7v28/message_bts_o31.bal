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
public const BTS_O31_MESSAGE_TYPE = "BTS_O31";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + patient - BTS_O31_PATIENT Segment Group
# + order - BTS_O31_ORDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "BTS_O31_PATIENT": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: true, segmentType: typeof PID},
                "PD1": {name: "PD1", maxReps: 1, required: false, segmentType: typeof PD1},
                "PRT": {name: "PRT", maxReps: -1, required: false, segmentType: typeof PRT},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "BTS_O31_PATIENT_VISIT": {name: "BTS_O31_PATIENT_VISIT", maxReps: 1, required: false, segmentType: typeof BTS_O31_PATIENT_VISIT}
            }
        },
        "BTS_O31_ORDER": {
            maxReps: -1,
            required: true,
            segments: {
                "ORC": {name: "ORC", maxReps: 1, required: true, segmentType: typeof ORC},
                "BTS_O31_TIMING": {name: "BTS_O31_TIMING", maxReps: -1, required: false, segmentType: typeof BTS_O31_TIMING},
                "BPO": {name: "BPO", maxReps: 1, required: true, segmentType: typeof BPO},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE},
                "BTS_O31_PRODUCT_STATUS": {name: "BTS_O31_PRODUCT_STATUS", maxReps: -1, required: false, segmentType: typeof BTS_O31_PRODUCT_STATUS}
            }
        }
    }
}
public type BTS_O31 record {
    *hl7v2:Message;
    string name = BTS_O31_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    BTS_O31_PATIENT[] patient = [{pid:{}}];
    BTS_O31_ORDER[] 'order = [{orc:{}, bpo:{}}];
};