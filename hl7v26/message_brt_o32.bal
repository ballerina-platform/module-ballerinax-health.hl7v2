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
public const BRT_O32_MESSAGE_TYPE = "BRT_O32";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + nte - NTE Segment
# + response - BRT_O32_RESPONSE Segment Group
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
        "BRT_O32_RESPONSE": {
            maxReps: 1,
            required: false,
            segments: {
                "PID": {name: "PID", maxReps: 1, required: false, segmentType: typeof PID},
                "BRT_O32_ORDER": {name: "BRT_O32_ORDER", maxReps: -1, required: false, segmentType: typeof BRT_O32_ORDER}
            }
        }
    }
}
public type BRT_O32 record {
    *hl7v2:Message;
    string name = BRT_O32_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    UAC uac?;
    NTE[] nte = [];
    BRT_O32_RESPONSE[] response = [{}];
};