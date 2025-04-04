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
public const SDR_S32_MESSAGE_TYPE = "SDR_S32";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - MSH Segment
# + sft - SFT Segment
# + uac - UAC Segment
# + anti_microbial_device_cycle_data - SDR_S32_ANTI_MICROBIAL_DEVICE_CYCLE_DATA Segment Group
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: true, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC}
    }
    ,groups: {
        "SDR_S32_ANTI_MICROBIAL_DEVICE_CYCLE_DATA": {
            maxReps: 1,
            required: true,
            segments: {
            }
        }
    }
}
public type SDR_S32 record {
    *hl7v2:Message;
    string name = SDR_S32_MESSAGE_TYPE;
    MSH msh;
    SFT[] sft = [];
    UAC uac?;
    SDR_S32_ANTI_MICROBIAL_DEVICE_CYCLE_DATA[] anti_microbial_device_cycle_data = [{}];
};