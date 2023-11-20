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
public const CCQ_I19_MESSAGE_TYPE = "CCQ_I19";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + rf1 - RF1 Segment
# + rel - REL Segment
# + provider_contact - CCQ_I19_PROVIDER_CONTACT Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "RF1": {name: "RF1", maxReps: 1, required: true, segmentType: RF1},
        "REL": {name: "REL", maxReps: -1, required: false, segmentType: REL}
    }
    ,groups: {
        "CCQ_I19_PROVIDER_CONTACT": {
            maxReps: -1,
            required: false,
            segments: {
                "PRD": {name: "PRD", maxReps: 1, required: true, segmentType: typeof PRD},
                "CTD": {name: "CTD", maxReps: -1, required: false, segmentType: typeof CTD}
            }
        }
    }
}
public type CCQ_I19 record {
    *hl7v2:Message;
    string name = CCQ_I19_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    RF1 rf1;
    REL[] rel = [];
    CCQ_I19_PROVIDER_CONTACT[] provider_contact = [{prd:{}}];
};