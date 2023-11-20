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
public const RPR_I03_MESSAGE_TYPE = "RPR_I03";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + msa - MSA Segment
# + pid - PID Segment
# + nte - NTE Segment
# + provider - RPR_I03_PROVIDER Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "MSA": {name: "MSA", maxReps: 1, required: true, segmentType: MSA},
        "PID": {name: "PID", maxReps: -1, required: false, segmentType: PID},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
    ,groups: {
        "RPR_I03_PROVIDER": {
            maxReps: -1,
            required: true,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        }
    }
}
public type RPR_I03 record {
    *hl7v2:Message;
    string name = RPR_I03_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    MSA msa;
    PID[] pid = [];
    NTE[] nte = [];
    RPR_I03_PROVIDER[] provider = [{prd:{}}];
};