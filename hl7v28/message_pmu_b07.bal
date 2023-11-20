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
public const PMU_B07_MESSAGE_TYPE = "PMU_B07";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + evn - EVN Segment
# + stf - STF Segment
# + pra - PRA Segment
# + certificate - PMU_B07_CERTIFICATE Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "EVN": {name: "EVN", maxReps: 1, required: true, segmentType: EVN},
        "STF": {name: "STF", maxReps: 1, required: true, segmentType: STF},
        "PRA": {name: "PRA", maxReps: 1, required: false, segmentType: PRA}
    }
    ,groups: {
        "PMU_B07_CERTIFICATE": {
            maxReps: -1,
            required: false,
            segments: {
                "CER": {name: "CER", maxReps: 1, required: true, segmentType: typeof CER},
                "ROL": {name: "ROL", maxReps: -1, required: false, segmentType: typeof ROL}
            }
        }
    }
}
public type PMU_B07 record {
    *hl7v2:Message;
    string name = PMU_B07_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    EVN evn;
    STF stf;
    PRA pra?;
    PMU_B07_CERTIFICATE[] certificate = [{cer:{}}];
};