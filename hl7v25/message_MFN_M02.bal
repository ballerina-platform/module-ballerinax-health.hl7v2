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
public const MFN_M02_MESSAGE_TYPE = "MFN_M02";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + mfi - MFI Segment
# + mf_staff - MFN_M02_MF_STAFF Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MFI": {name: "MFI", maxReps: 1, required: true, segmentType: MFI}
    }
    ,groups: {
        "MFN_M02_MF_STAFF": {
            maxReps: -1,
            required: true,
            segments: {
                "MFE": {name: "MFE", maxReps: 1, required: true, segmentType: typeof MFE},
                "STF": {name: "STF", maxReps: 1, required: true, segmentType: typeof STF},
                "PRA": {name: "PRA", maxReps: -1, required: false, segmentType: typeof PRA},
                "ORG": {name: "ORG", maxReps: -1, required: false, segmentType: typeof ORG},
                "AFF": {name: "AFF", maxReps: -1, required: false, segmentType: typeof AFF},
                "LAN": {name: "LAN", maxReps: -1, required: false, segmentType: typeof LAN},
                "EDU": {name: "EDU", maxReps: -1, required: false, segmentType: typeof EDU},
                "CER": {name: "CER", maxReps: -1, required: false, segmentType: typeof CER},
                "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: typeof NTE}
            }
        }
    }
}
public type MFN_M02 record {
    *hl7v2:Message;
    string name = MFN_M02_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MFI mfi;
    MFN_M02_MF_STAFF[] mf_staff = [{mfe:{}, stf:{}}];
};