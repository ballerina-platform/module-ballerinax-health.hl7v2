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
public const ORI_O24_MESSAGE_TYPE = "ORI_O24";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + msa - MSA Segment
# + err - ERR Segment
# + sft - SFT Segment
# + nte - NTE Segment
# + response - ORI_O24_RESPONSE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "ERR": {name: "ERR", maxReps: -1, required: false, segmentType: ERR},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "ORI_O24_RESPONSE": {
            maxReps: 1,
            required: false,
            segments: {
                "ORI_O24_PATIENT": {name: "ORI_O24_PATIENT", maxReps: 1, required: false, segmentType: typeof ORI_O24_PATIENT},
                "ORI_O24_ORDER": {name: "ORI_O24_ORDER", maxReps: -1, required: true, segmentType: typeof ORI_O24_ORDER}
            }
        }
    }
}
public type ORI_O24 record {
    *hl7v2:Message;
    string name = ORI_O24_MESSAGE_TYPE;
    MSH msh;
    MSA msa;
    ERR[] err = [];
    SFT[] sft = [];
    NTE[] nte = [];
    ORI_O24_RESPONSE[] response = [{}];
};