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
public const ORD_O04_MESSAGE_TYPE = "ORD_O04";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + response - ORD_O04_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "ORD_O04_RESPONSE": {
            maxReps: 1,
            required: false,
            segments: {
                "ORD_O04_PATIENT": {name: "ORD_O04_PATIENT", maxReps: 1, required: false, segmentType: typeof ORD_O04_PATIENT},
                "ORD_O04_ORDER_DIET": {name: "ORD_O04_ORDER_DIET", maxReps: -1, required: true, segmentType: typeof ORD_O04_ORDER_DIET},
                "ORD_O04_ORDER_TRAY": {name: "ORD_O04_ORDER_TRAY", maxReps: -1, required: false, segmentType: typeof ORD_O04_ORDER_TRAY}
            }
        }
    }
}
public type ORD_O04 record {
    *hl7v2:Message;
    string name = ORD_O04_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    ORD_O04_RESPONSE[] response = [{}];
};